package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigBoosterDTO
   {
      
      private var _id:Number;
      
      private var _gfxId:Number;
      
      private var _locaId:Number;
      
      private var _tags:Vector.<String>;
      
      private var _priceConfigs:Vector.<ConfigOutputDTO>;
      
      public function ConfigBoosterDTO(param1:Object)
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         super();
         this._id = Number(param1.cid);
         this._gfxId = Number(param1.gfx);
         this._locaId = Number(param1.lid);
         this._tags = new Vector.<String>();
         for each(_loc2_ in param1.tag)
         {
            this._tags.push(_loc2_);
         }
         this._priceConfigs = new Vector.<ConfigOutputDTO>();
         for each(_loc3_ in param1.cst)
         {
            this._priceConfigs.push(new ConfigOutputDTO(_loc3_));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get locaId() : Number
      {
         return this._locaId;
      }
      
      public function get priceConfigs() : Vector.<ConfigOutputDTO>
      {
         return this._priceConfigs;
      }
      
      public function get tags() : Vector.<String>
      {
         return this._tags;
      }
      
      public function set tags(param1:Vector.<String>) : void
      {
         this._tags = param1;
      }
   }
}

