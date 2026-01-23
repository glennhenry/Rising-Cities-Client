package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.debug.SMockProvider;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class TimerBarComponent extends Group
   {
      
      public static const EVENT_TIMER_UP:String = "EVENT_TIMER_UP";
      
      private static const TICK_INTERVAL:int = 1000;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         EVENT_TIMER_UP = "EVENT_TIMER_UP";
         if(_loc2_)
         {
            TICK_INTERVAL = 1000;
         }
      }
      
      private var _1322365109boostButton:DynamicPlusButton;
      
      private var _1340618197prefixIcon:BriskImageDynaLib;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _activeTimer:Boolean = true;
      
      private var _showBoostButton:Boolean;
      
      private var _showTimeInDays:Boolean;
      
      private var _data:TimerBarComponentVo;
      
      private var _intervalID:uint;
      
      private var _dirty:Boolean;
      
      public function TimerBarComponent()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.percentWidth = 100;
                  if(_loc1_ || Boolean(this))
                  {
                     this.mxmlContent = [this._TimerBarComponent_HGroup1_c()];
                     addr005b:
                     if(_loc1_)
                     {
                        this.addEventListener("creationComplete",this.___TimerBarComponent_Group1_creationComplete);
                        if(_loc1_ || Boolean(this))
                        {
                           this.addEventListener("removedFromStage",this.___TimerBarComponent_Group1_removedFromStage);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr005b);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0044);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0044:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      public function set data(param1:TimerBarComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(RandomUtilities.isUnEqual(this._data,param1))
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     this._dirty = true;
                     if(!_loc2_)
                     {
                        addr0064:
                        this.checkForRanUpTimer();
                        if(!_loc2_)
                        {
                           this.checkforIntervall();
                           if(!(_loc2_ && Boolean(param1)))
                           {
                              §§goto(addr0082);
                           }
                           §§goto(addr008c);
                        }
                     }
                     addr0082:
                     invalidateProperties();
                     if(!_loc2_)
                     {
                        addr008c:
                        this.updateBarProgress();
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0064);
               }
            }
            addr0092:
            return;
         }
         §§goto(addr0064);
      }
      
      private function checkForRanUpTimer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._data.timerRanOut)
            {
               if(_loc2_ || _loc1_)
               {
                  this.boostButton.enabled = false;
                  if(_loc2_ || _loc2_)
                  {
                     dispatchEvent(new Event(EVENT_TIMER_UP,true));
                  }
               }
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._dirty);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     this._dirty = false;
                     if(_loc2_ || _loc3_)
                     {
                        §§push(this.boostButton);
                        if(_loc2_ || _loc2_)
                        {
                           var _loc1_:*;
                           this.boostButton.includeInLayout = _loc1_ = this._showBoostButton;
                           §§push(_loc1_);
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().visible = §§pop();
                              if(_loc2_)
                              {
                                 §§push(this.boostButton);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(false);
                                    if(_loc2_)
                                    {
                                       §§pop().showPlus = §§pop();
                                       if(!_loc3_)
                                       {
                                          addr00a1:
                                          §§push(this.boostButton);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(this._data);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().userMayStart);
                                                if(!_loc3_)
                                                {
                                                   addr00c3:
                                                   §§push(§§pop());
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr00c9);
                                                   }
                                                   §§goto(addr00db);
                                                }
                                                addr00c9:
                                                var _temp_8:* = §§pop();
                                                §§push(_temp_8);
                                                if(_temp_8)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr00db:
                                                      §§pop();
                                                      addr00e0:
                                                      addr00dc:
                                                      §§push(this._data.timerRanOut);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                }
                                                §§pop().enabled = §§pop();
                                                if(!_loc3_)
                                                {
                                                   addr0108:
                                                   if(!this._activeTimer)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr0111:
                                                         this.progressBar.progress = 1;
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr0127:
                                                            this.setProgressLabel();
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr012c);
                                             }
                                             §§goto(addr00e0);
                                          }
                                          §§goto(addr00dc);
                                       }
                                       §§goto(addr012c);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr0127);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00dc);
                     }
                  }
                  §§goto(addr00a1);
               }
               addr012c:
               return;
            }
            §§goto(addr0108);
         }
         §§goto(addr0111);
      }
      
      private function setProgressLabel() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this._data);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this._showTimeInDays);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(this._activeTimer);
                              if(_loc3_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    var _temp_4:* = §§pop();
                                    §§push(_temp_4);
                                    §§push(_temp_4);
                                    if(_loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                §§push(this._data);
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                   §§push(§§pop().waitingForStart);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr00bd:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(LocaUtils);
                                                               §§push(this._data.cycleLength);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() / 1000);
                                                               }
                                                               §§push(§§pop().getDaysFromSeconds(§§pop()));
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     if(!(_loc4_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr0100:
                                                                        §§push(_loc1_);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc3_ || Boolean(_loc1_))
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(!(_loc4_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    §§push(LocaUtils);
                                                                                    §§push(this._data.cycleLength);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() / 1000);
                                                                                    }
                                                                                    §§push(§§pop().getExactDaysFromSecond(§§pop()));
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(this.progressBar);
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(LocaUtils);
                                                                                                                  §§push("rcl.misc.timeconventions");
                                                                                                                  §§push("rcl.misc.timeconventions.specificDays");
                                                                                                                  §§push(">");
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc1_);
                                                                                                                  }
                                                                                                                  §§push(§§pop().getString(§§pop(),§§pop(),null));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§pop().label = §§pop();
                                                                                                                     if(!(_loc3_ || Boolean(this)))
                                                                                                                     {
                                                                                                                        addr02a6:
                                                                                                                        §§push(LocaUtils);
                                                                                                                        §§push(this._data.targetTime);
                                                                                                                        if(_loc3_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() - this._data.currentTime);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 1000);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(§§pop().getExactDaysFromSecond(§§pop()));
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc3_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              addr02e5:
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr02ef:
                                                                                                                                 addr02f1:
                                                                                                                                 addr02ee:
                                                                                                                                 addr02ed:
                                                                                                                                 if(_loc1_ - _loc2_ < 0)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                    {
                                                                                                                                       addr0303:
                                                                                                                                       §§push(this.progressBar);
                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr0314:
                                                                                                                                          §§push(LocaUtils);
                                                                                                                                          §§push("rcl.misc.timeconventions");
                                                                                                                                          §§push("rcl.misc.timeconventions.specificDays");
                                                                                                                                          §§push(">");
                                                                                                                                          if(_loc3_ || Boolean(this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + _loc1_);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().getString(§§pop(),§§pop(),null));
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             addr0339:
                                                                                                                                             §§pop().label = §§pop();
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0457:
                                                                                                                                             §§pop().label = §§pop();
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0425:
                                                                                                                                          §§push(LocaUtils.getDuration(Math.max(0,this._data.cycleLength / 1000)));
                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0457);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0488:
                                                                                                                                             §§pop().label = §§pop();
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.progressBar);
                                                                                                                                    if(_loc3_ || Boolean(_loc1_))
                                                                                                                                    {
                                                                                                                                       addr0357:
                                                                                                                                       §§push(LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]));
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§pop().label = §§pop();
                                                                                                                                          if(_loc4_ && Boolean(_loc1_))
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr03af:
                                                                                                                                          §§pop().label = §§pop();
                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr0425);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr048b);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr041b:
                                                                                                                                 §§push(this.progressBar);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr0425);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0467:
                                                                                                                                    §§push(LocaUtils.getDuration(Math.max(0,(this._data.targetTime - this._data.currentTime) / 1000)));
                                                                                                                                 }
                                                                                                                                 §§goto(addr0488);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr02ef);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr023a:
                                                                                                                     §§pop().label = §§pop();
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr0403:
                                                                                                                        addr0407:
                                                                                                                        addr0411:
                                                                                                                        §§push(this._data.waitingForStart);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr0410:
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr041b);
                                                                                                                           }
                                                                                                                           §§goto(addr048b);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.progressBar);
                                                                                                                        }
                                                                                                                        §§goto(addr0467);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr048b);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0388:
                                                                                                                  §§push(LocaUtils.getDuration(Math.max(0,(this._data.targetTime - this._data.currentTime) / 1000)));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr03af);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr0457);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0457);
                                                                                                            }
                                                                                                            §§goto(addr048b);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.progressBar);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]));
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§pop().label = §§pop();
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr0339);
                                                                                                               }
                                                                                                               §§goto(addr048b);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr0314);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0314);
                                                                                                      }
                                                                                                      §§goto(addr02f1);
                                                                                                   }
                                                                                                   §§goto(addr02e5);
                                                                                                }
                                                                                                §§goto(addr02ee);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0285:
                                                                                                _loc1_ = §§pop();
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr0294:
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr029c:
                                                                                                      addr029a:
                                                                                                      if(§§pop() >= 2)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr02a6);
                                                                                                         }
                                                                                                         §§goto(addr048b);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(this.progressBar);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr0388);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr0467);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0467);
                                                                                                   }
                                                                                                   §§goto(addr02ed);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0303);
                                                                                          }
                                                                                          §§goto(addr0403);
                                                                                       }
                                                                                       §§goto(addr02e5);
                                                                                    }
                                                                                    §§goto(addr02ef);
                                                                                 }
                                                                                 §§goto(addr041b);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.progressBar);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(LocaUtils.getDuration(Math.max(0,this._data.cycleLength / 1000)));
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr023a);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr03af);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr0357);
                                                                                 }
                                                                                 §§goto(addr03af);
                                                                              }
                                                                           }
                                                                           §§goto(addr029c);
                                                                        }
                                                                        §§goto(addr02ed);
                                                                     }
                                                                     §§goto(addr0403);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr027f:
                                                                     §§push(§§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr0285);
                                                                     }
                                                                  }
                                                                  §§goto(addr029a);
                                                               }
                                                               §§goto(addr0285);
                                                            }
                                                            §§goto(addr048b);
                                                         }
                                                         else
                                                         {
                                                            §§push(LocaUtils);
                                                            §§push(this._data.targetTime);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() - this._data.currentTime);
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  addr026a:
                                                                  §§push(§§pop() / 1000);
                                                               }
                                                               §§push(§§pop().getDaysFromSeconds(§§pop()));
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  §§goto(addr027f);
                                                               }
                                                               §§goto(addr029a);
                                                            }
                                                            §§goto(addr026a);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr03f5:
                                                         §§pop();
                                                         if(_loc3_ || Boolean(_loc1_))
                                                         {
                                                            §§goto(addr0403);
                                                         }
                                                      }
                                                      §§goto(addr048b);
                                                   }
                                                   §§goto(addr00bd);
                                                }
                                                §§goto(addr0407);
                                             }
                                             §§goto(addr0294);
                                          }
                                          §§goto(addr03f5);
                                       }
                                       §§goto(addr00bd);
                                    }
                                    else
                                    {
                                       addr03e4:
                                       if(!§§pop())
                                       {
                                          if(_loc3_ || Boolean(_loc1_))
                                          {
                                             §§goto(addr03f5);
                                          }
                                          §§goto(addr0410);
                                       }
                                    }
                                    §§goto(addr0411);
                                 }
                                 §§goto(addr00bd);
                              }
                              else
                              {
                                 addr03d5:
                                 §§push(!§§pop());
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    var _temp_34:* = §§pop();
                                    §§goto(addr03e4);
                                    §§push(_temp_34);
                                    §§push(_temp_34);
                                 }
                              }
                              §§goto(addr03f5);
                           }
                           §§goto(addr0403);
                        }
                        else
                        {
                           §§push(this._activeTimer);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr03d5);
                           }
                        }
                        §§goto(addr0411);
                     }
                     §§goto(addr03d5);
                  }
               }
               addr048b:
               return;
            }
            §§goto(addr0407);
         }
         §§goto(addr0100);
      }
      
      private function checkforIntervall() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            clearInterval(this._intervalID);
            if(_loc1_)
            {
               §§push(this._data);
               if(_loc1_ || Boolean(this))
               {
                  §§push(§§pop() == null);
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§pop();
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr0078:
                                    §§push(this._activeTimer);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop());
                                       if(_loc1_)
                                       {
                                          addr0091:
                                          var _temp_7:* = §§pop();
                                          §§push(_temp_7);
                                          §§push(_temp_7);
                                          if(_loc1_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc1_)
                                                {
                                                   addr00a0:
                                                   §§pop();
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(this._data);
                                                      if(_loc1_ || Boolean(this))
                                                      {
                                                         §§push(§§pop().waitingForStart);
                                                         if(_loc1_)
                                                         {
                                                            addr00c7:
                                                            §§push(!§§pop());
                                                            if(_loc1_)
                                                            {
                                                               addr00cd:
                                                               var _temp_10:* = §§pop();
                                                               addr00ce:
                                                               §§push(_temp_10);
                                                               if(_temp_10)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     addr00d7:
                                                                     §§pop();
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        §§goto(addr00fa);
                                                                     }
                                                                     §§goto(addr0135);
                                                                  }
                                                               }
                                                            }
                                                            addr00fa:
                                                            §§goto(addr00e9);
                                                         }
                                                         §§goto(addr00d7);
                                                      }
                                                      addr00e9:
                                                      §§goto(addr00e5);
                                                   }
                                                   §§goto(addr0115);
                                                }
                                                §§goto(addr00c7);
                                             }
                                             §§goto(addr00cd);
                                          }
                                          §§goto(addr00ce);
                                       }
                                       §§goto(addr00fa);
                                    }
                                    §§goto(addr00f9);
                                 }
                                 addr00e5:
                                 §§push(this._data.timerRanOut);
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr00f9:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr0115:
                                       this._intervalID = setInterval(this.handleTick,TICK_INTERVAL);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          addr0135:
                                          this.handleTick();
                                       }
                                       §§goto(addr013b);
                                    }
                                    §§goto(addr0135);
                                 }
                                 addr013b:
                                 return;
                              }
                              §§goto(addr00a0);
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr00e9);
            }
            §§goto(addr0078);
         }
         §§goto(addr0135);
      }
      
      private function handleTick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._data);
            if(_loc1_ || _loc2_)
            {
               §§push(this._data.currentTime);
               if(_loc1_)
               {
                  §§push(§§pop() + 1000);
               }
               §§pop().currentTime = §§pop();
               if(!_loc2_)
               {
                  this._dirty = true;
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0068:
                     addr0064:
                     if(this._data.timerRanOut)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           invalidateProperties();
                           if(_loc1_)
                           {
                              addr0086:
                              this.checkForRanUpTimer();
                              if(_loc2_)
                              {
                              }
                           }
                        }
                     }
                     else
                     {
                        this.updateBarProgress();
                     }
                  }
                  return;
               }
               §§goto(addr0086);
            }
            §§goto(addr0068);
         }
         §§goto(addr0064);
      }
      
      private function updateBarProgress() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.setProgressLabel();
            if(_loc2_)
            {
               if(this._data.waitingForStart)
               {
                  if(_loc2_)
                  {
                     §§push(this.progressBar);
                     if(!_loc1_)
                     {
                        §§pop().progress = 0;
                        if(_loc2_ || _loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr005d:
                        §§push(this._data.currentTime);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this._data);
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(§§pop().startTime);
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc1_)
                                 {
                                    addr00be:
                                    addr00a6:
                                    addr00a2:
                                    §§push(this._data.targetTime);
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       §§push(§§pop() - this._data.startTime);
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§pop().progress = §§pop();
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00a2);
                     }
                  }
                  §§goto(addr00c2);
               }
               else
               {
                  §§push(this.progressBar);
               }
               §§goto(addr005d);
            }
         }
         addr00c2:
      }
      
      public function set activeTimer(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._activeTimer = param1;
            if(!(_loc2_ && param1))
            {
               this.checkforIntervall();
            }
         }
      }
      
      public function set showTimeInDays(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._showTimeInDays = param1;
         }
      }
      
      public function set showBoostButton(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            this._showBoostButton = param1;
            if(!_loc3_)
            {
               addr0033:
               this.boostButton.visible = this.boostButton.includeInLayout = param1;
            }
            return;
         }
         §§goto(addr0033);
      }
      
      public function set revertFlow(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.progressBar.revertProgress = param1;
         }
      }
      
      public function set iconBriskDynaVo(param1:BriskDynaVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.prefixIcon.briskDynaVo = param1;
         }
      }
      
      private function boostButton_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(SMockProvider.mockBoolean(true))
            {
            }
         }
      }
      
      public function get data() : TimerBarComponentVo
      {
         return this._data;
      }
      
      public function setDirty() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._dirty = true;
         }
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            clearInterval(this._intervalID);
         }
      }
      
      private function _TimerBarComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(this))
               {
                  addr0050:
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._TimerBarComponent_BriskImageDynaLib1_i(),this._TimerBarComponent_ProgressBarComponent1_i(),this._TimerBarComponent_DynamicPlusButton1_i()];
                     if(_loc2_)
                     {
                        addr008a:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0096:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr008a);
            }
            §§goto(addr0050);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _TimerBarComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "timer_clock";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.width = 25;
                  if(!_loc2_)
                  {
                     _loc1_.height = 25;
                     if(!_loc2_)
                     {
                        addr0069:
                        _loc1_.id = "prefixIcon";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00a5:
                                    this.prefixIcon = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00b7:
                                       BindingManager.executeBindings(this,"prefixIcon",this.prefixIcon);
                                    }
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00b7);
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr00a5);
               }
            }
            addr00c4:
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _TimerBarComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         if(_loc2_)
         {
            _loc1_.id = "progressBar";
            if(_loc2_)
            {
               addr002c:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        addr0063:
                        this.progressBar = _loc1_;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           BindingManager.executeBindings(this,"progressBar",this.progressBar);
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0063);
            }
            addr0082:
            return _loc1_;
         }
         §§goto(addr002c);
      }
      
      private function _TimerBarComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(!_loc3_)
         {
            _loc1_.width = 40;
            if(_loc2_)
            {
               _loc1_.iconImageName = "dd_button_icon";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.iconLibName = "gui_resources_icons";
                  if(!_loc3_)
                  {
                     _loc1_.enabled = false;
                     if(_loc2_ || _loc2_)
                     {
                        addr006b:
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(!_loc3_)
                        {
                           addr007a:
                           _loc1_.addEventListener("click",this.__boostButton_click);
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.id = "boostButton";
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00a5:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00ce:
                                          this.boostButton = _loc1_;
                                          if(!_loc3_)
                                          {
                                             BindingManager.executeBindings(this,"boostButton",this.boostButton);
                                          }
                                       }
                                    }
                                    §§goto(addr00e5);
                                 }
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr00a5);
                        }
                     }
                  }
                  addr00e5:
                  return _loc1_;
               }
               §§goto(addr007a);
            }
         }
         §§goto(addr006b);
      }
      
      public function __boostButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.boostButton_clickHandler(param1);
         }
      }
      
      public function ___TimerBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___TimerBarComponent_Group1_removedFromStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.removedFromStageHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boostButton() : DynamicPlusButton
      {
         return this._1322365109boostButton;
      }
      
      public function set boostButton(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1322365109boostButton;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1322365109boostButton = param1;
                  addr0047:
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boostButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixIcon() : BriskImageDynaLib
      {
         return this._1340618197prefixIcon;
      }
      
      public function set prefixIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1340618197prefixIcon;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1340618197prefixIcon = param1;
                  if(_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1131509414progressBar = param1;
                  addr0038:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
   }
}

