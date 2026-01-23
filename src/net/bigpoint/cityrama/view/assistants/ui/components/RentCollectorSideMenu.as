package net.bigpoint.cityrama.view.assistants.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProgressBarMiniVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   
   public class RentCollectorSideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const SHOW_HIRE_INFO:String = "SHOW_HIRE_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const USE_COLLECTOR:String = "USE_COLLECTOR";
      
      public static const PLUS_CLICKED:String = "PLUS_CLICKED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         SHOW_INFO = "SHOW_INFO";
         if(_loc1_)
         {
            SHOW_HIRE_INFO = "SHOW_HIRE_INFO";
            if(!_loc2_)
            {
               HIDE_INFO = "HIDE_INFO";
               if(!_loc2_)
               {
                  USE_COLLECTOR = "USE_COLLECTOR";
                  if(!(_loc2_ && RentCollectorSideMenu))
                  {
                     addr005f:
                     PLUS_CLICKED = "PLUS_CLICKED";
                  }
               }
            }
         }
         return;
      }
      §§goto(addr005f);
      
      private var _738471190iconBase:BriskImageDynaLib;
      
      private var _1412649594iconGroup:Group;
      
      private var _1784090142menuContainer:Group;
      
      private var _398457948miniProgress:ProgressBarMini;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _402978835rentCollectorIcon:BriskImageDynaLib;
      
      private var _1397564793rentCollectorSparkleSprite:SpriteVisualElement;
      
      private var _1935734112saleIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RentCollectorSideMenuVo;
      
      private var _isDirty:Boolean;
      
      private var _saleTimer:Timer;
      
      private var _salePulseOver:Boolean;
      
      private var _pulsatingDone:Boolean;
      
      public function RentCollectorSideMenu()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr0037:
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  this.minWidth = 55;
                  if(!_loc2_)
                  {
                     addr0066:
                     this.minHeight = 53;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0079:
                        this.mxmlContent = [this._RentCollectorSideMenu_VGroup1_c(),this._RentCollectorSideMenu_Group3_i()];
                     }
                  }
                  return;
               }
               §§goto(addr0079);
            }
            §§goto(addr0066);
         }
         §§goto(addr0037);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0056:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ProgressBarMiniVo = null;
         if(!_loc4_)
         {
            super.commitProperties();
            if(_loc3_ || _loc2_)
            {
               §§push(this._isDirty);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_ || Boolean(this))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§pop();
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              §§push(this._data);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr007e);
                                 }
                                 §§goto(addr00ff);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr0260);
                        }
                        §§goto(addr00ff);
                     }
                  }
                  addr007e:
                  if(§§pop())
                  {
                     if(!(_loc4_ && Boolean(_loc1_)))
                     {
                        this._isDirty = false;
                        if(!_loc4_)
                        {
                           addr009b:
                           this.rentCollectorIcon.briskDynaVo = this._data.iconVo;
                           if(_loc3_)
                           {
                              addr00ae:
                              §§push(this.plusIcon);
                              §§push(this.plusIcon);
                              §§push(this._data.saleActive);
                              if(_loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().includeInLayout = §§pop().visible = §§pop();
                              if(!_loc4_)
                              {
                                 var _temp_10:* = this.saleIcon;
                                 var _loc2_:*;
                                 this.saleIcon.visible = _loc2_ = this._data.saleActive;
                                 _temp_10.includeInLayout = _loc2_;
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr00ff:
                                    addr00fc:
                                    if(this._data.rentCollectorRunning)
                                    {
                                       if(!_loc4_)
                                       {
                                          addr0109:
                                          §§push(this.iconBase);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§pop().briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base_noShadow");
                                             if(_loc3_)
                                             {
                                                addr012e:
                                                _loc1_ = new ProgressBarMiniVo();
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   _loc1_.currentTime = this._data.timerVo.currentTime;
                                                   if(!_loc4_)
                                                   {
                                                      _loc1_.endTime = this._data.timerVo.targetTime;
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         _loc1_.startTime = this._data.timerVo.startTime;
                                                         if(_loc3_)
                                                         {
                                                            §§push(this.miniProgress);
                                                            if(_loc3_ || Boolean(_loc1_))
                                                            {
                                                               §§pop().data = _loc1_;
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  var _temp_17:* = this.miniProgress;
                                                                  this.miniProgress.visible = _loc2_ = true;
                                                                  _temp_17.includeInLayout = _loc2_;
                                                                  addr01b0:
                                                                  if(_loc3_)
                                                                  {
                                                                     TweenMax.to(this.iconBase,0,{"glowFilter":{
                                                                        "color":15844410,
                                                                        "alpha":1,
                                                                        "blurX":20,
                                                                        "blurY":20,
                                                                        "strength":2,
                                                                        "quality":1
                                                                     }});
                                                                     if(!(_loc4_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr0260:
                                                                        §§push(this._data);
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop().saleActive);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 var _temp_21:* = §§pop();
                                                                                 §§push(_temp_21);
                                                                                 §§push(_temp_21);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr0298:
                                                                                          §§pop();
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             §§push(!this._saleTimer);
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                addr02b9:
                                                                                                var _temp_24:* = §§pop();
                                                                                                addr02ba:
                                                                                                §§push(_temp_24);
                                                                                                if(_temp_24)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr02ca:
                                                                                                         §§push(this._pulsatingDone);
                                                                                                         if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            addr02dd:
                                                                                                            §§push(!§§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr02e3:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                  {
                                                                                                                     this._saleTimer = new Timer(500,120);
                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        this._saleTimer.addEventListener(TimerEvent.TIMER,this.handleSaleTimer);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr0329:
                                                                                                                           this._saleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.handleSaleTimerComplete);
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr0349);
                                                                                                                           }
                                                                                                                           §§goto(addr0357);
                                                                                                                        }
                                                                                                                        addr0349:
                                                                                                                        this._saleTimer.start();
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr0357:
                                                                                                                           this._pulsatingDone = true;
                                                                                                                           if(!(_loc3_ || Boolean(this)))
                                                                                                                           {
                                                                                                                              addr03a1:
                                                                                                                              this.handleSaleTimerComplete();
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0393:
                                                                                                                           if(this._saleTimer)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§goto(addr03a1);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr03a6);
                                                                                                                  }
                                                                                                                  §§goto(addr0329);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0382:
                                                                                                                  addr037f:
                                                                                                                  if(!this._data.saleActive)
                                                                                                                  {
                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr0393);
                                                                                                                     }
                                                                                                                     §§goto(addr03a1);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr03a6);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0382);
                                                                                                      }
                                                                                                      §§goto(addr03a6);
                                                                                                   }
                                                                                                   §§goto(addr0382);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02e3);
                                                                                          }
                                                                                          §§goto(addr0329);
                                                                                       }
                                                                                       §§goto(addr0382);
                                                                                    }
                                                                                    §§goto(addr02b9);
                                                                                 }
                                                                                 §§goto(addr02ba);
                                                                              }
                                                                              §§goto(addr02dd);
                                                                           }
                                                                           §§goto(addr0298);
                                                                        }
                                                                        §§goto(addr037f);
                                                                     }
                                                                     §§goto(addr0357);
                                                                  }
                                                                  §§goto(addr0329);
                                                               }
                                                               §§goto(addr0393);
                                                            }
                                                            §§goto(addr01b0);
                                                         }
                                                         §§goto(addr0357);
                                                      }
                                                      §§goto(addr02ca);
                                                   }
                                                   §§goto(addr03a6);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr025b:
                                             §§pop().filters = [];
                                          }
                                          §§goto(addr0260);
                                       }
                                       §§goto(addr012e);
                                    }
                                    else
                                    {
                                       §§push(this.iconBase);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§pop().briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base");
                                          if(!_loc4_)
                                          {
                                             addr0238:
                                             var _temp_32:* = this.miniProgress;
                                             this.miniProgress.visible = _loc2_ = false;
                                             _temp_32.includeInLayout = _loc2_;
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr0257:
                                                §§goto(addr025b);
                                                §§push(this.iconBase);
                                             }
                                             §§goto(addr0260);
                                          }
                                          §§goto(addr0257);
                                       }
                                    }
                                    §§goto(addr025b);
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr0238);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr0238);
                     }
                     §§goto(addr009b);
                  }
                  addr03a6:
                  return;
               }
               §§goto(addr00ff);
            }
            §§goto(addr00ae);
         }
         §§goto(addr012e);
      }
      
      private function handleSaleTimerComplete(param1:TimerEvent = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(this._saleTimer)
            {
               if(_loc2_ || Boolean(this))
               {
                  this._saleTimer.removeEventListener(TimerEvent.TIMER,this.handleSaleTimer);
                  if(!_loc3_)
                  {
                     addr0063:
                     this._saleTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.handleSaleTimerComplete);
                     if(!_loc3_)
                     {
                        this._saleTimer = null;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0063);
      }
      
      private function handleSaleTimer(param1:TimerEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(this._salePulseOver)
            {
               if(_loc3_)
               {
                  §§push(this.saleIcon);
                  if(!_loc2_)
                  {
                     §§push("salebadge_mini_normal");
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop().dynaBmpSourceName = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           addr006c:
                           this._salePulseOver = false;
                           if(_loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        addr0082:
                        §§pop().dynaBmpSourceName = §§pop();
                        if(!_loc2_)
                        {
                           addr0089:
                           this._salePulseOver = true;
                        }
                     }
                     return;
                  }
                  addr007e:
                  §§push("salebadge_mini_over");
                  §§goto(addr0082);
               }
               §§goto(addr0089);
            }
            else
            {
               §§push(this.saleIcon);
            }
            §§goto(addr007e);
         }
         §§goto(addr006c);
      }
      
      private function onIconOver() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._data.rentCollectorRunning)
            {
               if(!_loc2_)
               {
                  this.rentCollectorIcon.briskDynaVo = this._data.overIconVo;
                  if(_loc1_ || _loc2_)
                  {
                     dispatchEvent(new Event(SHOW_INFO,true,true));
                  }
               }
            }
         }
      }
      
      private function onIconOut() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._data.rentCollectorRunning)
            {
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr0037);
               }
            }
            §§goto(addr0052);
         }
         addr0037:
         this.rentCollectorIcon.briskDynaVo = this._data.iconVo;
         if(!(_loc2_ && _loc2_))
         {
            addr0052:
            dispatchEvent(new Event(HIDE_INFO,true,true));
         }
      }
      
      private function onIconClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(this._data.rentCollectorRunning)
            {
               if(_loc1_)
               {
                  dispatchEvent(new Event(USE_COLLECTOR,true,true));
               }
            }
         }
      }
      
      private function onPlusMouseOver() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.plusIcon);
            if(_loc1_)
            {
               if(§§pop().includeInLayout)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.plusIcon);
                     if(!_loc2_)
                     {
                        addr003a:
                        §§push(this.plusIcon);
                        if(_loc1_ || _loc2_)
                        {
                           §§pop().scaleX = §§pop().scaleX + 0.05;
                           if(_loc1_ || _loc1_)
                           {
                              addr0069:
                              this.plusIcon.scaleY += 0.05;
                              addr0065:
                              addr0061:
                              if(_loc2_)
                              {
                                 §§goto(addr0103);
                              }
                              §§goto(addr0124);
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr0069);
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr0124);
               }
               else
               {
                  §§push(this.saleIcon);
                  if(!_loc2_)
                  {
                     if(§§pop().includeInLayout)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(Boolean(this._saleTimer));
                           if(_loc1_)
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              if(_temp_6)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00bd:
                                    §§pop();
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00d3:
                                       if(this._saleTimer.running)
                                       {
                                          if(_loc1_ || Boolean(this))
                                          {
                                             addr00e4:
                                             this._saleTimer.stop();
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr0103:
                                                this._salePulseOver = true;
                                                if(_loc1_ || _loc1_)
                                                {
                                                   addr0119:
                                                   this.saleIcon.dynaBmpSourceName = "salebadge_mini_over";
                                                   addr0115:
                                                   if(_loc1_)
                                                   {
                                                      addr0124:
                                                      dispatchEvent(new Event(SHOW_HIRE_INFO,true,true));
                                                   }
                                                }
                                                §§goto(addr0133);
                                             }
                                          }
                                          addr0133:
                                          return;
                                       }
                                       §§goto(addr0115);
                                    }
                                    §§goto(addr00e4);
                                 }
                              }
                              §§goto(addr00d3);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00e4);
                     }
                     §§goto(addr0124);
                  }
               }
               §§goto(addr0119);
            }
            §§goto(addr003a);
         }
         §§goto(addr0061);
      }
      
      private function onPlusMouseOut() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.plusIcon);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop().includeInLayout)
               {
                  if(_loc1_)
                  {
                     §§push(this.plusIcon);
                     if(_loc1_)
                     {
                        addr003a:
                        §§push(1);
                        if(_loc1_ || Boolean(this))
                        {
                           §§pop().scaleX = §§pop();
                           if(_loc1_ || _loc2_)
                           {
                              addr005f:
                              this.plusIcon.scaleY = 1;
                              addr005d:
                              if(!_loc1_)
                              {
                                 addr0101:
                                 this.saleIcon.dynaBmpSourceName = "salebadge_mini_normal";
                                 §§goto(addr00fd);
                              }
                           }
                           §§goto(addr0113);
                        }
                        §§goto(addr005f);
                     }
                     §§goto(addr005d);
                  }
                  §§goto(addr0113);
               }
               else
               {
                  §§push(this.saleIcon);
                  if(!_loc2_)
                  {
                     if(§§pop().includeInLayout)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§push(Boolean(this._saleTimer));
                           if(_loc1_ || _loc2_)
                           {
                              var _temp_7:* = §§pop();
                              §§push(_temp_7);
                              if(_temp_7)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr00b5:
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       addr00cb:
                                       if(this._saleTimer.currentCount < this._saleTimer.repeatCount)
                                       {
                                          if(!_loc2_)
                                          {
                                             this._saleTimer.start();
                                             if(_loc1_ || Boolean(this))
                                             {
                                                addr00f3:
                                                this._salePulseOver = false;
                                                if(!_loc2_)
                                                {
                                                   addr00fd:
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      addr0113:
                                                      dispatchEvent(new Event(HIDE_INFO,true,true));
                                                   }
                                                }
                                                §§goto(addr0122);
                                             }
                                             §§goto(addr0113);
                                          }
                                          addr0122:
                                          return;
                                       }
                                       §§goto(addr00fd);
                                    }
                                    §§goto(addr00f3);
                                 }
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr0113);
                  }
               }
               §§goto(addr0101);
            }
            §§goto(addr003a);
         }
         §§goto(addr0113);
      }
      
      private function onPlusClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(Boolean(this._saleTimer));
            if(_loc2_ || Boolean(this))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        addr005a:
                        if(this._saleTimer.currentCount < this._saleTimer.repeatCount)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              this._saleTimer.stop();
                              if(_loc2_ || Boolean(this))
                              {
                                 addr008a:
                                 this.handleSaleTimerComplete();
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr009c:
                                    dispatchEvent(new Event(PLUS_CLICKED,true,true));
                                 }
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr009c);
                     }
                     addr00ab:
                     return;
                  }
               }
            }
            §§goto(addr005a);
         }
         §§goto(addr008a);
      }
      
      public function set data(param1:RentCollectorSideMenuVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_)
               {
                  this._data = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0061:
                     this._isDirty = true;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0073:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0073);
            }
            addr0078:
            return;
         }
         §§goto(addr0061);
      }
      
      override public function get measuredHeight() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(this.miniProgress.includeInLayout)
            {
               if(_loc2_)
               {
                  return this.minHeight + this.miniProgress.height - 3;
               }
            }
         }
         return this.minHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      private function _RentCollectorSideMenu_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.verticalAlign = "top";
            if(!_loc3_)
            {
               addr0031:
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.gap = -3;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.maxWidth = 55;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.width = 55;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._RentCollectorSideMenu_Group2_i(),this._RentCollectorSideMenu_ProgressBarMini1_i()];
                           if(_loc2_)
                           {
                              addr009b:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00a7:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a7);
                        }
                        addr00ab:
                        return _loc1_;
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr00a7);
               }
            }
            §§goto(addr009b);
         }
         §§goto(addr0031);
      }
      
      private function _RentCollectorSideMenu_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mouseEnabledWhereTransparent = false;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._RentCollectorSideMenu_BriskImageDynaLib1_i(),this._RentCollectorSideMenu_BriskImageDynaLib2_i(),this._RentCollectorSideMenu_BriskImageDynaLib3_i(),this._RentCollectorSideMenu_BriskImageDynaLib4_i(),this._RentCollectorSideMenu_SpriteVisualElement1_i()];
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "iconGroup";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0099:
                              this.iconGroup = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00a3:
                                 BindingManager.executeBindings(this,"iconGroup",this.iconGroup);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr00a3);
            }
         }
         §§goto(addr0099);
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaBmpSourceName = "questmarker_base";
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.addEventListener("rollOver",this.__iconBase_rollOver);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.addEventListener("rollOut",this.__iconBase_rollOut);
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.addEventListener("click",this.__iconBase_click);
                              if(_loc3_ || _loc3_)
                              {
                                 addr00ba:
                                 _loc1_.id = "iconBase";
                                 if(!_loc2_)
                                 {
                                    addr00c5:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00e5:
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             addr00ee:
                                             this.iconBase = _loc1_;
                                             if(_loc3_)
                                             {
                                                addr00f8:
                                                BindingManager.executeBindings(this,"iconBase",this.iconBase);
                                             }
                                          }
                                          §§goto(addr0105);
                                       }
                                    }
                                    §§goto(addr00ee);
                                 }
                                 §§goto(addr00f8);
                              }
                              addr0105:
                              return _loc1_;
                           }
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr00c5);
            }
         }
         §§goto(addr00ee);
      }
      
      public function __iconBase_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.onIconOver();
         }
      }
      
      public function __iconBase_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.onIconOut();
         }
      }
      
      public function __iconBase_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onIconClick();
         }
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_rentCollector";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "collector_inactive_icon";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.width = 55;
                  if(_loc2_)
                  {
                     addr004f:
                     _loc1_.height = 48;
                     if(_loc2_)
                     {
                        _loc1_.top = 2;
                        if(!_loc3_)
                        {
                           _loc1_.left = 6;
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.addEventListener("rollOver",this.__rentCollectorIcon_rollOver);
                              if(_loc2_)
                              {
                                 _loc1_.addEventListener("rollOut",this.__rentCollectorIcon_rollOut);
                                 if(_loc2_)
                                 {
                                    addr00a2:
                                    _loc1_.addEventListener("click",this.__rentCollectorIcon_click);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00bb:
                                       _loc1_.id = "rentCollectorIcon";
                                       if(_loc2_)
                                       {
                                          addr00c6:
                                          if(!_loc1_.document)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr00e6:
                                                _loc1_.document = this;
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr00f7:
                                                   this.rentCollectorIcon = _loc1_;
                                                   if(!_loc3_)
                                                   {
                                                      addr0101:
                                                      BindingManager.executeBindings(this,"rentCollectorIcon",this.rentCollectorIcon);
                                                   }
                                                   §§goto(addr010e);
                                                }
                                                §§goto(addr0101);
                                             }
                                             §§goto(addr010e);
                                          }
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr00f7);
                        }
                        §§goto(addr0101);
                     }
                     §§goto(addr00e6);
                  }
                  addr010e:
                  return _loc1_;
               }
               §§goto(addr00bb);
            }
            §§goto(addr004f);
         }
         §§goto(addr00f7);
      }
      
      public function __rentCollectorIcon_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.onIconOver();
         }
      }
      
      public function __rentCollectorIcon_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.onIconOut();
         }
      }
      
      public function __rentCollectorIcon_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onIconClick();
         }
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(!_loc2_)
               {
                  _loc1_.top = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0051:
                     _loc1_.right = 3;
                     if(_loc3_)
                     {
                        §§goto(addr005b);
                     }
                  }
                  §§goto(addr0075);
               }
               addr005b:
               _loc1_.includeInLayout = false;
               if(_loc3_)
               {
                  _loc1_.visible = false;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0075:
                     _loc1_.addEventListener("click",this.__plusIcon_click);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.addEventListener("rollOver",this.__plusIcon_rollOver);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.addEventListener("rollOut",this.__plusIcon_rollOut);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00cc:
                              _loc1_.id = "plusIcon";
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§goto(addr00df);
                              }
                              §§goto(addr0120);
                           }
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr0120);
                  }
                  §§goto(addr00cc);
               }
               addr00df:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00f3:
                     _loc1_.document = this;
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr010e);
                     }
                     §§goto(addr0120);
                  }
               }
               §§goto(addr010e);
            }
            addr010e:
            this.plusIcon = _loc1_;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0120:
               BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
            }
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      public function __plusIcon_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.onPlusClick();
         }
      }
      
      public function __plusIcon_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.onPlusMouseOver();
         }
      }
      
      public function __plusIcon_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onPlusMouseOut();
         }
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_rentCollector";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "salebadge_mini_normal";
               if(_loc2_)
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     _loc1_.right = 3;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.visible = false;
                           §§goto(addr006a);
                        }
                        §§goto(addr0101);
                     }
                     §§goto(addr007f);
                  }
                  addr006a:
                  if(_loc2_)
                  {
                     addr007f:
                     _loc1_.addEventListener("click",this.__saleIcon_click);
                     if(_loc2_)
                     {
                        _loc1_.addEventListener("rollOver",this.__saleIcon_rollOver);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr00a9);
                        }
                     }
                     §§goto(addr00f7);
                  }
                  addr00a9:
                  _loc1_.addEventListener("rollOut",this.__saleIcon_rollOut);
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "saleIcon";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr00ee);
                           }
                           §§goto(addr0101);
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr0101);
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr00f7);
            }
         }
         addr00ee:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr00f7:
            this.saleIcon = _loc1_;
            if(!_loc3_)
            {
               addr0101:
               BindingManager.executeBindings(this,"saleIcon",this.saleIcon);
            }
         }
         return _loc1_;
      }
      
      public function __saleIcon_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.onPlusClick();
         }
      }
      
      public function __saleIcon_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.onPlusMouseOver();
         }
      }
      
      public function __saleIcon_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.onPlusMouseOut();
         }
      }
      
      private function _RentCollectorSideMenu_SpriteVisualElement1_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0073);
         }
         addr0035:
         _loc1_.percentWidth = 100;
         if(_loc2_)
         {
            _loc1_.mouseChildren = false;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mouseEnabled = false;
               if(_loc2_)
               {
                  addr0073:
                  _loc1_.initialized(this,"rentCollectorSparkleSprite");
                  if(!_loc3_)
                  {
                     §§goto(addr0081);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0081);
            }
            §§goto(addr0073);
         }
         addr0081:
         this.rentCollectorSparkleSprite = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr0093:
            BindingManager.executeBindings(this,"rentCollectorSparkleSprite",this.rentCollectorSparkleSprite);
         }
         return _loc1_;
      }
      
      private function _RentCollectorSideMenu_ProgressBarMini1_i() : ProgressBarMini
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ProgressBarMini = new ProgressBarMini();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 40;
            if(_loc3_ || _loc3_)
            {
               _loc1_.revertProgress = true;
               if(_loc3_)
               {
                  addr0055:
                  _loc1_.id = "miniProgress";
                  if(!_loc2_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr008a);
                           }
                        }
                        §§goto(addr0094);
                     }
                  }
                  addr008a:
                  this.miniProgress = _loc1_;
                  if(_loc3_)
                  {
                     addr0094:
                     BindingManager.executeBindings(this,"miniProgress",this.miniProgress);
                  }
                  §§goto(addr00a1);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr0055);
         }
         §§goto(addr0060);
      }
      
      private function _RentCollectorSideMenu_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.left = -250;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = -5;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "menuContainer";
                  if(_loc3_ || _loc3_)
                  {
                     addr006e:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0096:
                              this.menuContainer = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
                              }
                           }
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr007a);
               }
               addr00b5:
               return _loc1_;
            }
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconBase() : BriskImageDynaLib
      {
         return this._738471190iconBase;
      }
      
      public function set iconBase(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._738471190iconBase;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._738471190iconBase = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0068);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconBase",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGroup() : Group
      {
         return this._1412649594iconGroup;
      }
      
      public function set iconGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1412649594iconGroup;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1412649594iconGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007f);
               }
            }
         }
         addr008e:
      }
      
      [Bindable(event="propertyChange")]
      public function get menuContainer() : Group
      {
         return this._1784090142menuContainer;
      }
      
      public function set menuContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1784090142menuContainer;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1784090142menuContainer = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get miniProgress() : ProgressBarMini
      {
         return this._398457948miniProgress;
      }
      
      public function set miniProgress(param1:ProgressBarMini) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._398457948miniProgress;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._398457948miniProgress = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniProgress",_loc2_,param1));
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr007e);
               }
            }
            addr008d:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1849499341plusIcon;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1849499341plusIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get rentCollectorIcon() : BriskImageDynaLib
      {
         return this._402978835rentCollectorIcon;
      }
      
      public function set rentCollectorIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._402978835rentCollectorIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._402978835rentCollectorIcon = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rentCollectorIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get rentCollectorSparkleSprite() : SpriteVisualElement
      {
         return this._1397564793rentCollectorSparkleSprite;
      }
      
      public function set rentCollectorSparkleSprite(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1397564793rentCollectorSparkleSprite;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1397564793rentCollectorSparkleSprite = param1;
                  if(!_loc3_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rentCollectorSparkleSprite",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get saleIcon() : BriskImageDynaLib
      {
         return this._1935734112saleIcon;
      }
      
      public function set saleIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1935734112saleIcon;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1935734112saleIcon = param1;
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
   }
}

