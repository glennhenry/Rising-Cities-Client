package net.bigpoint.cityrama.model.detailViews.vo
{
   public class DropInfoVo
   {
      
      private var _type:String;
      
      private var _gfxId:Number;
      
      public function DropInfoVo(param1:String, param2:Number = 0)
      {
         super();
         this._type = param1;
         this._gfxId = param2;
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

