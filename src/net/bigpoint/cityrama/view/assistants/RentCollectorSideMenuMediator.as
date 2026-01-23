package net.bigpoint.cityrama.view.assistants
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorInfoComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorSideMenu;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.quest.WelcomeScreenMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RentCollectorSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "RentCollectorSideMenuMediator";
      
      private var _assiViewProxy:AssistViewProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _rentCollectorInfo:RentCollectorInfoComponent;
      
      private var _showTimer:Timer;
      
      private var _data:RentCollectorSideMenuVo;
      
      private var _soundProxy:SoundProxy;
      
      public function RentCollectorSideMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._assiViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
         this._playfieldObjProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._data = this._assiViewProxy.rentCollectorSideMenuVo;
         this.component.data = this._data;
         this.setupListener();
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(RentCollectorSideMenu.USE_COLLECTOR,this.onUseCollector);
         this.component.addEventListener(RentCollectorSideMenu.HIDE_INFO,this.onMouseOut);
         this.component.addEventListener(RentCollectorSideMenu.SHOW_INFO,this.onMouseOver);
         this.component.addEventListener(RentCollectorSideMenu.SHOW_HIRE_INFO,this.onMouseOver);
         this.component.addEventListener(RentCollectorSideMenu.PLUS_CLICKED,this.onPlusClick);
      }
      
      private function onUseCollector(param1:Event) : void
      {
         param1.stopPropagation();
         this.component.menuContainer.removeAllElements();
         if(this._data)
         {
            if(this._data.rentCollectorRunning)
            {
               if(this.residentialHarvestable)
               {
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_USE_HARVESTHELPER_RESIDENTIAL);
                  this._soundProxy.playRentCollectorActivate();
               }
               else
               {
                  this._rentCollectorInfo = new RentCollectorInfoComponent();
                  this._data.currentState = RentCollectorInfoComponent.IDLE_INFO;
                  this._rentCollectorInfo.data = this._data;
                  this.component.menuContainer.addElement(this._rentCollectorInfo);
               }
            }
         }
      }
      
      private function onPlusClick(param1:Event) : void
      {
         param1.stopPropagation();
         this.component.menuContainer.removeAllElements();
         sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_LAYER);
      }
      
      private function onMouseOut(param1:Event) : void
      {
         param1.stopPropagation();
         if(this._data.currentState != RentCollectorInfoComponent.SUCCESS)
         {
            this.component.menuContainer.removeAllElements();
         }
      }
      
      private function onMouseOver(param1:Event) : void
      {
         param1.stopPropagation();
         this.component.menuContainer.removeAllElements();
         if(param1.type == RentCollectorSideMenu.SHOW_INFO)
         {
            this._data.currentState = RentCollectorInfoComponent.RUNNING_INFO;
         }
         else if(param1.type == RentCollectorSideMenu.SHOW_HIRE_INFO)
         {
            this._data.currentState = RentCollectorInfoComponent.HIRE_INFO;
         }
         this._rentCollectorInfo = new RentCollectorInfoComponent();
         if(this._data.timerVo)
         {
            this._data.timerVo.currentTime = this._timerProxy.currentTimeStamp;
         }
         this._rentCollectorInfo.data = this._data;
         this.component.menuContainer.addElement(this._rentCollectorInfo);
      }
      
      private function get residentialHarvestable() : Boolean
      {
         var _loc1_:ResidentialFieldObject = null;
         for each(_loc1_ in this._playfieldObjProxy.residentialList)
         {
            if(_loc1_.residentialFieldObjectVo.isHarvestReady)
            {
               if(_loc1_.residentialFieldObjectVo.isConnectedToStreet)
               {
                  if(!_loc1_.residentialFieldObjectVo.interactionBlockedByEmergency())
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      override public function getMediatorName() : String
      {
         return NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ASSIST_DATA_CHANGE,ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_SUCCESS,ApplicationNotificationConstants.TIMESTAMP_SET,ApplicationNotificationConstants.SHOW_GUI];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:Object = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.SHOW_GUI:
               if(facade.hasMediator(WelcomeScreenMediator.NAME))
               {
                  return;
               }
               this.component.visible = this.component.includeInLayout = param1.getBody();
               break;
            case ApplicationNotificationConstants.TIMESTAMP_SET:
            case ApplicationNotificationConstants.ASSIST_DATA_CHANGE:
               this._data = this._assiViewProxy.rentCollectorSideMenuVo;
               this.component.data = this._data;
               break;
            case ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_SUCCESS:
               if(param1.getBody())
               {
                  this.component.menuContainer.removeAllElements();
                  _loc2_ = param1.getBody() as Object;
                  this._data.currentState = RentCollectorInfoComponent.SUCCESS;
                  this._data.collectedVC = _loc2_.vc;
                  this._data.collectedPP = _loc2_.pp;
                  this._data.collectedEP = _loc2_.ep;
                  this._rentCollectorInfo = new RentCollectorInfoComponent();
                  this._rentCollectorInfo.data = this._data;
                  this.component.menuContainer.addElement(this._rentCollectorInfo);
                  this._showTimer = new Timer(4000);
                  this._showTimer.addEventListener(TimerEvent.TIMER,this.onTimerFinished);
                  this._showTimer.start();
               }
         }
      }
      
      private function onTimerFinished(param1:TimerEvent) : void
      {
         if(this._showTimer)
         {
            this._showTimer.stop();
            this._showTimer.removeEventListener(TimerEvent.TIMER,this.onTimerFinished);
            this._showTimer = null;
         }
         if(this._data.currentState == RentCollectorInfoComponent.SUCCESS)
         {
            this._data.currentState = "";
            this.component.menuContainer.removeAllElements();
         }
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.removeEventListener(RentCollectorSideMenu.USE_COLLECTOR,this.onUseCollector);
         this.component.removeEventListener(RentCollectorSideMenu.HIDE_INFO,this.onMouseOut);
         this.component.removeEventListener(RentCollectorSideMenu.SHOW_INFO,this.onMouseOver);
         this.component.removeEventListener(RentCollectorSideMenu.SHOW_HIRE_INFO,this.onMouseOver);
         this.component.removeEventListener(RentCollectorSideMenu.PLUS_CLICKED,this.onPlusClick);
      }
      
      public function get component() : RentCollectorSideMenu
      {
         return super.viewComponent as RentCollectorSideMenu;
      }
      
      public function get rentCollectorSparkleSprite() : Sprite
      {
         return this.component.rentCollectorSparkleSprite;
      }
   }
}

