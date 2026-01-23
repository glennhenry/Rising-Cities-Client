package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigInventoryBagDTO
   {
      
      private var _id:Number;
      
      private var _initialSlots:int;
      
      private var _maxSlots:int;
      
      private var _priceModifier:Number = -1;
      
      public function ConfigInventoryBagDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this._id = param1.id;
               if(_loc2_ || Boolean(param1))
               {
                  this._initialSlots = Number(param1["is"]);
                  addr004c:
                  if(_loc2_)
                  {
                     this._maxSlots = param1.ms;
                     if(_loc2_ || _loc2_)
                     {
                        addr0088:
                        this._priceModifier = param1.pm;
                     }
                     return;
                  }
               }
               §§goto(addr0088);
            }
            §§goto(addr004c);
         }
         §§goto(addr0088);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get initialSlots() : int
      {
         return this._initialSlots;
      }
      
      public function get maxSlots() : int
      {
         return this._maxSlots;
      }
      
      public function get priceModifier() : Number
      {
         return this._priceModifier;
      }
   }
}

