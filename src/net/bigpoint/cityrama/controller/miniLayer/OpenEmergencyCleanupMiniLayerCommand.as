package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.EmergencyCleanupMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyCleanupMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenEmergencyCleanupMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenEmergencyCleanupMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         var _loc3_:BillboardObjectVo = param1.getBody() as BillboardObjectVo;
         if(_loc3_)
         {
            var _loc4_:EmergencyCleanupMiniLayerVo = _loc2_.getEmergencyCleanupVo(_loc3_);
            if(_loc4_)
            {
               var _loc5_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc5_.modal = true;
               null.viewClass = EmergencyCleanupMiniLayer;
               null.mediatorClass = EmergencyCleanupMiniLayerMediator;
               null.mediatorName = EmergencyCleanupMiniLayerMediator.NAME;
               null.data = null;
               null.modal = true;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,null);
            }
         }
      }
   }
}

