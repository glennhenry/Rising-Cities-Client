package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.Dictionary;
   
   public class ConfigInventoryDTO
   {
      
      private var _id:Number;
      
      private var _configInventoryBags:Dictionary;
      
      public function ConfigInventoryDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.id;
         this._configInventoryBags = new Dictionary();
         if(param1.b)
         {
            for each(_loc2_ in param1.b)
            {
               this._configInventoryBags[_loc2_.id] = new ConfigInventoryBagDTO(_loc2_);
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

