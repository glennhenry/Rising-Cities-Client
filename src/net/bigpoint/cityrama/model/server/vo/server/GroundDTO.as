package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class GroundDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _active:Boolean;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      public function GroundDTO(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && Boolean(param1)))
            {
               addr002b:
               this._id = param1.id;
               if(!(_loc3_ && Boolean(this)))
               {
                  this._configId = param1.c;
                  if(_loc4_)
                  {
                     this._posX = param1.x;
                     if(_loc4_)
                     {
                        this._posY = param1.y;
                        addr006a:
                        if(!_loc3_)
                        {
                           this._created = param1.cr;
                           if(!_loc3_)
                           {
                              this._active = param1.a;
                              if(_loc4_ || Boolean(this))
                              {
                                 addr00aa:
                                 this._config = param2;
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00aa);
                        }
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr006a);
            }
            addr00b0:
            return;
         }
         §§goto(addr002b);
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
         if(!(_loc2_ && Boolean(param1)))
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
         if(!(_loc2_ && _loc2_))
         {
            this._configId = param1;
         }
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._posX = param1;
         }
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._posY = param1;
         }
      }
      
      public function get created() : Number
      {
         return this._created;
      }
      
      public function set created(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._created = param1;
         }
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function set active(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._active = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
   }
}

