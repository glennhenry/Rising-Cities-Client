package net.bigpoint.cityrama.view.cityTreasury.event
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   
   public class ItemPurchaseEvent extends Event
   {
      
      public static const PURCHASE_ITEM_PACK:String = "PURCHASE_ITEM_PACK";
      
      public static const PURCHASE_REAL_CURRENCY:String = "PURCHASE_REAL_CURRENCY";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         PURCHASE_ITEM_PACK = "PURCHASE_ITEM_PACK";
         if(!_loc1_)
         {
            PURCHASE_REAL_CURRENCY = "PURCHASE_REAL_CURRENCY";
         }
      }
      
      private var _itemPack:ConfigPaymentPackDTO;
      
      private var _dropContainer:DisplayObject;
      
      public function ItemPurchaseEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            super(param1,param2,param3);
         }
      }
      
      public function get itemPack() : ConfigPaymentPackDTO
      {
         return this._itemPack;
      }
      
      public function set itemPack(param1:ConfigPaymentPackDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._itemPack = param1;
         }
      }
      
      public function get dropContainer() : DisplayObject
      {
         return this._dropContainer;
      }
      
      public function set dropContainer(param1:DisplayObject) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._dropContainer = param1;
         }
      }
   }
}

