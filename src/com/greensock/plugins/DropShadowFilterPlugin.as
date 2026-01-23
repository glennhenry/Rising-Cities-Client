package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.DropShadowFilter;
   
   public class DropShadowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         API = 1;
         if(_loc1_ || DropShadowFilterPlugin)
         {
            addr0034:
            _propNames = ["distance","angle","color","alpha","blurX","blurY","strength","quality","inner","knockout","hideObject"];
         }
         return;
      }
      §§goto(addr0034);
      
      public function DropShadowFilterPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addr0038:
               this.propName = "dropShadowFilter";
               if(_loc2_)
               {
                  this.overwriteProps = ["dropShadowFilter"];
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(this))
         {
            _target = param1;
            if(!_loc4_)
            {
               _type = DropShadowFilter;
               if(!_loc4_)
               {
                  initFilter(param2,new DropShadowFilter(0,45,0,0,0,0,1,int(param2.quality) || 2,param2.inner,param2.knockout,param2.hideObject),_propNames);
                  addr004b:
               }
               return true;
            }
         }
         §§goto(addr004b);
      }
   }
}

