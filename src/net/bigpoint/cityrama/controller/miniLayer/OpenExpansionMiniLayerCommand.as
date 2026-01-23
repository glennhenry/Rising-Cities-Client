package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.ExpansionMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ExpansionMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenExpansionMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenExpansionMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ExpansionFieldObject = ExpansionFieldObject(param1.getBody());
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = ExpansionMiniLayer;
         _loc3_.mediatorClass = ExpansionMiniLayerMediator;
         _loc3_.mediatorName = ExpansionMiniLayerMediator.NAME;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

