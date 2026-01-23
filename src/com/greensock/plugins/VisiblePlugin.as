package com.greensock.plugins
{
   import com.greensock.*;
   
   public class VisiblePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         API = 1;
      }
      
      protected var _target:Object;
      
      protected var _initVal:Boolean;
      
      protected var _visible:Boolean;
      
      protected var _tween:TweenLite;
      
      public function VisiblePlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               this.propName = "visible";
               if(!_loc2_)
               {
                  this.overwriteProps = ["visible"];
               }
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            _target = param1;
            if(_loc4_)
            {
               _tween = param3;
               if(_loc4_ || Boolean(this))
               {
                  _initVal = _target.visible;
                  if(_loc4_ || param2)
                  {
                     _visible = Boolean(param2);
                  }
               }
            }
         }
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(param1 == 1);
            if(_loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr002e);
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr005f);
            }
            addr002e:
            §§pop();
            if(_loc3_ || Boolean(param1))
            {
               addr003c:
               §§push(_tween);
               if(!_loc2_)
               {
                  §§push(§§pop().cachedDuration == _tween.cachedTime);
                  if(_loc3_)
                  {
                     addr005e:
                     var _temp_4:* = §§pop();
                     addr005f:
                     §§push(_temp_4);
                     if(!_temp_4)
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           §§pop();
                           if(_loc3_ || _loc2_)
                           {
                              addr0094:
                              addr008e:
                              if(_tween.cachedTime == 0)
                              {
                                 if(_loc3_)
                                 {
                                    _target.visible = _visible;
                                    if(_loc2_ && Boolean(param1))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 _target.visible = _initVal;
                              }
                           }
                           §§goto(addr00c0);
                        }
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr008e);
            }
            addr00c0:
            return;
         }
         §§goto(addr003c);
      }
   }
}

