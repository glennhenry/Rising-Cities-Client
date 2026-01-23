package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeCompletedMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.MasteryChallengeCompletedMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MasteryChallengeCompletedMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMiniMasteryChallengeCompleteLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMiniMasteryChallengeCompleteLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = MasteryChallengeCompletedMiniLayer;
         _loc2_.mediatorClass = MasteryChallengeCompletedMiniLayerMediator;
         _loc2_.mediatorName = MasteryChallengeCompletedMiniLayerMediator.NAME;
         _loc2_.data = new MasteryChallengeCompletedMiniLayerVo(param1.getBody().masteryIndex,param1.getBody().rewards);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

