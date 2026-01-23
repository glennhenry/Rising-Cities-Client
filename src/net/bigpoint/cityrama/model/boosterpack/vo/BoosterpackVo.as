package net.bigpoint.cityrama.model.boosterpack.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigBoosterDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   
   public class BoosterpackVo
   {
      
      private var _locaId:Number;
      
      private var _gfxId:Number;
      
      private var _id:Number;
      
      private var _slotId:int;
      
      private var _type:String;
      
      private var _defaultCostConfig:ConfigOutputDTO;
      
      private var _defaultCostUserStock:Number;
      
      private var _realCurrencyCostConfig:ConfigOutputDTO;
      
      private var _realCurrencyUserStock:Number;
      
      private var _config:ConfigBoosterDTO;
      
      public function BoosterpackVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function get locaId() : Number
      {
         return this._locaId;
      }
      
      public function set locaId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._locaId = param1;
         }
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._gfxId = param1;
         }
      }
      
      public function get config() : ConfigBoosterDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigBoosterDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._config = param1;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._id = param1;
         }
      }
      
      public function get defaultCostAmount() : Number
      {
         return Math.abs(this._defaultCostConfig.outputAmount);
      }
      
      public function get slotId() : int
      {
         return this._slotId;
      }
      
      public function set slotId(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._slotId = param1;
         }
      }
      
      public function set defaultCostUserStock(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._defaultCostUserStock = param1;
         }
      }
      
      public function get defaultCostUserStock() : Number
      {
         return this._defaultCostUserStock;
      }
      
      public function get realCurrencyCostAmount() : Number
      {
         return Math.abs(this._realCurrencyCostConfig.outputAmount);
      }
      
      public function set realCurrencyUserStock(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._realCurrencyUserStock = param1;
         }
      }
      
      public function get userCanAffordGoodPrice() : Boolean
      {
         return Math.abs(this.defaultCostAmount) <= Math.abs(this._defaultCostUserStock);
      }
      
      public function get userCanAffordRCPrice() : Boolean
      {
         return Math.abs(this.realCurrencyCostAmount) <= Math.abs(this._realCurrencyUserStock);
      }
      
      public function hasRealCurrencyPrice() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._realCurrencyCostConfig == null);
         if(_loc1_ || Boolean(this))
         {
            return !§§pop();
         }
      }
      
      public function get realCurrencyUserStock() : Number
      {
         return this._realCurrencyUserStock;
      }
      
      public function get defaultCostConfig() : ConfigOutputDTO
      {
         return this._defaultCostConfig;
      }
      
      public function set defaultCostConfig(param1:ConfigOutputDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._defaultCostConfig = param1;
         }
      }
      
      public function get realCurrencyCostConfig() : ConfigOutputDTO
      {
         return this._realCurrencyCostConfig;
      }
      
      public function set realCurrencyCostConfig(param1:ConfigOutputDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._realCurrencyCostConfig = param1;
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._type = param1;
         }
      }
   }
}

