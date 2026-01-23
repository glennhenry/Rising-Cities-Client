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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         if(_loc6_ || Boolean(param1))
         {
            super();
            if(!_loc5_)
            {
               addr002c:
               this._id = param1.id;
               if(_loc6_ || Boolean(param1))
               {
                  this._initialPermissions = param1.p;
                  if(!_loc5_)
                  {
                     this._buyCap = param1.bc;
                     if(!_loc5_)
                     {
                        addr006f:
                        this._realCurrencyCost = param1.c;
                        if(_loc6_ || Boolean(this))
                        {
                           §§goto(addr0087);
                        }
                        §§goto(addr009e);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr006f);
            }
            addr0087:
            this._modifier = param1.m;
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               addr009e:
               this._eventIdList = new Vector.<Number>(0);
            }
            for each(_loc2_ in param1.e)
            {
               if(!_loc5_)
               {
                  this._eventIdList.push(_loc2_);
               }
            }
            return;
         }
         §§goto(addr002c);
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

