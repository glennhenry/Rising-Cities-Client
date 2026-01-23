package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ProfessionalUnspentSkillpointsMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalUnspentSkillpointsMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenProfessionalUnspentSkillpointsMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenProfessionalUnspentSkillpointsMinilayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = ProfessionalUnspentSkillpointsMiniLayer;
         _loc2_.mediatorClass = ProfessionalUnspentSkillpointsMiniLayerMediator;
         _loc2_.mediatorName = ProfessionalUnspentSkillpointsMiniLayerMediator.NAME;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

