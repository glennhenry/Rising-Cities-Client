package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ResourceDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _amount:Number;
      
      private var _amountCap:Number;
      
      private var _imagePath:String;
      
      private var _config:ConfigResourceDTO;
      
      public function ResourceDTO(param1:Object, param2:ConfigResourceDTO)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && Boolean(this)))
            {
               this._id = param1.id;
               if(!_loc4_)
               {
                  this._configId = param1.c;
                  if(!_loc4_)
                  {
                     addr0063:
                     this._config = param2;
                     if(!_loc4_)
                     {
                        addr006e:
                        this._amount = param1.a;
                        if(!_loc4_)
                        {
                           addr007d:
                           this._amountCap = param1.ac;
                           if(_loc3_)
                           {
                              this._imagePath = param1.imagePath;
                           }
                        }
                        §§goto(addr0095);
                     }
                  }
                  §§goto(addr007d);
               }
               addr0095:
               return;
            }
            §§goto(addr006e);
         }
         §§goto(addr0063);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._configId = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get amountCap() : Number
      {
         return this._amountCap;
      }
      
      public function set amountCap(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._amountCap = param1;
         }
      }
      
      public function get imagePath() : String
      {
         return this._imagePath;
      }
      
      public function get config() : ConfigResourceDTO
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._config);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     throw new RamaCityError("USE ConfigFactory for constructing this !!");
                  }
               }
               addr004f:
               return this._config;
            }
         }
         §§goto(addr004f);
      }
   }
}

