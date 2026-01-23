package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class DecorationDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _cr:Number;
      
      private var _lastUpdatedTimeStamp:Number;
      
      public function DecorationDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super();
            if(_loc3_ || _loc3_)
            {
               addr002e:
               this._id = param1.id;
               if(_loc3_ || _loc2_)
               {
                  this._configId = param1.c;
                  if(_loc3_ || Boolean(this))
                  {
                     addr006a:
                     this._posX = param1.x;
                     if(!_loc2_)
                     {
                        this._posY = param1.y;
                        if(_loc3_ || _loc3_)
                        {
                           addr009b:
                           this._cr = param1.cr;
                           if(_loc3_)
                           {
                              this._lastUpdatedTimeStamp = param1.lu;
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr009b);
               }
               §§goto(addr006a);
            }
            §§goto(addr009b);
         }
         §§goto(addr002e);
      }
      
      public function log(param1:int, param2:int) : void
      {
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
         if(_loc3_ || Boolean(param1))
         {
            this._id = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function get created() : Number
      {
         return this._cr;
      }
      
      public function get lastUpdatedTimeStamp() : Number
      {
         return this._lastUpdatedTimeStamp;
      }
      
      public function set lastUpdatedTimeStamp(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._lastUpdatedTimeStamp = param1;
         }
      }
   }
}

