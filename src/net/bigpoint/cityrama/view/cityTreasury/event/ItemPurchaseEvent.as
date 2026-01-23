package net.bigpoint.cityrama.view.cityTreasury.event
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   
   public class ItemPurchaseEvent extends Event
   {
      
      public static const PURCHASE_ITEM_PACK:String = "PURCHASE_ITEM_PACK";
      
      public static const PURCHASE_REAL_CURRENCY:String = "PURCHASE_REAL_CURRENCY";
      
      private var _itemPack:ConfigPaymentPackDTO;
      
      private var _dropContainer:DisplayObject;
      
      public function ItemPurchaseEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get itemPack() : ConfigPaymentPackDTO
      {
         return this._itemPack;
      }
      
      public function set itemPack(param1:ConfigPaymentPackDTO) : void
      {
         this._itemPack = param1;
      }
      
      public function get dropContainer() : DisplayObject
      {
         return this._dropContainer;
      }
      
      public function set dropContainer(param1:DisplayObject) : void
      {
         this._dropContainer = param1;
      }
   }
}

