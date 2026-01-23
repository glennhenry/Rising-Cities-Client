package net.bigpoint.cityrama.model.floater
{
   public class FloaterVo
   {
      
      private var _text:String;
      
      private var _glowColor:uint;
      
      public function FloaterVo(param1:String, param2:uint = 1854546)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               this._text = param1;
               if(_loc4_)
               {
                  addr002e:
                  this._glowColor = param2;
               }
               §§goto(addr0033);
            }
            §§goto(addr002e);
         }
         addr0033:
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get glowColor() : uint
      {
         return this._glowColor;
      }
   }
}

