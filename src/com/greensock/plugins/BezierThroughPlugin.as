package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class BezierThroughPlugin extends BezierPlugin
   {
      
      public static const API:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || BezierThroughPlugin)
      {
         API = 1;
      }
      
      public function BezierThroughPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr0037:
               this.propName = "bezierThrough";
            }
            return;
         }
         §§goto(addr0037);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §§push(param2 is Array);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && param2))
                  {
                     §§push(false);
                     if(!(_loc4_ && Boolean(param3)))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0067:
                     init(param3,param2 as Array,true);
                     §§push(true);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0067);
            }
            addr0075:
            return §§pop();
         }
         §§goto(addr0067);
      }
   }
}

