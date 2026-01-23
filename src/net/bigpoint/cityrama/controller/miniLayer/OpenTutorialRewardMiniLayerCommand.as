package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.TutorialRewardMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.TutorialRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.TutorialRewardMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenTutorialRewardMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenTutorialRewardMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:TutorialRewardMiniLayerVo = param1.getBody() as TutorialRewardMiniLayerVo;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = TutorialRewardMiniLayer;
         _loc3_.mediatorClass = TutorialRewardMiniLayerMediator;
         _loc3_.mediatorName = TutorialRewardMiniLayerMediator.NAME;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

