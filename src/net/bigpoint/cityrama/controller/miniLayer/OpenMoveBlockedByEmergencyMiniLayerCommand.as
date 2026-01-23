package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.MoveBlockedByEmergencyMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMoveBlockedByEmergencyMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMoveBlockedByEmergencyMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.noModeReset = true;
         _loc2_.modal = true;
         _loc2_.viewClass = QueryMiniLayer;
         _loc2_.mediatorClass = MoveBlockedByEmergencyMiniLayerMediator;
         _loc2_.mediatorName = MoveBlockedByEmergencyMiniLayerMediator.NAME;
         _loc2_.modal = true;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

