package net.bigpoint.cityrama.view.bonusDay
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.bonusDay.vo.BonusDaySideMenuVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDayInfoComponent;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDaySideMenu;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BonusDaySideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "BonusDaySideMenuMediator";
      
      private var _data:BonusDaySideMenuVo;
      
      private var _tiP:TimerProxy;
      
      public function BonusDaySideMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListener();
         this.updateComponent();
      }
      
      private function updateComponent() : void
      {
         this.getData();
         this.setVisibility();
      }
      
      private function getData() : void
      {
         var _loc3_:ImprovementVo = null;
         var _loc4_:ConfigEventDTO = null;
         var _loc1_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc2_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         this._data = null;
         if(_loc2_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
         {
            this._data = new BonusDaySideMenuVo();
            _loc3_ = _loc2_.getImprovement(ServerTagConstants.CLIENT_BONUS_DAY);
            this._data.startTime = _loc3_.startTime;
            this._data.duration = _loc3_.expirationTime - _loc3_.startTime;
            this._data.bonusDayActivated = true;
         }
         else
         {
            for each(_loc4_ in _loc1_.listOfRunningGlobalEvents)
            {
               if(_loc4_.eventType == ServerEventTypeConst.BONUSDAY)
               {
                  this._data = new BonusDaySideMenuVo();
                  this._data.startTime = _loc4_.availabilityTimeStart;
                  this._data.duration = _loc4_.totalAvailabilityTime;
                  this._data.bonusDayActivated = false;
                  break;
               }
            }
         }
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(BonusDaySideMenu.CLICK_INFO,this.handleClick);
         this.component.addEventListener(BonusDaySideMenu.SHOW_INFO,this.handleShow);
         this.component.addEventListener(BonusDaySideMenu.HIDE_INFO,this.handleHide);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.CITY_IMPROVEMENTS_UPDATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.TIMESTAMP_SET:
            case ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED:
            case ApplicationNotificationConstants.CITY_IMPROVEMENTS_UPDATED:
               this.updateComponent();
               break;
            case ApplicationNotificationConstants.SHOW_GUI:
               if(param1.getBody() == true)
               {
                  this.setVisibility();
                  break;
               }
               this.component.visible = this.component.includeInLayout = false;
         }
      }
      
      private function setVisibility() : void
      {
         if(this._data)
         {
            this.component.includeInLayout = this.component.visible = true;
            this.component.setData(this._data.bonusDayActivated);
         }
         else
         {
            this.component.includeInLayout = this.component.visible = false;
         }
      }
      
      private function handleHide(param1:Event = null) : void
      {
         if(param1)
         {
            param1.stopPropagation();
         }
         this.component.menuContainer.removeAllElements();
      }
      
      private function handleShow(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:BonusDayInfoComponent = new BonusDayInfoComponent();
         this._data.currentTimeStamp = this.timerProxy.currentTimeStamp;
         _loc2_.data = this._data;
         this.component.menuContainer.addElement(_loc2_);
      }
      
      private function handleClick(param1:Event) : void
      {
         this.handleHide();
         if(this._data)
         {
            if(this._data.bonusDayActivated)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_BONUS_DAY_ACTIVATED_LAYER,true);
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
            }
         }
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(BonusDaySideMenu.CLICK_INFO,this.handleClick);
         this.component.removeEventListener(BonusDaySideMenu.HIDE_INFO,this.handleHide);
         this.component.removeEventListener(BonusDaySideMenu.SHOW_INFO,this.handleShow);
      }
      
      public function get component() : BonusDaySideMenu
      {
         return super.viewComponent as BonusDaySideMenu;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(!this._tiP)
         {
            this._tiP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._tiP;
      }
   }
}

