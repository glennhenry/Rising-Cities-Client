package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class InventoryItemBagDTO
   {
      
      private var _type:String;
      
      private var _configId:Number;
      
      private var _slots:int;
      
      private var _items:Vector.<InventoryItemDTO>;
      
      public function InventoryItemBagDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._type = param1.t;
         this._configId = param1.c;
         this._slots = param1.s;
         this._items = new Vector.<InventoryItemDTO>();
         if(param1.i)
         {
            for each(_loc2_ in param1.i)
            {
               this._items.push(ConfigFactory.buildInventoryItemDTO(_loc2_));
            }
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get slots() : int
      {
         return this._slots;
      }
      
      public function get items() : Vector.<InventoryItemDTO>
      {
         return this._items;
      }
      
      public function set slots(param1:int) : void
      {
         this._slots = param1;
      }
   }
}

