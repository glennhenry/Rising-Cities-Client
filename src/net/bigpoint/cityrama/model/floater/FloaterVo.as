package net.bigpoint.cityrama.model.floater
{
   public class FloaterVo
   {
      
      private var _text:String;
      
      private var _glowColor:uint;
      
      public function FloaterVo(param1:String, param2:uint = 1854546)
      {
         super();
         this._text = param1;
         this._glowColor = param2;
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

