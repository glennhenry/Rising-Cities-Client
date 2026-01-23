package net.bigpoint.as3toolbox.bitmapclip
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   internal class AnimationManager
   {
      
      private static var clipList:Vector.<BitmapClip>;
      
      private static var deltaTime:int = 0;
      
      private static var oldDeltaTime:int = -1;
      
      private static var stage:Stage;
      
      private static var enterFrameHandlerAdded:Boolean;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         deltaTime = 0;
         if(_loc2_ || AnimationManager)
         {
            addr003d:
            oldDeltaTime = -1;
         }
         return;
      }
      §§goto(addr003d);
      
      public function AnimationManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function initStage(param1:Stage) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(stage == null)
            {
               if(!(_loc3_ && AnimationManager))
               {
                  stage = param1;
               }
            }
         }
      }
      
      private static function handleEnterFrame(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:BitmapClip = null;
         var _loc2_:int = int(clipList.length - 1);
         if(_loc7_ || AnimationManager)
         {
            if(_loc2_ == -1)
            {
               if(!_loc6_)
               {
                  addr0040:
                  stage.removeEventListener(Event.ENTER_FRAME,handleEnterFrame);
                  if(_loc7_)
                  {
                     enterFrameHandlerAdded = false;
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        return;
                     }
                  }
               }
            }
            var _loc3_:uint = uint(getTimer());
            if(!_loc6_)
            {
               deltaTime = _loc3_ - oldDeltaTime;
               if(_loc7_)
               {
                  addr008b:
                  oldDeltaTime = _loc3_;
               }
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               while(_loc4_ > -1)
               {
                  _loc5_ = clipList[_loc4_];
                  §§push(_loc5_.remove);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc7_ || Boolean(param1))
                     {
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        §§push(_temp_6);
                        if(!(_loc6_ && AnimationManager))
                        {
                           if(!§§pop())
                           {
                              if(!(_loc6_ && AnimationManager))
                              {
                                 §§pop();
                                 if(!_loc6_)
                                 {
                                    §§push(_loc5_.parent == null);
                                    if(!_loc6_)
                                    {
                                       addr010c:
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             addr0116:
                                             clipList.splice(_loc4_,1);
                                             if(_loc7_)
                                             {
                                                §§push(_loc5_.parent == null);
                                                if(_loc7_)
                                                {
                                                   var _temp_9:* = §§pop();
                                                   addr0135:
                                                   §§push(_temp_9);
                                                   if(_temp_9)
                                                   {
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         addr0147:
                                                         §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr0162:
                                                            §§push(_loc5_._autoDeleteCache);
                                                            if(_loc7_ || Boolean(_loc3_))
                                                            {
                                                               addr0161:
                                                               §§push(§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_ || Boolean(_loc2_))
                                                               {
                                                                  addr0180:
                                                                  _loc5_.unregisterCacheID();
                                                                  if(_loc7_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr01a9:
                                                            §§push(_loc4_);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr0161);
                                                   }
                                                   §§goto(addr0162);
                                                }
                                                §§goto(addr0147);
                                             }
                                             §§goto(addr0180);
                                          }
                                       }
                                       else
                                       {
                                          _loc5_.update(deltaTime);
                                          if(!(_loc7_ || AnimationManager))
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr01a9);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr0116);
                              }
                              §§goto(addr0161);
                           }
                           §§goto(addr010c);
                        }
                        §§goto(addr0135);
                     }
                  }
                  §§goto(addr0162);
               }
               return;
            }
            §§goto(addr008b);
         }
         §§goto(addr0040);
      }
      
      internal static function addClip(param1:BitmapClip) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:BitmapClip = null;
         if(_loc5_)
         {
            if(clipList == null)
            {
               if(_loc5_ || Boolean(_loc2_))
               {
                  clipList = new Vector.<BitmapClip>();
               }
            }
         }
         var _loc3_:int = 0;
         var _loc4_:* = clipList;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || Boolean(_loc3_)))
               {
                  break;
               }
               if(_loc2_ == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            if(_loc5_)
            {
               clipList.push(param1);
            }
            return;
         }
      }
      
      internal static function addEnterFrameHandler() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && AnimationManager))
         {
            if(!enterFrameHandlerAdded)
            {
               if(!(_loc2_ && _loc2_))
               {
                  oldDeltaTime = getTimer();
                  if(!_loc2_)
                  {
                     stage.addEventListener(Event.ENTER_FRAME,handleEnterFrame);
                     if(_loc1_ || AnimationManager)
                     {
                        addr0073:
                        enterFrameHandlerAdded = true;
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr0073);
            }
         }
         addr007a:
      }
   }
}

