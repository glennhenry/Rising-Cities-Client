package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.view.common.skins.MiniLayerSkin;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConnectionLostMiniLayer;
   import net.bigpoint.cityrama.view.quest.QuestSideMenuMediator;
   import net.bigpoint.cityrama.view.settingsbar.SettingsBarMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ConnectionLostMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ConnectionLostMiniLayerMediator";
      
      public function ConnectionLostMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.addListener();
         this.componentSkin.closeButton.visible = false;
         this.componentSkin.closeButton.includeInLayout = false;
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         super.onRemove();
      }
      
      override public function onRegister() : void
      {
         (facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator).kill();
         (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).kill();
         (facade.retrieveMediator(SettingsBarMediator.NAME) as SettingsBarMediator).kill();
         (facade.retrieveMediator(QuestSideMenuMediator.NAME) as QuestSideMenuMediator).kill();
         (facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy).isEnabled = false;
         if(ExternalInterface.available)
         {
            ExternalInterface.call("closeMarketPlace()");
         }
         else
         {
            Alert.show("ExternalInterface.call(\'closeMarketPlace()\') - Only Live");
         }
      }
      
      public function get component() : ConnectionLostMiniLayer
      {
         return super.viewComponent as ConnectionLostMiniLayer;
      }
      
      public function get componentSkin() : MiniLayerSkin
      {
         var _loc1_:ConnectionLostMiniLayer = super.viewComponent as ConnectionLostMiniLayer;
         return _loc1_.skin as MiniLayerSkin;
      }
   }
}

