package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   
   public class ConfigInventoryDTO
   {
      
      private var _id:Number;
      
      private var _configInventoryBags:Dictionary;
      
      public function ConfigInventoryDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(!_loc6_)
         {
            super();
            if(!_loc6_)
            {
               §§goto(addr0026);
            }
            §§goto(addr0048);
         }
         addr0026:
         this._id = param1.id;
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            addr0048:
            this._configInventoryBags = new Dictionary();
            if(_loc5_)
            {
               §§goto(addr0057);
            }
            §§goto(addr0060);
         }
         addr0057:
         if(param1.b)
         {
            addr0060:
            for each(_loc2_ in param1.b)
            {
               if(!_loc6_)
               {
                  this._configInventoryBags[_loc2_.id] = new ConfigInventoryBagDTO(_loc2_);
               }
            }
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get configInventoryBags() : Dictionary
      {
         return this._configInventoryBags;
      }
   }
}

