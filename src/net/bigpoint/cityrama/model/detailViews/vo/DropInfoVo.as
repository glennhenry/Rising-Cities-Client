package net.bigpoint.cityrama.model.detailViews.vo
{
   public class DropInfoVo
   {
      
      private var _type:String;
      
      private var _gfxId:Number;
      
      public function DropInfoVo(param1:String, param2:Number = 0)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(_loc4_ || _loc3_)
            {
               this._type = param1;
               if(_loc4_ || Boolean(param1))
               {
                  this._gfxId = param2;
               }
            }
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
   }
}

