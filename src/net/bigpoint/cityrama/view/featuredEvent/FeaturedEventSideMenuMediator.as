package net.bigpoint.cityrama.view.featuredEvent
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedEventSideMenuVo;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedRunningEventVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventSideMenu;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventTooltip;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeaturedEventSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FeaturedEventSideMenuMediator";
      
      private var _data:FeaturedEventSideMenuVo;
      
      private var _fEP:FeaturedEventProxy;
      
      private var _tiP:TimerProxy;
      
      private var _lSP:LocalStorageProxy;
      
      public function FeaturedEventSideMenuMediator(param1:Object)
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
         this._data = this.featuredEventProxy.featuredEventSideMenuVo;
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(FeaturedEventSideMenu.CLICK_INFO,this.handleClick);
         this.component.addEventListener(FeaturedEventSideMenu.SHOW_INFO,this.handleShow);
         this.component.addEventListener(FeaturedEventSideMenu.HIDE_INFO,this.handleHide);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.USERLEVEL_CHANGED,ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED,ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.TIMESTAMP_SET:
            case ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED:
            case ApplicationNotificationConstants.USERLEVEL_CHANGED:
            case ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED:
            case ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED:
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
         this.component.includeInLayout = this.component.visible = this._data.showSideMenu();
         this.component.showNewIcon = this._data.showNew;
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
         var _loc2_:FeaturedEventTooltip = new FeaturedEventTooltip();
         this._data.currentTimeStamp = this.timerProxy.currentTimeStamp;
         _loc2_.data = this._data;
         this.component.menuContainer.addElement(_loc2_);
      }
      
      private function handleClick(param1:Event) : void
      {
         this.handleHide();
         if(this._data.showNew)
         {
            this._data.showNew = false;
            this.component.showNewIcon = this._data.showNew;
            this.localStorageProxy.userdata.seenFeaturedEvents.push(this._data.currentRunningEventType + this._data.timerVo.startTime);
            this.localStorageProxy.flush();
         }
         if(this._data)
         {
            switch(this._data.currentRunningEventType)
            {
               case FeaturedRunningEventVo.FEATURED_WHEEL:
                  sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX);
                  break;
               case FeaturedRunningEventVo.FEATURED_MYSTERY:
                  sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.MYSTERY_TAB_INDEX);
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
         this.component.removeEventListener(FeaturedEventSideMenu.CLICK_INFO,this.handleClick);
         this.component.removeEventListener(FeaturedEventSideMenu.HIDE_INFO,this.handleHide);
         this.component.removeEventListener(FeaturedEventSideMenu.SHOW_INFO,this.handleShow);
      }
      
      public function get component() : FeaturedEventSideMenu
      {
         return super.viewComponent as FeaturedEventSideMenu;
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         if(!this._fEP)
         {
            this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
         }
         return this._fEP;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(!this._tiP)
         {
            this._tiP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._tiP;
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         if(!this._lSP)
         {
            this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         }
         return this._lSP;
      }
   }
}

