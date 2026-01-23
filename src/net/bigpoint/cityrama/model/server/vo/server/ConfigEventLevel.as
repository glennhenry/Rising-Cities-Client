package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEventLevel
   {
      
      private var _maximum:Number;
      
      private var _minimum:Number;
      
      public function ConfigEventLevel(param1:Object)
      {
         super();
         this._minimum = param1.mi;
         this._maximum = param1.ma;
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

