package net.bigpoint.cityrama.controller.external
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.FlashUpgradePromotionMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.FlashUpgradePromotionMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMiniFlashUpgradePromotionCommand extends SimpleCommand
   {
      
      public function OpenMiniFlashUpgradePromotionCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.removeCommand(param1.getName());
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = FlashUpgradePromotionMiniLayer;
         _loc2_.mediatorClass = FlashUpgradePromotionMiniLayerMediator;
         _loc2_.mediatorName = FlashUpgradePromotionMiniLayerMediator.NAME;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

