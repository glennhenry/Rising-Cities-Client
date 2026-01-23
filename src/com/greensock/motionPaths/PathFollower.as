package com.greensock.motionPaths
{
   public class PathFollower
   {
      
      public var path:MotionPath;
      
      public var cachedProgress:Number;
      
      public var target:Object;
      
      public var cachedRawProgress:Number;
      
      public var cachedNext:PathFollower;
      
      public var autoRotate:Boolean;
      
      public var rotationOffset:Number;
      
      public var cachedPrev:PathFollower;
      
      public function PathFollower(param1:Object, param2:Boolean = false, param3:Number = 0)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            super();
            if(!_loc5_)
            {
               this.target = param1;
               if(!_loc5_)
               {
                  addr003c:
                  this.autoRotate = param2;
                  if(!_loc5_)
                  {
                     §§goto(addr0047);
                  }
                  §§goto(addr0052);
               }
               addr0047:
               this.rotationOffset = param3;
               if(_loc6_)
               {
                  addr0052:
                  this.cachedProgress = this.cachedRawProgress = 0;
               }
               return;
            }
            §§goto(addr0052);
         }
         §§goto(addr003c);
      }
      
      public function set progress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               §§push(1);
               if(!_loc2_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc2_)
                     {
                        this.cachedRawProgress = param1;
                        if(!_loc2_)
                        {
                           §§push(this);
                           §§push(param1);
                           if(_loc3_ || Boolean(param1))
                           {
                              §§push(§§pop() - int(param1));
                           }
                           §§pop().cachedProgress = §§pop();
                           if(_loc3_)
                           {
                              §§push(this.cachedProgress);
                              if(!_loc2_)
                              {
                                 §§push(0);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          this.cachedProgress = 1;
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr00bf:
                                          §§push(this);
                                          §§push(param1);
                                          if(!(_loc2_ && Boolean(param1)))
                                          {
                                             §§push(§§pop() - (int(param1) - 1));
                                          }
                                          §§pop().cachedProgress = §§pop();
                                          if(_loc2_)
                                          {
                                             addr00f6:
                                             this.cachedProgress = param1;
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr0115:
                                                §§push(this.path);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         addr0133:
                                                         this.path.renderObjectAt(this.target,this.cachedProgress,this.autoRotate,this.rotationOffset);
                                                         addr012f:
                                                      }
                                                   }
                                                   §§goto(addr0147);
                                                }
                                                §§goto(addr0133);
                                             }
                                             §§goto(addr0147);
                                          }
                                       }
                                    }
                                    §§goto(addr0115);
                                 }
                                 else
                                 {
                                    addr00a4:
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          this.cachedRawProgress = param1;
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr00bf);
                                          }
                                          §§goto(addr0147);
                                       }
                                       §§goto(addr012f);
                                    }
                                    else
                                    {
                                       this.cachedRawProgress = int(this.cachedRawProgress) + param1;
                                       if(_loc3_)
                                       {
                                          §§goto(addr00f6);
                                       }
                                    }
                                 }
                                 §§goto(addr0147);
                              }
                              else
                              {
                                 addr00a2:
                                 §§push(0);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr0147);
                     }
                     §§goto(addr0115);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00a4);
            }
            §§goto(addr00a2);
         }
         addr0147:
      }
      
      public function set rawProgress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.progress = param1;
         }
      }
      
      public function get rawProgress() : Number
      {
         return this.cachedRawProgress;
      }
      
      public function get progress() : Number
      {
         return this.cachedProgress;
      }
   }
}

