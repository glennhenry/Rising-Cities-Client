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
      
      private var _listItemVo:PlayfieldItemInventoryListItemVo;
      
      private var _selectedIndex:int;
      
      public function PlayfieldItemInventoryEvent(param1:String, param2:Boolean = true, param3:PlayfieldItemInventoryListItemVo = null, param4:int = -1)
      {
         this._listItemVo = param3;
         this._selectedIndex = param4;
         super(param1,param2);
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

