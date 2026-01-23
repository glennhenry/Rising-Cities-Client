package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.GlowFilter;
   
   public class GlowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && GlowFilterPlugin))
      {
         API = 1;
         if(!_loc1_)
         {
            _propNames = ["color","alpha","blurX","blurY","strength","quality","inner","knockout"];
         }
      }
      
      public function GlowFilterPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!_loc2_)
            {
               this.propName = "glowFilter";
               if(_loc1_ || Boolean(this))
               {
                  addr0043:
                  this.overwriteProps = ["glowFilter"];
               }
               §§goto(addr004c);
            }
            §§goto(addr0043);
         }
         addr004c:
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            _target = param1;
            if(!_loc4_)
            {
               _type = GlowFilter;
               if(!(_loc4_ && Boolean(this)))
               {
                  initFilter(param2,new GlowFilter(16777215,0,0,0,Number(param2.strength) || 1,int(param2.quality) || 2,param2.inner,param2.knockout),_propNames);
                  addr004c:
               }
            }
            return true;
         }
         §§goto(addr004c);
      }
   }
}

