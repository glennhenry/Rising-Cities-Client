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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(_loc5_ || Boolean(param1))
         {
            super();
            if(_loc5_)
            {
               this._type = param1.t;
               if(_loc5_ || Boolean(param1))
               {
                  this._configId = param1.c;
                  if(_loc5_)
                  {
                     addr0064:
                     this._slots = param1.s;
                     if(!_loc6_)
                     {
                        addr0073:
                        this._items = new Vector.<InventoryItemDTO>();
                        if(_loc5_ || Boolean(param1))
                        {
                           §§goto(addr0090);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0099);
            }
            §§goto(addr0064);
         }
         addr0090:
         if(param1.i)
         {
            for each(_loc2_ in param1.i)
            {
               if(_loc5_)
               {
                  this._items.push(ConfigFactory.buildInventoryItemDTO(_loc2_));
               }
            }
            addr0099:
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._slots = param1;
         }
      }
   }
}

