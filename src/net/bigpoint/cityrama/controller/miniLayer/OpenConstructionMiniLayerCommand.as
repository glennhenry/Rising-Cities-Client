package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ConstructionMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConstructionMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenConstructionMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenConstructionMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = ConstructionMiniLayer;
         _loc2_.mediatorClass = ConstructionMiniLayerMediator;
         _loc2_.mediatorName = ConstructionMiniLayerMediator.NAME;
         _loc2_.data = param1.getBody();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

