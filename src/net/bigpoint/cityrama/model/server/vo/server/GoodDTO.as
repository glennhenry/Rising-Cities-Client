package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class GoodDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _config:ConfigGoodDTO;
      
      private var _amount:Number;
      
      public function GoodDTO(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super();
            if(_loc3_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0051);
         }
         addr0032:
         if(param1)
         {
            if(!(_loc2_ && Boolean(param1)))
            {
               addr0051:
               this._id = param1.id;
               if(!(_loc2_ && Boolean(this)))
               {
                  this._configId = param1.c;
                  if(_loc3_)
                  {
                     addr0075:
                     this._amount = param1.a;
                  }
                  §§goto(addr007e);
               }
            }
            §§goto(addr0075);
         }
         addr007e:
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
         if(_loc3_)
         {
            this._id = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._configId = param1;
         }
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._amount = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get config() : ConfigGoodDTO
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._config);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr003b);
                  }
               }
               return this._config;
            }
         }
         addr003b:
         throw new RamaCityError("Use Factory to build goods !!!");
      }
      
      public function set config(param1:ConfigGoodDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._config = param1;
         }
      }
   }
}

