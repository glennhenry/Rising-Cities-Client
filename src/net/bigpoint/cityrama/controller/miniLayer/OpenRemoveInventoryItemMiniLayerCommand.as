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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:PopupSettingsVo = null;
         var _loc2_:PlayfieldItemInventoryListItemVo = param1.getBody() as PlayfieldItemInventoryListItemVo;
         if(_loc5_ || Boolean(this))
         {
            if(_loc2_)
            {
               addr003a:
               _loc3_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               if(_loc5_)
               {
                  _loc3_.noModeReset = true;
                  if(_loc5_ || Boolean(param1))
                  {
                     _loc3_.modal = true;
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        §§goto(addr0081);
                     }
                     §§goto(addr00a8);
                  }
                  addr0081:
                  _loc3_.viewClass = QueryMiniLayer;
                  if(_loc5_)
                  {
                     addr008e:
                     _loc3_.mediatorClass = RemoveInventoryItemMiniLayerMediator;
                     if(_loc5_)
                     {
                        addr00a8:
                        _loc3_.mediatorName = RemoveInventoryItemMiniLayerMediator.NAME;
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§goto(addr00bf);
                        }
                        §§goto(addr00cc);
                     }
                  }
                  addr00bf:
                  _loc3_.data = param1.getBody();
                  if(!_loc4_)
                  {
                     addr00cc:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr008e);
            }
            addr00d7:
            return;
         }
         §§goto(addr003a);
      }
   }
}

