package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigGoodDTO implements ILoggableObject
   {
      
      private var _tagIds:Vector.<Number>;
      
      private var _tagConfigs:Vector.<ConfigTagDTO>;
      
      private var _associatedEventIds:Vector.<Number>;
      
      private var _configd:Number;
      
      private var _levelId:Number;
      
      private var _userLevelRequired:Number;
      
      private var _sellable:Boolean;
      
      private var _produceable:Boolean;
      
      private var _giftable:Boolean;
      
      private var _gfxId:int;
      
      private var _localeId:String;
      
      public function ConfigGoodDTO(param1:Object)
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         super();
         this._tagIds = new Vector.<Number>();
         this._tagConfigs = new Vector.<ConfigTagDTO>();
         this._associatedEventIds = new Vector.<Number>();
         for each(_loc2_ in param1.t)
         {
            this._tagIds.push(_loc2_);
         }
         for each(_loc3_ in param1.eqi)
         {
            this._associatedEventIds.push(_loc3_);
         }
         this._configd = param1.id;
         this._levelId = param1.l;
         this._sellable = param1.s;
         this._produceable = param1.p;
         this._giftable = param1.g;
         this._gfxId = param1.gfx;
         this._localeId = param1.lo;
      }
      
      public function get id() : Number
      {
         return this._configd;
      }
      
      public function set id(param1:Number) : void
      {
         this._configd = param1;
      }
      
      public function get levelId() : Number
      {
         return this._levelId;
      }
      
      public function set levelId(param1:Number) : void
      {
         this._levelId = param1;
      }
      
      public function get sellable() : Boolean
      {
         return this._sellable;
      }
      
      public function set sellable(param1:Boolean) : void
      {
         this._sellable = param1;
      }
      
      public function get produceable() : Boolean
      {
         return this._produceable;
      }
      
      public function set produceable(param1:Boolean) : void
      {
         this._produceable = param1;
      }
      
      public function get giftable() : Boolean
      {
         return this._giftable;
      }
      
      public function set giftable(param1:Boolean) : void
      {
         this._giftable = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
      
      public function get tagConfigs() : Vector.<ConfigTagDTO>
      {
         if(this._tagConfigs.length != this._tagIds.length)
         {
            throw new RamaCityError("Use Factory to build ConfigGoods !!!");
         }
         return this._tagConfigs;
      }
      
      public function set tagConfigs(param1:Vector.<ConfigTagDTO>) : void
      {
         this._tagConfigs = param1;
      }
      
      public function get userLevelRequired() : Number
      {
         if(!this._userLevelRequired)
         {
            throw new RamaCityError("Use Factory to build ConfigGoods !!!");
         }
         return this._userLevelRequired;
      }
      
      public function get isEventGood() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_EVENT);
      }
      
      public function get isSpecialGood() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_SPECIAL);
      }
      
      public function get isKey() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_KEY);
      }
      
      public function get isMedal() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_MEDAL);
      }
      
      public function set userLevelRequired(param1:Number) : void
      {
         this._userLevelRequired = param1;
      }
      
      public function get associatedEventIds() : Vector.<Number>
      {
         return this._associatedEventIds;
      }
      
      public function get isDextro() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_DEXTRO);
      }
      
      public function get isConstructionGood() : Boolean
      {
         return this.isTaggedGoodByTagName(ServerTagConstants.GOOD_CONSTRUCTION);
      }
      
      public function isTaggedGoodByTagName(param1:String) : Boolean
      {
         var _loc2_:ConfigTagDTO = null;
         for each(_loc2_ in this.tagConfigs)
         {
            if(_loc2_.tagName == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}

