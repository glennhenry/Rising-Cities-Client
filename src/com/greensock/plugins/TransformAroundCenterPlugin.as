package com.greensock.plugins
{
   import com.greensock.*;
   import flash.display.*;
   import flash.geom.*;
   
   public class TransformAroundCenterPlugin extends TransformAroundPointPlugin
   {
      
      public static const API:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         API = 1;
      }
      
      public function TransformAroundCenterPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!_loc1_)
            {
               this.propName = "transformAroundCenter";
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:Rectangle = param1.getBounds(param1);
         if(!(_loc6_ && param2))
         {
            param2.point = new Point(_loc4_.x + _loc4_.width / 2,_loc4_.y + _loc4_.height / 2);
            if(_loc5_ || Boolean(this))
            {
               addr0079:
               param2.pointIsLocal = true;
            }
            return super.onInitTween(param1,param2,param3);
         }
         §§goto(addr0079);
      }
   }
}

