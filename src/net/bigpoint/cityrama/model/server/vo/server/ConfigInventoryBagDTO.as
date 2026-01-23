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
         super();
         this._id = param1.id;
         this._initialSlots = Number(param1["is"]);
         this._maxSlots = param1.ms;
         this._priceModifier = param1.pm;
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

