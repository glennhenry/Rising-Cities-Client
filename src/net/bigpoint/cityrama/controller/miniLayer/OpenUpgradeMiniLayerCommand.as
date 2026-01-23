package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.UpgradeQueryMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.UpgradeQueryMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenUpgradeMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenUpgradeMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = UpgradeQueryMiniLayer;
         _loc2_.mediatorClass = UpgradeQueryMiniLayerMediator;
         _loc2_.mediatorName = UpgradeQueryMiniLayerMediator.NAME;
         _loc2_.data = param1.getBody();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

