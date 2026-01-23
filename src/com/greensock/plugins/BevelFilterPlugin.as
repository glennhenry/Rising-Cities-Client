package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.BevelFilter;
   
   public class BevelFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && BevelFilterPlugin))
      {
         API = 1;
         if(!_loc2_)
         {
            addr0034:
            _propNames = ["distance","angle","highlightColor","highlightAlpha","shadowColor","shadowAlpha","blurX","blurY","strength","quality"];
         }
         return;
      }
      §§goto(addr0034);
      
      public function BevelFilterPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!_loc1_)
            {
               §§goto(addr0030);
            }
            §§goto(addr003c);
         }
         addr0030:
         this.propName = "bevelFilter";
         if(!_loc1_)
         {
            addr003c:
            this.overwriteProps = ["bevelFilter"];
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(this))
         {
            _target = param1;
            if(_loc5_ || param2)
            {
               §§goto(addr0044);
            }
            §§goto(addr005f);
         }
         addr0044:
         _type = BevelFilter;
         if(_loc5_)
         {
            initFilter(param2,new BevelFilter(0,0,16777215,0.5,0,0.5,2,2,0,int(param2.quality) || 2),_propNames);
            addr005f:
         }
         return true;
      }
   }
}

