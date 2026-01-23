package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigResourceDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _type:String;
      
      private var _levelId:Number;
      
      private var _sellable:Boolean;
      
      private var _buyable:Boolean;
      
      private var _giftable:Boolean;
      
      private var _resourceEffectIds:Vector.<Number>;
      
      private var _cap:Number;
      
      public function ConfigResourceDTO(param1:Object)
      {
         var _loc2_:Number = NaN;
         super();
         this._id = param1.id;
         this._type = param1.t;
         this._levelId = param1.l;
         this._sellable = param1.s;
         this._buyable = param1.b;
         this._giftable = param1.g;
         this._cap = param1.c;
         this._resourceEffectIds = new Vector.<Number>();
         for each(_loc2_ in param1.es)
         {
            this._resourceEffectIds.push(_loc2_);
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
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
      
      public function get buyable() : Boolean
      {
         return this._buyable;
      }
      
      public function set buyable(param1:Boolean) : void
      {
         this._buyable = param1;
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
      
      public function get cap() : Number
      {
         return this._cap;
      }
   }
}

