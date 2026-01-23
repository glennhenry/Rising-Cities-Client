package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPlayfieldItemPermissionDTO
   {
      
      private var _id:Number;
      
      private var _initialPermissions:int;
      
      private var _buyCap:int;
      
      private var _realCurrencyCost:int;
      
      private var _modifier:Number;
      
      private var _eventIdList:Vector.<Number>;
      
      public function ConfigPlayfieldItemPermissionDTO(param1:Object)
      {
         var _loc2_:Number = NaN;
         super();
         this._id = param1.id;
         this._initialPermissions = param1.p;
         this._buyCap = param1.bc;
         this._realCurrencyCost = param1.c;
         this._modifier = param1.m;
         this._eventIdList = new Vector.<Number>(0);
         for each(_loc2_ in param1.e)
         {
            this._eventIdList.push(_loc2_);
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get initialPermissions() : Number
      {
         return this._initialPermissions;
      }
      
      public function get realCurrencyCost() : Number
      {
         return this._realCurrencyCost;
      }
      
      public function get modifier() : Number
      {
         return this._modifier;
      }
      
      public function get buyCap() : int
      {
         return this._buyCap;
      }
      
      public function get eventIdList() : Vector.<Number>
      {
         return this._eventIdList;
      }
   }
}

