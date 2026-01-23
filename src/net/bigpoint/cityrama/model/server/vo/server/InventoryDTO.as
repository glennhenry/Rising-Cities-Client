package net.bigpoint.cityrama.model.server.vo.server
{
   public class InventoryDTO
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _bags:Vector.<InventoryItemBagDTO>;
      
      public function InventoryDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(!(_loc6_ && Boolean(this)))
         {
            super();
            if(!(_loc6_ && Boolean(this)))
            {
               this._id = param1.id;
               if(!(_loc6_ && Boolean(param1)))
               {
                  this._configId = param1.c;
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     addr0072:
                     this._bags = new Vector.<InventoryItemBagDTO>();
                     if(_loc5_ || Boolean(this))
                     {
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0072);
            }
         }
         addr008f:
         if(param1.b)
         {
            for each(_loc2_ in param1.b)
            {
               if(!_loc6_)
               {
                  this._bags.push(new InventoryItemBagDTO(_loc2_));
               }
            }
            addr0098:
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get bags() : Vector.<InventoryItemBagDTO>
      {
         return this._bags;
      }
   }
}

