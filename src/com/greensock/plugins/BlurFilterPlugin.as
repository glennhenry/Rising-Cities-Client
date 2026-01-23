package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.BlurFilter;
   
   public class BlurFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         API = 1;
         if(!_loc2_)
         {
            _propNames = ["blurX","blurY","quality"];
         }
      }
      
      public function BlurFilterPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               §§goto(addr0037);
            }
            §§goto(addr004b);
         }
         addr0037:
         this.propName = "blurFilter";
         if(!(_loc2_ && _loc2_))
         {
            addr004b:
            this.overwriteProps = ["blurFilter"];
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param3))
         {
            _target = param1;
            if(_loc4_ || Boolean(param1))
            {
               _type = BlurFilter;
               if(!(_loc5_ && param2))
               {
                  initFilter(param2,new BlurFilter(0,0,int(param2.quality) || 2),_propNames);
                  addr0068:
               }
               return true;
            }
         }
         §§goto(addr0068);
      }
   }
}

