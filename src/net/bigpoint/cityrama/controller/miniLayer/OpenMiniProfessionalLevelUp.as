package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.professionals.ProfessionalLevelUpLayerVo;
   import net.bigpoint.cityrama.view.miniLayer.ProfessionalLevelUpMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalLevelUpMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMiniProfessionalLevelUp extends SimpleCommand implements ICommand
   {
      
      public function OpenMiniProfessionalLevelUp()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc4_:ProfessionalLevelUpLayerVo = _loc3_.getProfessionalLevelUpVO(_loc2_);
         var _loc5_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc5_.modal = true;
         _loc5_.viewClass = ProfessionalLevelUpMiniLayer;
         _loc5_.mediatorClass = ProfessionalLevelUpMiniLayerMediator;
         _loc5_.mediatorName = ProfessionalLevelUpMiniLayerMediator.NAME;
         _loc5_.data = _loc4_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
      }
   }
}

