package com.greensock.plugins
{
   import com.greensock.*;
   import flash.display.*;
   
   public class FrameLabelPlugin extends FramePlugin
   {
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         API = 1;
      }
      
      public function FrameLabelPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr0037:
               this.propName = "frameLabel";
            }
            return;
         }
         §§goto(addr0037);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(!(_loc8_ && param2))
         {
            §§push(!param3.target);
            if(!(_loc8_ && Boolean(this)))
            {
               §§push(§§pop() is MovieClip);
               if(_loc9_ || Boolean(param3))
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§goto(addr0057);
                     }
                  }
                  else
                  {
                     _target = param1 as MovieClip;
                     if(!_loc8_)
                     {
                        addr0077:
                        this.frame = _target.currentFrame;
                     }
                  }
                  var _loc4_:Array = _target.currentLabels;
                  var _loc5_:String = param2;
                  var _loc6_:* = _target.currentFrame;
                  var _loc7_:* = int(_loc4_.length);
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           §§push(_temp_5);
                           if(!_loc8_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc7_ = §§pop();
                        }
                        addr00f1:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc9_ || Boolean(this))
                           {
                              break;
                           }
                           addr0132:
                           addTween(this,"frame",this.frame,_loc6_,"frame");
                        }
                        else
                        {
                           if(_loc4_[_loc7_].name != _loc5_)
                           {
                              continue loop0;
                           }
                           if(!_loc9_)
                           {
                              break;
                           }
                           §§push(int(_loc4_[_loc7_].frame));
                           if(_loc9_)
                           {
                              _loc6_ = §§pop();
                              if(_loc9_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr00f1);
                           }
                        }
                        §§goto(addr0146);
                     }
                     break;
                  }
                  if(this.frame != _loc6_)
                  {
                     if(_loc9_ || Boolean(this))
                     {
                        §§goto(addr0132);
                     }
                  }
                  addr0146:
                  return true;
               }
            }
            addr0057:
            return false;
         }
         §§goto(addr0077);
      }
   }
}

