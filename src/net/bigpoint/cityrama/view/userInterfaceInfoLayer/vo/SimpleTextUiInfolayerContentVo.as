package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   
   public class SimpleTextUiInfolayerContentVo extends AbstractUIInfolayerContentVo
   {
      
      private var _data:String;
      
      private var _width:Number;
      
      public function SimpleTextUiInfolayerContentVo(param1:uint, param2:Point, param3:String, param4:String = "", param5:String = "")
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!_loc6_)
         {
            super(param1,param2,param4,param5);
            if(!_loc6_)
            {
               this._data = param3;
            }
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get width() : Number
      {
         return this._width;
      }
      
      public function set width(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._width = param1;
         }
      }
   }
}

