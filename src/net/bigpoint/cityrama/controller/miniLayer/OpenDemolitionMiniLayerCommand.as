package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.miniLayer.DemolitionQueryMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenDemolitionMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenDemolitionMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:PopupSettingsVo = null;
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(_loc2_)
         {
            _loc3_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc3_.modal = true;
            _loc3_.noModeReset = true;
            _loc3_.viewClass = QueryMiniLayer;
            _loc3_.mediatorClass = DemolitionQueryMiniLayerMediator;
            _loc3_.mediatorName = DemolitionQueryMiniLayerMediator.NAME;
            _loc3_.data = _loc2_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         }
      }
   }
}

