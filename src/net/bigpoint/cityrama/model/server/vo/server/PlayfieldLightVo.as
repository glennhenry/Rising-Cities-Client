package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class PlayfieldLightVo implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      public function PlayfieldLightVo(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this._id = param1.id;
               if(_loc2_)
               {
                  addr0049:
                  this._configId = param1.c;
               }
            }
            return;
         }
         §§goto(addr0049);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
         if(_loc3_ || _loc3_)
         {
            this._configId = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
   }
}

