package com.greensock.plugins
{
   import com.greensock.*;
   
   public class AutoAlphaPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || AutoAlphaPlugin)
      {
         API = 1;
      }
      
      protected var _target:Object;
      
      protected var _ignoreVisible:Boolean;
      
      public function AutoAlphaPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               §§goto(addr0037);
            }
            §§goto(addr004b);
         }
         addr0037:
         this.propName = "autoAlpha";
         if(_loc1_ || Boolean(this))
         {
            addr004b:
            this.overwriteProps = ["alpha","visible"];
         }
      }
      
      override public function killProps(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.killProps(param1);
            if(_loc2_)
            {
               _ignoreVisible = Boolean("visible" in param1);
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            _target = param1;
            if(!(_loc4_ && Boolean(param1)))
            {
               addr003b:
               addTween(param1,"alpha",param1.alpha,param2,"alpha");
            }
            return true;
         }
         §§goto(addr003b);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            updateTweens(param1);
            if(_loc2_)
            {
               §§goto(addr003a);
            }
            §§goto(addr0046);
         }
         addr003a:
         if(!_ignoreVisible)
         {
            if(_loc2_)
            {
               addr0046:
               _target.visible = Boolean(_target.alpha != 0);
            }
         }
      }
   }
}

