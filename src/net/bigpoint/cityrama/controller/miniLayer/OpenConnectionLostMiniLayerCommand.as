package net.bigpoint.cityrama.controller.miniLayer
{
   import mx.core.FlexGlobals;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ConnectionLostMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConnectionLostMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenConnectionLostMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenConnectionLostMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:KeyboardInputActionProxy = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
         if(_loc2_ != null)
         {
            _loc2_.resetView();
         }
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = ConnectionLostMiniLayer;
         _loc3_.mediatorClass = ConnectionLostMiniLayerMediator;
         _loc3_.mediatorName = ConnectionLostMiniLayerMediator.NAME;
         _loc3_.data = null;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         FlexGlobals.topLevelApplication.mainView.enabled = false;
      }
   }
}

