package net.bigpoint.cityrama.controller.error
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.FatalErrorMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.FatalErrorMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFatalErrorMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenFatalErrorMinilayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = FatalErrorMiniLayer;
         _loc2_.mediatorClass = FatalErrorMiniLayerMediator;
         _loc2_.mediatorName = FatalErrorMiniLayerMediator.NAME;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

