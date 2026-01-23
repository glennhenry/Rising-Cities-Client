package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   
   public class FramePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         API = 1;
      }
      
      protected var _target:MovieClip;
      
      public var frame:int;
      
      public function FramePlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_)
            {
               §§goto(addr0030);
            }
            §§goto(addr004d);
         }
         addr0030:
         this.propName = "frame";
         if(_loc2_)
         {
            this.overwriteProps = ["frame","frameLabel"];
            if(!_loc1_)
            {
               addr004d:
               this.round = true;
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            §§push(param1 is MovieClip);
            if(!(_loc4_ && param2))
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        addr0056:
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(isNaN(param2));
                           if(!_loc4_)
                           {
                              addr006c:
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(false);
                                    if(_loc5_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr00ba:
                                    addTween(this,"frame",this.frame,param2,"frame");
                                    addr00cd:
                                    §§push(true);
                                 }
                                 §§goto(addr00ce);
                              }
                              else
                              {
                                 _target = param1 as MovieClip;
                                 if(!_loc4_)
                                 {
                                    this.frame = _target.currentFrame;
                                    if(_loc5_ || Boolean(param3))
                                    {
                                       §§goto(addr00ba);
                                    }
                                 }
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr00ba);
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0056);
            }
            addr00ce:
            return §§pop();
         }
         §§goto(addr00ba);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            updateTweens(param1);
            if(_loc2_)
            {
               _target.gotoAndStop(this.frame);
            }
         }
      }
   }
}

