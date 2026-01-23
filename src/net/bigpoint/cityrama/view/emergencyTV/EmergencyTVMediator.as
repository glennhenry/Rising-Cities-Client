package net.bigpoint.cityrama.view.emergencyTV
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.emergencyTV.vo.EmergencyTVVo;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.emergencyTV.components.EmergencyTV;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyTVMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencyTVMediator";
      
      private var _sP:SoundProxy;
      
      private var affectedBid:Number;
      
      private var _soundProxy:SoundProxy;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      public function EmergencyTVMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.MINIMIZE_EMERGENCY_TV];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.MINIMIZE_EMERGENCY_TV:
               this.component.dropButton.selected = true;
               this.component.tv.includeInLayout = this.component.tv.visible = false;
               this.component.tv.stopClips();
         }
      }
      
      public function get component() : EmergencyTV
      {
         return super.viewComponent as EmergencyTV;
      }
      
      public function setTVData(param1:EmergencyTVVo) : void
      {
         if(param1)
         {
            this.component.visible = true;
            this.component.reset();
            this.component.tvData = param1;
            this.component.tvCollapsedState = this._localStorageProxy.userdata.tvCollapsed;
            this.affectedBid = param1.affectedBuildingId;
            switch(param1.showData.state)
            {
               case TVShowVo.FAIL:
                  this._soundProxy.playEmergencyFail();
                  this._soundProxy.playMumble();
                  break;
               case TVShowVo.SUCCESS:
                  this._soundProxy.playEmergencySuccess();
                  this._soundProxy.playMumble();
                  break;
               case TVShowVo.START:
                  this._soundProxy.playTVTicker();
                  this._soundProxy.playMumble();
            }
         }
      }
      
      override public function onRemove() : void
      {
         this.component.tv.removeEventListener(MouseEvent.CLICK,this.onTvClick);
      }
      
      override public function onRegister() : void
      {
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this.component.tv.addEventListener(MouseEvent.CLICK,this.onTvClick);
         this.component.addEventListener(EmergencyTV.EVENT_TOGGLE_TV,this.onTvToggle);
      }
      
      private function onTvToggle(param1:Event) : void
      {
         this._localStorageProxy.userdata.tvCollapsed = this.component.tvCollapsedState;
         this._soundProxy.playTVSwitch();
      }
      
      private function onTvClick(param1:MouseEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.FIELD_PANTO_EMERGENCY,this.affectedBid);
      }
      
      private function get soundProxy() : SoundProxy
      {
         if(this._sP == null)
         {
            this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         }
         return this._sP;
      }
      
      public function hide() : void
      {
         this.component.visible = false;
      }
   }
}

