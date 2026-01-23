package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.LevelPreviewMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.NextLevelMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenLevelPreviewMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenLevelPreviewMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = NextLevelMiniLayer;
         _loc2_.mediatorClass = LevelPreviewMiniLayerMediator;
         _loc2_.mediatorName = LevelPreviewMiniLayerMediator.NAME;
         var _loc3_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         if(!_loc3_.userIsMaxlevel)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
         }
      }
   }
}

