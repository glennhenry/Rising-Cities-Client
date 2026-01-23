package com.greensock.plugins
{
   import com.greensock.*;
   import com.greensock.core.*;
   import flash.display.*;
   import flash.geom.ColorTransform;
   import flash.geom.Transform;
   
   public class TintPlugin extends TweenPlugin
   {
      
      protected static var _props:Array;
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         API = 1;
         if(!(_loc1_ && _loc1_))
         {
            _props = ["redMultiplier","greenMultiplier","blueMultiplier","alphaMultiplier","redOffset","greenOffset","blueOffset","alphaOffset"];
         }
      }
      
      protected var _transform:Transform;
      
      public function TintPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               this.propName = "tint";
               if(_loc1_)
               {
                  addr0043:
                  this.overwriteProps = ["tint"];
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      public function init(param1:ColorTransform, param2:ColorTransform) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:String = null;
         var _loc3_:* = int(_props.length);
         var _loc5_:int = int(_tweens.length);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(_loc8_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            if(!§§pop())
            {
               break;
            }
            _loc4_ = _props[_loc3_];
            if(!_loc7_)
            {
               if(param1[_loc4_] != param2[_loc4_])
               {
                  if(_loc7_)
                  {
                     break;
                  }
                  var _loc6_:*;
                  _tweens[_loc6_ = _loc5_++] = new PropTween(param1,_loc4_,param1[_loc4_],param2[_loc4_] - param1[_loc4_],"tint",false);
                  if(!_loc8_)
                  {
                     break;
                  }
               }
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            §§push(param1 is DisplayObject);
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(!_loc7_)
                  {
                     §§goto(addr002e);
                  }
               }
               addr002f:
               var _loc4_:ColorTransform = new ColorTransform();
               if(_loc6_)
               {
                  §§push(param2 == null);
                  if(_loc6_ || param2)
                  {
                     §§push(!§§pop());
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        addr0061:
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(_loc6_)
                           {
                              addr006c:
                              §§pop();
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 addr00a1:
                                 §§push(param3.vars.removeTint == true);
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    addr00a0:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       addr00b3:
                                       _loc4_.color = uint(param2);
                                       if(_loc6_)
                                       {
                                          addr00c4:
                                          _transform = DisplayObject(param1).transform;
                                       }
                                    }
                                    var _loc5_:ColorTransform = _transform.colorTransform;
                                    if(!(_loc7_ && Boolean(param3)))
                                    {
                                       _loc4_.alphaMultiplier = _loc5_.alphaMultiplier;
                                       if(_loc6_)
                                       {
                                          _loc4_.alphaOffset = _loc5_.alphaOffset;
                                          if(_loc6_)
                                          {
                                             addr011d:
                                             init(_loc5_,_loc4_);
                                          }
                                          return true;
                                       }
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr0061);
               }
               §§goto(addr00b3);
            }
            addr002e:
            return false;
         }
         §§goto(addr002f);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ColorTransform = null;
         var _loc3_:PropTween = null;
         var _loc4_:* = 0;
         if(_loc5_ || Boolean(this))
         {
            if(_transform)
            {
               addr0038:
               _loc2_ = _transform.colorTransform;
               if(_loc5_)
               {
                  _loc4_ = int(_tweens.length);
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc5_ || Boolean(this))
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc6_ && Boolean(this)))
                     {
                        addr00a6:
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr00cf:
                              _loc4_ = §§pop();
                              addr00d1:
                              §§push(-1);
                           }
                           if(§§pop() <= §§pop())
                           {
                              break;
                           }
                           _loc3_ = _tweens[_loc4_];
                           if(!_loc6_)
                           {
                              _loc2_[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
                           }
                           continue;
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr00a6);
               }
               if(_loc5_ || Boolean(this))
               {
                  _transform.colorTransform = _loc2_;
               }
            }
            return;
         }
         §§goto(addr0038);
      }
   }
}

