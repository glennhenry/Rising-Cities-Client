package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigImprovementDTO
   {
      
      private var _id:Number;
      
      private var _gfxId:int;
      
      private var _locaId:String;
      
      private var _quality:String;
      
      private var _lifetime:Number = -1;
      
      private var _renewCost:int;
      
      private var _effects:Vector.<ConfigEffectDTO>;
      
      private var _tagIds:Vector.<Number>;
      
      public function ConfigImprovementDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         super();
         this._id = param1.cid;
         this._gfxId = param1.gfx;
         this._locaId = param1.lo;
         this._quality = param1.q;
         if(param1.t)
         {
            this._lifetime = param1.t;
         }
         this._renewCost = param1.c;
         this._effects = new Vector.<ConfigEffectDTO>();
         for each(_loc2_ in param1.eff)
         {
            this._effects.push(new ConfigEffectDTO(_loc2_));
         }
         this._tagIds = new Vector.<Number>();
         for each(_loc3_ in param1.tag)
         {
            this._tagIds.push(_loc3_);
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get quality() : String
      {
         return this._quality;
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function get renewCost() : int
      {
         return this._renewCost;
      }
      
      public function get effects() : Vector.<ConfigEffectDTO>
      {
         return this._effects;
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
   }
}

