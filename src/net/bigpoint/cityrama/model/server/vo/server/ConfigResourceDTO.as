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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         if(!_loc5_)
         {
            super();
            if(_loc6_)
            {
               this._id = param1.id;
               if(_loc6_ || _loc3_)
               {
                  this._type = param1.t;
                  if(_loc6_)
                  {
                     §§goto(addr004f);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr00bf);
            }
            addr004f:
            this._levelId = param1.l;
            if(!(_loc5_ && Boolean(this)))
            {
               this._sellable = param1.s;
               if(!_loc5_)
               {
                  this._buyable = param1.b;
                  if(_loc6_)
                  {
                     addr0090:
                     this._giftable = param1.g;
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        this._cap = param1.c;
                        if(!(_loc5_ && _loc3_))
                        {
                           addr00bf:
                           this._resourceEffectIds = new Vector.<Number>();
                        }
                        §§goto(addr00d8);
                     }
                  }
                  §§goto(addr00bf);
               }
            }
            addr00d8:
            for each(_loc2_ in param1.es)
            {
               if(!_loc5_)
               {
                  this._resourceEffectIds.push(_loc2_);
               }
            }
            return;
         }
         §§goto(addr0090);
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
         if(!_loc2_)
         {
            this._id = param1;
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
         if(!_loc3_)
         {
            this._type = param1;
         }
      }
      
      public function get levelId() : Number
      {
         return this._levelId;
      }
      
      public function set levelId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._levelId = param1;
         }
      }
      
      public function get sellable() : Boolean
      {
         return this._sellable;
      }
      
      public function set sellable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._sellable = param1;
         }
      }
      
      public function get buyable() : Boolean
      {
         return this._buyable;
      }
      
      public function set buyable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._buyable = param1;
         }
      }
      
      public function get giftable() : Boolean
      {
         return this._giftable;
      }
      
      public function set giftable(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._giftable = param1;
         }
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

