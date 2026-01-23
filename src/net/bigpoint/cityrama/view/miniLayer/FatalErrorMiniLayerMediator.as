package net.bigpoint.cityrama.view.miniLayer
{
   import flash.external.ExternalInterface;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.view.common.skins.MiniLayerSkin;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.FatalErrorMiniLayer;
   import net.bigpoint.cityrama.view.quest.QuestSideMenuMediator;
   import net.bigpoint.cityrama.view.settingsbar.SettingsBarMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FatalErrorMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FatalErrorMiniLayerMediator";
      
      public function FatalErrorMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).kill();
         (facade.retrieveMediator(SettingsBarMediator.NAME) as SettingsBarMediator).kill();
         (facade.retrieveMediator(QuestSideMenuMediator.NAME) as QuestSideMenuMediator).kill();
         (facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy).isEnabled = false;
         this.componentSkin.closeButton.visible = false;
         this.componentSkin.closeButton.includeInLayout = false;
         if(ExternalInterface.available)
         {
            ExternalInterface.call("closeMarketPlace()");
         }
         else
         {
            Alert.show("ExternalInterface.call(\'closeMarketPlace()\') - Only Live");
         }
      }
      
      private function get componentSkin() : MiniLayerSkin
      {
         var _loc1_:FatalErrorMiniLayer = super.viewComponent as FatalErrorMiniLayer;
         return _loc1_.skin as MiniLayerSkin;
      }
   }
}

