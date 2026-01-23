package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.RemoveInventoryItemMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenRemoveInventoryItemMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenRemoveInventoryItemMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:PopupSettingsVo = null;
         var _loc2_:PlayfieldItemInventoryListItemVo = param1.getBody() as PlayfieldItemInventoryListItemVo;
         if(_loc2_)
         {
            _loc3_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc3_.noModeReset = true;
            _loc3_.modal = true;
            _loc3_.viewClass = QueryMiniLayer;
            _loc3_.mediatorClass = RemoveInventoryItemMiniLayerMediator;
            _loc3_.mediatorName = RemoveInventoryItemMiniLayerMediator.NAME;
            _loc3_.data = param1.getBody();
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         }
      }
   }
}

