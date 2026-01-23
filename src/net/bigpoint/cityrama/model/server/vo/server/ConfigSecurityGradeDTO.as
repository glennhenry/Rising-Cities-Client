package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigSecurityGradeDTO
   {
      
      private var _rangeX:int;
      
      private var _rangeY:int;
      
      private var _value:int;
      
      private var _type:String;
      
      private var _id:Number;
      
      private var _orderId:Number;
      
      public function ConfigSecurityGradeDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(_loc3_ || Boolean(param1))
            {
               this._rangeX = int(param1.rx);
               if(_loc3_)
               {
                  this._rangeY = int(param1.ry);
                  if(_loc3_ || _loc2_)
                  {
                     this._value = int(param1.v);
                     if(_loc3_)
                     {
                        this._type = String(param1.dt);
                        if(_loc3_)
                        {
                           this._id = Number(param1.cid);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00b1:
                              this._orderId = Number(param1.o);
                           }
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00b1);
                  }
                  addr00bf:
                  return;
               }
            }
         }
         §§goto(addr00b1);
      }
      
      public function get rangeX() : int
      {
         return this._rangeX;
      }
      
      public function get rangeY() : int
      {
         return this._rangeY;
      }
      
      public function get value() : int
      {
         return this._value;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get orderId() : Number
      {
         return this._orderId;
      }
      
      public function set orderId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._orderId = param1;
         }
      }
   }
}

