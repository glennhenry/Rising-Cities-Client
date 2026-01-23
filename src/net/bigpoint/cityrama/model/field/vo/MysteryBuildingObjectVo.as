package net.bigpoint.cityrama.model.field.vo
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MysteryBuildingPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class MysteryBuildingObjectVo extends SpecialFieldObjectVo
   {
      
      public static const EVENT_CONSTRUCTION_TERM_CHANGED:String = "EVENT_CONSTRUCTION_TERM_CHANGED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         EVENT_CONSTRUCTION_TERM_CHANGED = "EVENT_CONSTRUCTION_TERM_CHANGED";
      }
      
      private var _constructionTerm:uint = 1;
      
      private var _constructionTimer:Timer;
      
      private var _constructionTimeLeft:Number;
      
      private var _unwrapProgressIsRunning:Boolean = false;
      
      private var _totalConstructionTime:Number;
      
      public function MysteryBuildingObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super(param1);
            if(!_loc3_)
            {
               this._constructionTimer = new Timer(1000);
            }
         }
      }
      
      public function get currentMysteryConstructionPhase() : PhaseDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(!_loc5_)
         {
            if(_buildingDTO)
            {
               addr0026:
               for each(_loc1_ in _buildingDTO.activePhases)
               {
                  if(!_loc5_)
                  {
                     if(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
                     {
                        if(!(_loc5_ && Boolean(this)))
                        {
                           return _loc1_;
                        }
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr0026);
      }
      
      public function startConstructionTime() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this.currentMysteryConstructionPhase != null)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.clearTimer();
                  if(!(_loc1_ && _loc2_))
                  {
                     this._constructionTerm = 0;
                     if(_loc2_)
                     {
                        this._totalConstructionTime = Math.floor(this.currentMysteryConstructionPhase.config.durationConfig.duration / 1000);
                        if(!_loc1_)
                        {
                           this._constructionTimeLeft = this.currentMysteryConstructionPhase.timeLeft;
                           if(_loc2_)
                           {
                              addr0083:
                              this._constructionTimeLeft = Math.floor(this._constructionTimeLeft / 1000);
                              if(!_loc1_)
                              {
                                 addr009a:
                                 this.checkConstructionTerm();
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00b6:
                                    this._constructionTimer.start();
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr00cb:
                                       this._constructionTimer.addEventListener(TimerEvent.TIMER,this.handleConstructionInterval);
                                    }
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00dd);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr00b6);
                  }
               }
               §§goto(addr009a);
            }
            addr00dd:
            return;
         }
         §§goto(addr009a);
      }
      
      private function clearTimer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._constructionTimer.stop();
            if(!(_loc1_ && Boolean(this)))
            {
               this._constructionTimer.reset();
               if(!(_loc1_ && _loc1_))
               {
                  addr005c:
                  this._constructionTimer.removeEventListener(TimerEvent.TIMER,this.handleConstructionInterval);
               }
            }
            return;
         }
         §§goto(addr005c);
      }
      
      private function handleConstructionInterval(param1:TimerEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this);
            §§push(this._constructionTimeLeft);
            if(!_loc2_)
            {
               §§push(§§pop() - 1);
            }
            §§pop()._constructionTimeLeft = §§pop();
            if(_loc3_)
            {
               addr002d:
               this.checkConstructionTerm();
            }
            return;
         }
         §§goto(addr002d);
      }
      
      public function get constructionTerm() : uint
      {
         return this._constructionTerm;
      }
      
      public function get mysteryResultFieldItemSize() : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MysteryBuildingPhaseDTO = this.currentMysteryConstructionPhase as MysteryBuildingPhaseDTO;
         if(_loc2_)
         {
            if(_loc1_ == null)
            {
               if(!_loc3_)
               {
                  §§goto(addr0030);
               }
            }
            return _loc1_.mysteryResultFieldItemSize;
         }
         addr0030:
         return 3;
      }
      
      private function checkConstructionTerm() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(this.constructionTerm);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.mysteryResultFieldItemSize);
         if(!(_loc5_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(this._constructionTimeLeft);
            if(!_loc5_)
            {
               §§push(§§pop() <= 1);
               if(_loc4_ || _loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc4_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(this.isHarvestReady);
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    addr0090:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          this._constructionTerm = _loc2_;
                                          if(_loc4_)
                                          {
                                             this.stopConstructionTime();
                                             if(_loc5_ && _loc1_)
                                             {
                                                addr00fd:
                                                addr0109:
                                                §§push(this.halfDone);
                                                if(_loc4_)
                                                {
                                                   addr0108:
                                                   §§push(§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   addr0138:
                                                   var _loc3_:* = _loc2_;
                                                   if(_loc4_)
                                                   {
                                                      §§push(1);
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(0);
                                                                  if(_loc5_ && _loc1_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr01bf:
                                                                  §§push(2);
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(2);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc5_ && Boolean(this))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr01bf);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr01bb:
                                                                           if(§§pop() === _loc3_)
                                                                           {
                                                                              §§goto(addr01bf);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(3);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr01d7);
                                                                  }
                                                                  §§goto(addr01bb);
                                                               }
                                                            }
                                                            §§goto(addr01d7);
                                                         }
                                                         §§goto(addr01bb);
                                                      }
                                                      addr01d7:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                         case 1:
                                                            this._constructionTerm = 1;
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            break;
                                                         case 2:
                                                            this._constructionTerm = 2;
                                                            if(_loc5_)
                                                            {
                                                            }
                                                      }
                                                      §§goto(addr020b);
                                                   }
                                                   §§goto(addr01bf);
                                                }
                                                else
                                                {
                                                   this._constructionTerm = 1;
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr020b);
                                                   }
                                                }
                                                §§goto(addr0222);
                                             }
                                          }
                                          §§goto(addr020b);
                                       }
                                    }
                                    else
                                    {
                                       addr00c1:
                                       §§push(this._constructionTimeLeft);
                                       §§push(this._totalConstructionTime);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       §§push(§§pop() <= §§pop());
                                       if(!_loc5_)
                                       {
                                          var _temp_14:* = §§pop();
                                          addr00de:
                                          §§push(_temp_14);
                                          if(!_temp_14)
                                          {
                                             if(_loc4_)
                                             {
                                                addr00e8:
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr00fd);
                                                }
                                                §§goto(addr0138);
                                             }
                                          }
                                          §§goto(addr0109);
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr0138);
                                 }
                                 §§goto(addr0108);
                              }
                              §§goto(addr0090);
                           }
                           addr020b:
                           if(_loc1_ != this.constructionTerm)
                           {
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 addr0222:
                                 dispatchEvent(new Event(EVENT_CONSTRUCTION_TERM_CHANGED,true,true));
                              }
                           }
                           return;
                        }
                        §§goto(addr0108);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr00e8);
            }
            §§goto(addr00c1);
         }
         §§goto(addr0138);
      }
      
      private function get halfDone() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.currentMysteryConstructionPhase);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0036:
                     §§push(this.currentMysteryConstructionPhase.expirationTime);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§push(this.currentMysteryConstructionPhase.config.durationConfig.duration);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§§pop() / 2);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     if(§§pop() <= currentTimeStamp)
                     {
                        if(_loc2_)
                        {
                           addr0079:
                           §§push(true);
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0080:
                           return false;
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr0080);
            }
            §§goto(addr0036);
         }
         §§goto(addr0079);
      }
      
      public function stopConstructionTime() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.clearTimer();
            if(_loc1_)
            {
               this._totalConstructionTime = 0;
               if(!_loc2_)
               {
                  addr003d:
                  this._constructionTimeLeft = 0;
               }
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function updateConstructionTime() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._constructionTimeLeft = this.currentMysteryConstructionPhase.timeLeft;
            if(_loc1_ || Boolean(this))
            {
               this._constructionTimeLeft = Math.floor(this._constructionTimeLeft / 1000);
               if(_loc1_ || Boolean(this))
               {
                  addr0056:
                  this.checkConstructionTerm();
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      public function get unwrapProgressIsRunning() : Boolean
      {
         return this._unwrapProgressIsRunning;
      }
      
      public function set unwrapProgressIsRunning(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._unwrapProgressIsRunning = param1;
         }
      }
      
      override public function get isHarvestReady() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(_loc4_)
         {
            if(_buildingDTO)
            {
               §§goto(addr0029);
            }
            return false;
         }
         addr0029:
         var _loc2_:int = 0;
         var _loc3_:* = _buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ && Boolean(this))
               {
                  continue;
               }
               §§push(Boolean(_loc1_));
               if(_loc5_ && Boolean(_loc1_))
               {
                  break;
               }
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc4_ || Boolean(_loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                           if(_loc4_)
                           {
                              addr00a4:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 addr00ae:
                                 §§push(_loc1_.timeLeft);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() == 0);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    addr00cd:
                                    var _temp_6:* = §§pop();
                                    addr00ce:
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    addr00d8:
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    addr00df:
                                    §§push(_loc1_.expirationTime);
                                 }
                                 §§push(§§pop() <= currentTimeStamp);
                                 break;
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00ce);
            }
         }
         return §§pop();
      }
   }
}

