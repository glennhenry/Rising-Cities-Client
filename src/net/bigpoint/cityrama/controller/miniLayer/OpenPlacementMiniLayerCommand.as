package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.PlacementImpossibleMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.PlacementImpossibleMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenPlacementMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenPlacementMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = PlacementImpossibleMiniLayer;
         _loc3_.mediatorClass = PlacementImpossibleMiniLayerMediator;
         _loc3_.mediatorName = PlacementImpossibleMiniLayerMediator.NAME;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

