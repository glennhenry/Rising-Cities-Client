package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.EmergencyRehireProfessionalMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyRehireProfessionalMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEmergencyRehireProfessionalMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEmergencyRehireProfessionalMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:Number = param1.getBody() as Number;
         if(!isNaN(_loc3_))
         {
            var _loc4_:EmergencyRehireProfessionalMiniLayerVo = _loc2_.getEmergencyRehireProfessionalVo(_loc3_);
            if(_loc4_)
            {
               var _loc5_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc5_.modal = true;
               null.viewClass = EmergencyRehireProfessionalMiniLayer;
               null.mediatorClass = EmergencyRehireProfessionalMiniLayerMediator;
               null.mediatorName = EmergencyRehireProfessionalMiniLayerMediator.NAME;
               null.data = null;
               null.modal = true;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,null);
            }
         }
      }
   }
}

