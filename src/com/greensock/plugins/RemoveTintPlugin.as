package com.greensock.plugins
{
   public class RemoveTintPlugin extends TintPlugin
   {
      
      public static const API:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         API = 1;
      }
      
      public function RemoveTintPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this.propName = "removeTint";
            }
         }
      }
   }
}

