package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.view.miniLayer.EmergencyTimeUpMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyTimeUpMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEmergencyTimeUpMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEmergencyTimeUpMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:EmergencyDTO = param1.getBody() as EmergencyDTO;
         if(_loc3_)
         {
            var _loc4_:EmergencyTimeUpMiniLayerVo = _loc2_.getEmergencyTimeUpVo(_loc3_);
            if(_loc4_)
            {
               var _loc5_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc5_.modal = true;
               null.viewClass = EmergencyTimeUpMiniLayer;
               null.mediatorClass = EmergencyTimeUpMiniLayerMediator;
               null.mediatorName = EmergencyTimeUpMiniLayerMediator.NAME;
               null.data = null;
               null.modal = true;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,null);
            }
         }
      }
   }
}

