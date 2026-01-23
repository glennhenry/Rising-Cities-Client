package net.bigpoint.cityrama.view.playfieldItemInventory.ui.events
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   
   public class PlayfieldItemInventoryEvent extends Event
   {
      
      public static const DELETE_INVENTORY_ITEM:String = "DELETE_INVENTORY_ITEM";
      
      public static const PURCHASE_INVENTORY_SLOT:String = "PURCHASE_INVENTORY_SLOT";
      
      public static const INVENTORY_SELECTION_CHANGED:String = "INVENTORY_SELECTION_CHANGED";
      
      public static const INVENTORY_ITEM_OVER:String = "INVENTORY_ITEM_OVER";
      
      public static const INVENTORY_ITEM_OUT:String = "INVENTORY_ITEM_OUT";
      
      public static const INVENTORY_ITEM_CLICK:String = "INVENTORY_ITEM_CLICK";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         DELETE_INVENTORY_ITEM = "DELETE_INVENTORY_ITEM";
         if(_loc2_)
         {
            PURCHASE_INVENTORY_SLOT = "PURCHASE_INVENTORY_SLOT";
            if(!_loc1_)
            {
               §§goto(addr003c);
            }
            §§goto(addr0058);
         }
         addr003c:
         INVENTORY_SELECTION_CHANGED = "INVENTORY_SELECTION_CHANGED";
         if(!_loc1_)
         {
            INVENTORY_ITEM_OVER = "INVENTORY_ITEM_OVER";
            if(_loc2_)
            {
               addr0058:
               INVENTORY_ITEM_OUT = "INVENTORY_ITEM_OUT";
               if(_loc2_)
               {
                  addr0066:
                  INVENTORY_ITEM_CLICK = "INVENTORY_ITEM_CLICK";
               }
               §§goto(addr006f);
            }
            §§goto(addr0066);
         }
         addr006f:
         return;
      }
      §§goto(addr0058);
      
      private var _listItemVo:PlayfieldItemInventoryListItemVo;
      
      private var _selectedIndex:int;
      
      public function PlayfieldItemInventoryEvent(param1:String, param2:Boolean = true, param3:PlayfieldItemInventoryListItemVo = null, param4:int = -1)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(param3)))
         {
            this._listItemVo = param3;
            if(_loc5_)
            {
               this._selectedIndex = param4;
               if(!_loc6_)
               {
                  super(param1,param2);
               }
            }
         }
      }
      
      public function get listItemVo() : PlayfieldItemInventoryListItemVo
      {
         return this._listItemVo;
      }
      
      public function get selectedIndex() : int
      {
         return this._selectedIndex;
      }
   }
}

