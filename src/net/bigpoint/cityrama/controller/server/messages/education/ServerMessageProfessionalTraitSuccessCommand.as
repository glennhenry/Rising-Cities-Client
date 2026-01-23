package net.bigpoint.cityrama.controller.server.messages.education
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalTraitDTO;
   import net.bigpoint.cityrama.view.schoolBook.ProfessionalTraitUnlockMiniLayerMediator;
   import net.bigpoint.cityrama.view.schoolBook.ProfessionalTraitUnlockMiniLayerVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.ProfessionalTraitUnlockMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalTraitSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageProfessionalTraitSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:PopupSettingsVo = null;
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:MessageVo = param1.getBody() as MessageVo;
         var _loc4_:ProfessionalTraitDTO = new ProfessionalTraitDTO(_loc3_.json.t);
         var _loc5_:ProfessionalTraitUnlockMiniLayerVo = _loc2_.professionalTraitMiniLayerVo(_loc4_.professionalId,_loc4_.configId);
         if(_loc5_)
         {
            _loc6_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
            _loc6_.modal = true;
            _loc6_.viewClass = ProfessionalTraitUnlockMiniLayer;
            _loc6_.mediatorClass = ProfessionalTraitUnlockMiniLayerMediator;
            _loc6_.mediatorName = ProfessionalTraitUnlockMiniLayerMediator.NAME + getTimer();
            _loc6_.data = _loc5_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
         }
      }
   }
}

