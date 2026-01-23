package net.bigpoint.as3toolbox.pathwalkmanager.manager
{
   import com.greensock.TimelineLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.events.PathEvent;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalkerSetter;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.FriendlyWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   
   public class WalkManager
   {
      
      private var _tweenDictionary:Dictionary;
      
      private var _direction:Point;
      
      private var _substract:Point;
      
      private var _started:Boolean;
      
      public function WalkManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_)
            {
               this._tweenDictionary = new Dictionary(true);
               if(_loc2_)
               {
                  addr0049:
                  this._direction = new Point(0,0);
                  if(!(_loc1_ && _loc1_))
                  {
                     this._substract = new Point(0,0);
                  }
               }
               return;
            }
         }
         §§goto(addr0049);
      }
      
      public function startWalk() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:TimelineLite = null;
         var _loc3_:SimpleWalker = null;
         if(_loc7_ || _loc2_)
         {
            this._started = true;
         }
         var _loc2_:Number = PathWalkManager.instance.terrain.tileSize;
         for each(_loc3_ in PathWalkManager.instance.walkerContainer.walkers)
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               this.runPath(_loc3_);
            }
         }
      }
      
      private function handlePathComplete(param1:IWalkerSetter) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            param1.pathComplete();
            if(!(_loc4_ && Boolean(this)))
            {
               this.destructor(_loc2_,param1);
            }
         }
      }
      
      private function handleCellChanged(param1:SimpleWalker, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!(_loc6_ && Boolean(param3)))
         {
            §§push(param1.currentCell);
            if(!(_loc6_ && Boolean(param1)))
            {
               §§push(param2);
               if(!(_loc6_ && Boolean(this)))
               {
                  §§pop().x = §§pop();
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     addr0059:
                     param1.currentCell.y = param3;
                     addr0058:
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        §§push(param1.nextCell);
                        if(_loc7_ || Boolean(this))
                        {
                           §§push(param4);
                           if(_loc7_ || Boolean(this))
                           {
                              §§pop().x = §§pop();
                              if(!_loc6_)
                              {
                                 addr0099:
                                 param1.nextCell.y = param5;
                                 addr0097:
                                 if(_loc7_)
                                 {
                                    addr00a1:
                                    this._direction.x = param4;
                                    if(_loc7_ || Boolean(param1))
                                    {
                                       this._direction.y = param5;
                                       if(_loc7_ || Boolean(param2))
                                       {
                                          this._substract.x = param2;
                                          if(!(_loc6_ && Boolean(param3)))
                                          {
                                             this._substract.y = param3;
                                             if(_loc7_ || Boolean(param2))
                                             {
                                                addr0106:
                                                this._direction = this._direction.subtract(this._substract);
                                                if(_loc7_)
                                                {
                                                   addr011d:
                                                   if(param1.currentDirection)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr012b:
                                                         §§push(this._direction.x == param1.currentDirection.x);
                                                         if(!(_loc6_ && Boolean(param3)))
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc7_ || Boolean(param3))
                                                            {
                                                               addr0155:
                                                               var _temp_15:* = §§pop();
                                                               §§push(_temp_15);
                                                               if(!_temp_15)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc7_ || Boolean(this))
                                                                     {
                                                                        addr018b:
                                                                        addr016f:
                                                                        §§push(this._direction.y == param1.currentDirection.y);
                                                                        if(_loc7_ || Boolean(param3))
                                                                        {
                                                                           addr018a:
                                                                           §§push(!§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc6_ && Boolean(param1)))
                                                                           {
                                                                              §§goto(addr01a9);
                                                                           }
                                                                        }
                                                                        §§goto(addr01d1);
                                                                     }
                                                                     addr01a9:
                                                                     param1.currentDirection = this._direction;
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr01d1:
                                                                        param1.cellChanged();
                                                                     }
                                                                     §§goto(addr01d6);
                                                                  }
                                                               }
                                                               §§goto(addr018b);
                                                            }
                                                            §§goto(addr018a);
                                                         }
                                                         §§goto(addr0155);
                                                      }
                                                      §§goto(addr016f);
                                                   }
                                                   else
                                                   {
                                                      param1.currentDirection = this._direction;
                                                      if(_loc7_ || Boolean(param1))
                                                      {
                                                         §§goto(addr01d1);
                                                      }
                                                   }
                                                   §§goto(addr01d6);
                                                }
                                                §§goto(addr012b);
                                             }
                                             §§goto(addr01d1);
                                          }
                                          §§goto(addr01d6);
                                       }
                                       §§goto(addr0106);
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr01d1);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr016f);
                  }
                  §§goto(addr01d6);
               }
               §§goto(addr0059);
            }
            §§goto(addr0058);
         }
         addr01d6:
      }
      
      public function stopWalk() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Object = null;
         if(!_loc4_)
         {
            this._started = false;
         }
         var _loc2_:int = 0;
         for(_loc1_ in this._tweenDictionary)
         {
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               this.stopWalker(_loc1_ as IWalker);
            }
         }
      }
      
      public function stopWalker(param1:IWalker) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         if(_loc3_)
         {
            this.destructor(_loc2_,param1);
         }
      }
      
      public function pauseWalker(param1:IWalker) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.pause();
            if(_loc4_)
            {
               param1.pausePath();
            }
         }
      }
      
      public function resumeWalker(param1:IWalker) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:TimelineLite = this._tweenDictionary[param1];
         if(_loc3_)
         {
            _loc2_.resume();
            if(_loc3_ || Boolean(this))
            {
               param1.resumePath();
            }
         }
      }
      
      public function get tweenDictionary() : Dictionary
      {
         return this._tweenDictionary;
      }
      
      public function get started() : Boolean
      {
         return this._started;
      }
      
      private function destructor(param1:TimelineLite, param2:IWalker) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            §§push(Boolean(param1));
            if(!(_loc4_ && _loc3_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(Boolean(param2));
                        if(!_loc4_)
                        {
                           §§goto(addr0053);
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00ed);
               }
            }
            addr0053:
            if(§§pop())
            {
               if(_loc3_)
               {
                  param2.removeEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused);
                  if(_loc3_ || Boolean(param2))
                  {
                     param2.removeEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed);
                     if(_loc3_ || Boolean(param1))
                     {
                        param1.killTweensOf(param2);
                        if(!_loc4_)
                        {
                           addr00af:
                           TweenMax.killTweensOf(param2);
                           if(_loc3_ || Boolean(param1))
                           {
                              this._tweenDictionary[param2] = null;
                              addr00c3:
                              if(_loc3_ || _loc3_)
                              {
                                 addr00ed:
                                 delete this._tweenDictionary[param2];
                                 addr00e5:
                                 if(!_loc4_)
                                 {
                                    addr00f4:
                                    param1.kill();
                                 }
                                 §§goto(addr00f9);
                              }
                              §§goto(addr00f4);
                           }
                           §§goto(addr00f9);
                        }
                        §§goto(addr00c3);
                     }
                     addr00f9:
                     param1 = null;
                     §§goto(addr00fe);
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr00e5);
            }
            addr00fe:
            return;
         }
         §§goto(addr00f4);
      }
      
      public function runPath(param1:IWalker) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:TimelineLite = null;
         if(_loc6_)
         {
            if(!param1.path)
            {
               if(_loc6_ || Boolean(_loc2_))
               {
                  return;
               }
            }
            else if(param1.path.length <= 1)
            {
               if(!(_loc5_ && Boolean(_loc2_)))
               {
                  return;
               }
            }
         }
         var _loc3_:Number = PathWalkManager.instance.terrain.tileSize;
         _loc2_ = new TimelineLite({
            "onComplete":this.handlePathComplete,
            "onCompleteParams":[param1],
            "roundProps":true
         });
         §§push(_loc3_);
         if(!_loc5_)
         {
            §§push(§§pop() / param1.speed);
            if(_loc6_ || Boolean(param1))
            {
               addr00a1:
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            while(true)
            {
               if(!(param1.path.length - 1))
               {
                  if(_loc6_ || Boolean(this))
                  {
                     param1.path.shift();
                     if(_loc6_)
                     {
                        break;
                     }
                     addr0165:
                     _loc2_.play();
                     if(_loc6_)
                     {
                        if(param1.paused)
                        {
                           if(!(_loc5_ && Boolean(this)))
                           {
                              addr0187:
                              _loc2_.pause();
                           }
                        }
                        §§goto(addr018c);
                     }
                  }
               }
               else
               {
                  _loc2_.append(this.getSingleTileAnimation(param1,_loc4_,_loc3_));
                  if(_loc5_ && Boolean(_loc3_))
                  {
                     break;
                  }
                  param1.path.shift();
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     continue;
                  }
               }
               §§goto(addr0187);
            }
            param1.addEventListener(PathEvent.PATH_PAUSED,this.handlePathPaused);
            if(!(_loc5_ && Boolean(this)))
            {
               param1.addEventListener(PathEvent.PATH_RESUMED,this.handlePathResumed);
               if(_loc6_ || Boolean(_loc3_))
               {
                  addr0156:
                  this._tweenDictionary[param1] = _loc2_;
                  if(_loc6_)
                  {
                     §§goto(addr0165);
                  }
                  §§goto(addr0187);
               }
               addr018c:
               return;
            }
            §§goto(addr0156);
         }
         §§goto(addr00a1);
      }
      
      private function handlePathPaused(param1:PathEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:TimelineLite = this._tweenDictionary[param1.target];
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.pause();
         }
      }
      
      private function handlePathResumed(param1:PathEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:TimelineLite = this._tweenDictionary[param1.target];
         if(_loc4_ || _loc3_)
         {
            _loc2_.resume();
         }
      }
      
      private function getSingleTileAnimation(param1:IWalker, param2:Number, param3:int) : TweenMax
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:Object = {
            "x":param1.path[0].x * param3,
            "y":param1.path[0].y * param3,
            "ease":Linear.easeNone
         };
         var _loc5_:Object = {
            "x":param1.path[1].x * param3,
            "y":param1.path[1].y * param3,
            "ease":Linear.easeNone,
            "onStart":this.handleCellChanged,
            "onStartParams":[param1,param1.path[0].x,param1.path[0].y,param1.path[1].x,param1.path[1].y]
         };
         if(!(_loc7_ && Boolean(this)))
         {
            if(param1 is FriendlyWalker)
            {
               if(_loc6_)
               {
                  addr00e1:
                  _loc5_.onUpdate = (param1 as FriendlyWalker).cellUpdate;
               }
            }
            return TweenMax.fromTo(param1,param2,_loc4_,_loc5_);
         }
         §§goto(addr00e1);
      }
   }
}

