package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigInitialPlayfieldItemDTO
   {
      
      private var _configId:Number;
      
      private var _xPos:int;
      
      private var _yPos:int;
      
      public function ConfigInitialPlayfieldItemDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               this._configId = param1.cpi;
               if(!_loc3_)
               {
                  addr0047:
                  this._xPos = param1.x;
                  if(!_loc3_)
                  {
                     this._yPos = param1.y;
                  }
               }
            }
            return;
         }
         §§goto(addr0047);
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
         if(_loc3_)
         {
            this._configId = param1;
         }
      }
      
      public function get xPos() : int
      {
         return this._xPos;
      }
      
      public function set xPos(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._xPos = param1;
         }
      }
      
      public function get yPos() : int
      {
         return this._yPos;
      }
      
      public function set yPos(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._yPos = param1;
         }
      }
   }
}

