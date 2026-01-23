package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEventLevel
   {
      
      private var _maximum:Number;
      
      private var _minimum:Number;
      
      public function ConfigEventLevel(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr003c);
            }
            §§goto(addr004b);
         }
         addr003c:
         this._minimum = param1.mi;
         if(!_loc2_)
         {
            addr004b:
            this._maximum = param1.ma;
         }
      }
      
      public function get minimum() : Number
      {
         return this._minimum;
      }
      
      public function get maximum() : Number
      {
         return this._maximum;
      }
   }
}

