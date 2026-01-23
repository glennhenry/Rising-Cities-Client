package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPaymentPackDTO
   {
      
      private var _id:Number;
      
      private var _key:String;
      
      private var _type:String;
      
      private var _locaId:int;
      
      private var _gfxId:int;
      
      private var _resources:Vector.<ConfigOutputDTO>;
      
      private var _goods:Vector.<ConfigOutputDTO>;
      
      private var _permissions:Vector.<ConfigOutputDTO>;
      
      private var _assists:Vector.<ConfigOutputDTO>;
      
      private var _improvements:Vector.<ConfigOutputDTO>;
      
      private var _tagIds:Vector.<Number>;
      
      private var _priceRC:Number = 0;
      
      private var _configTags:Vector.<ConfigTagDTO>;
      
      private var _upsellPackages:Vector.<ConfigPaymentPackUpsellingDTO>;
      
      public function ConfigPaymentPackDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         super();
         this._id = param1.id;
         this._key = param1.k;
         this._type = param1.t;
         this._locaId = param1.fl;
         this._gfxId = param1.gf;
         if(param1.rc)
         {
            this._priceRC = param1.rc;
         }
         this._resources = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in param1.r)
         {
            this._resources.push(new ConfigOutputDTO(_loc2_));
         }
         this._goods = new Vector.<ConfigOutputDTO>();
         for each(_loc3_ in param1.g)
         {
            this._goods.push(new ConfigOutputDTO(_loc3_));
         }
         this._permissions = new Vector.<ConfigOutputDTO>();
         for each(_loc4_ in param1.p)
         {
            this._permissions.push(new ConfigOutputDTO(_loc4_));
         }
         this._assists = new Vector.<ConfigOutputDTO>();
         for each(_loc5_ in param1.a)
         {
            this._assists.push(new ConfigOutputDTO(_loc5_));
         }
         this._improvements = new Vector.<ConfigOutputDTO>();
         if(param1.i)
         {
            for each(_loc7_ in param1.i)
            {
               this._improvements.push(new ConfigOutputDTO(_loc7_));
            }
         }
         this._tagIds = new Vector.<Number>();
         if(param1.tag)
         {
            for each(_loc8_ in param1.tag)
            {
               this._tagIds.push(_loc8_);
            }
         }
         this._configTags = new Vector.<ConfigTagDTO>();
         this._upsellPackages = new Vector.<ConfigPaymentPackUpsellingDTO>();
         for each(_loc6_ in param1.up)
         {
            this._upsellPackages.push(new ConfigPaymentPackUpsellingDTO(_loc6_));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get resources() : Vector.<ConfigOutputDTO>
      {
         return this._resources;
      }
      
      public function get goods() : Vector.<ConfigOutputDTO>
      {
         return this._goods;
      }
      
      public function get permissions() : Vector.<ConfigOutputDTO>
      {
         return this._permissions;
      }
      
      public function get assists() : Vector.<ConfigOutputDTO>
      {
         return this._assists;
      }
      
      public function get improvements() : Vector.<ConfigOutputDTO>
      {
         return this._improvements;
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
      
      public function get priceRC() : Number
      {
         return this._priceRC;
      }
      
      public function get configTags() : Vector.<ConfigTagDTO>
      {
         return this._configTags;
      }
      
      public function set configTags(param1:Vector.<ConfigTagDTO>) : void
      {
         this._configTags = param1;
      }
      
      public function get locaId() : int
      {
         return this._locaId;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get upsellPackages() : Vector.<ConfigPaymentPackUpsellingDTO>
      {
         return this._upsellPackages;
      }
   }
}

