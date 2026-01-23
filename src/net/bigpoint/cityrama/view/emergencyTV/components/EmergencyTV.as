package net.bigpoint.cityrama.view.emergencyTV.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Move;
   import mx.effects.easing.Linear;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.emergencyTV.vo.EmergencyTVVo;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.emergencyTV.skins.TVDropButtonSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class EmergencyTV extends Group implements IBindingClient
   {
      
      private static const TICKER_SPEED:Number = 1200;
      
      public static const EVENT_TOGGLE_TV:String = "EVENT_TOGGLE_TV";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && EmergencyTV))
      {
         TICKER_SPEED = 1200;
         if(_loc2_)
         {
            addr002c:
            EVENT_TOGGLE_TV = "EVENT_TOGGLE_TV";
         }
         return;
      }
      §§goto(addr002c);
      
      private var _92895825alarm:BriskMCDynaLib;
      
      private var _432870145dropButton:ToggleButton;
      
      private var _1869907812maskCanvas:Canvas;
      
      private var _301100856move_ticker:Move;
      
      private var _278873964newsGroup:Group;
      
      private var _418658237newsTicker:LocaLabel;
      
      private var _3714tv:NewsComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _tvData:EmergencyTVVo;
      
      private var _dataDirty:Boolean;
      
      private var _siren:BitmapClip;
      
      private var _tickerDuration:Number = 1000;
      
      private var _intervalID:uint;
      
      private var _sirenLoaded:Boolean;
      
      private var _tvCollapsedState:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EmergencyTV()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc3_ || Boolean(this))
                  {
                     addr0048:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && _loc2_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && _loc1_))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    addr00a0:
                                    super();
                                    if(_loc3_ || _loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             §§pop().§§slot[1] = this._EmergencyTV_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            addr010e:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr0123:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr012a:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyTV_components_EmergencyTVWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        addr0153:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr015a:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0171:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return EmergencyTV[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr018d:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01e3:
                                                                                       this.visible = false;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          this.includeInLayout = false;
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             this.mxmlContent = [this._EmergencyTV_VGroup1_c()];
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr020f:
                                                                                                this._EmergencyTV_Move1_i();
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr021b:
                                                                                                   this.addEventListener("creationComplete",this.___EmergencyTV_Group1_creationComplete);
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      addr0236:
                                                                                                      i = 0;
                                                                                                      addr0234:
                                                                                                   }
                                                                                                }
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[4]);
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§newactivation());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                            {
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(_loc4_ && _loc3_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(_loc4_ && _loc1_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  var _temp_21:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_21;
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                return;
                                                                                                addr02a6:
                                                                                             }
                                                                                             §§goto(addr021b);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02a6);
                                                                                 }
                                                                                 §§goto(addr021b);
                                                                              }
                                                                              §§goto(addr01e3);
                                                                           }
                                                                           §§goto(addr018d);
                                                                        }
                                                                        §§goto(addr0236);
                                                                     }
                                                                     §§goto(addr018d);
                                                                  }
                                                                  §§goto(addr015a);
                                                               }
                                                               §§goto(addr020f);
                                                            }
                                                            §§goto(addr0171);
                                                         }
                                                         §§goto(addr0153);
                                                      }
                                                      §§goto(addr0236);
                                                   }
                                                   §§goto(addr0123);
                                                }
                                                §§goto(addr012a);
                                             }
                                             §§goto(addr0234);
                                          }
                                          §§goto(addr015a);
                                       }
                                       §§goto(addr020f);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr018d);
                              }
                              §§goto(addr010e);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0171);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr015a);
               }
               §§goto(addr021b);
            }
            §§goto(addr0048);
         }
         §§goto(addr0236);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            EmergencyTV._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0043);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr0043:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc3_ || Boolean(this))
            {
               §§push(this._dataDirty);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(this._tvData.active);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0051:
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                                 this.includeInLayout = this.visible = false;
                                 if(_loc3_ || _loc3_)
                                 {
                                    return;
                                 }
                                 addr0085:
                                 addr0089:
                                 if(this._sirenLoaded)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00a4:
                                       this._siren.play();
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr00b9);
                                       }
                                       §§goto(addr00cd);
                                    }
                                 }
                                 addr00b9:
                                 this.tv.newsData = this._tvData.showData;
                                 if(!_loc2_)
                                 {
                                    addr00cd:
                                    this.complete();
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00d3);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr00cd);
                  }
                  addr00d3:
                  return;
               }
               §§goto(addr0051);
            }
            §§goto(addr00b9);
         }
         §§goto(addr00a4);
      }
      
      private function dropButton_clickHandler(param1:MouseEvent = null) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            §§push(this.tv);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(this.tv);
               if(_loc3_)
               {
                  §§push(§§pop().visible = !this.tv.includeInLayout);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§pop().includeInLayout = §§pop();
                     if(!_loc4_)
                     {
                        this._tvCollapsedState = !this.tv.includeInLayout;
                        if(!_loc4_)
                        {
                           addr0095:
                           this.tv.stopClips(!this.tv.includeInLayout);
                           addr0092:
                           addr008e:
                           addr008a:
                           if(!(_loc4_ && Boolean(this)))
                           {
                              dispatchEvent(new Event(EVENT_TOGGLE_TV));
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0092);
            }
            §§goto(addr008e);
         }
         §§goto(addr008a);
      }
      
      private function onCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.alarm.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
         }
      }
      
      private function onAlarmLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._sirenLoaded = true;
            if(_loc3_)
            {
               this.alarm.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
               if(_loc3_)
               {
                  addr0037:
                  this._siren = new BitmapClip(this.alarm.movieClip,"tv_alarm",10);
                  if(_loc3_ || Boolean(this))
                  {
                     this._siren.play();
                  }
               }
               while(true)
               {
                  §§push(this.alarm);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  if(§§pop().numChildren <= 0)
                  {
                     §§goto(addr00d1);
                  }
                  §§push(this.alarm);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeChildAt(0);
                  if(!(_loc2_ && _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr00c5);
               }
               §§pop().addChild(this._siren);
               addr00d1:
               if(_loc3_ || _loc3_)
               {
                  addr00c5:
                  §§push(this.alarm);
                  break loop0;
               }
               return;
               addr0092:
            }
            §§goto(addr0037);
         }
         §§goto(addr0092);
      }
      
      private function complete() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            var _temp_1:* = this;
            var _loc2_:Boolean;
            this.includeInLayout = _loc2_ = true;
            _temp_1.visible = _loc2_;
            if(_loc3_)
            {
               §§push(this.newsTicker);
               if(_loc3_ || _loc1_)
               {
                  §§pop().text = this._tvData.newsText;
                  if(_loc3_)
                  {
                     this.move_ticker.xFrom = this.maskCanvas.width;
                     if(_loc3_)
                     {
                        §§goto(addr006a);
                     }
                  }
                  §§goto(addr0066);
               }
               addr006a:
               §§goto(addr0059);
            }
            addr0059:
            §§push(this.newsTicker);
            if(_loc3_)
            {
               §§pop().validateNow();
               addr0066:
               §§push(this.newsTicker);
            }
            var _loc1_:Number = §§pop().measuredWidth + this.maskCanvas.width;
            if(_loc3_)
            {
               this.move_ticker.xTo = -(_loc1_ - this.maskCanvas.width);
               if(!(_loc4_ && Boolean(this)))
               {
                  this.move_ticker.repeatCount = 0;
                  if(!_loc4_)
                  {
                     §§goto(addr00b2);
                  }
                  §§goto(addr011b);
               }
               §§goto(addr00c9);
            }
            addr00b2:
            this.move_ticker.repeatDelay = 0;
            if(!(_loc4_ && Boolean(this)))
            {
               addr00c9:
               §§push(this);
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(§§pop() / 100);
                  if(!_loc4_)
                  {
                     addr00da:
                     §§push(§§pop() * TICKER_SPEED);
                  }
                  §§pop()._tickerDuration = §§pop();
                  if(_loc3_ || _loc2_)
                  {
                     this.move_ticker.duration = this._tickerDuration;
                     if(_loc3_)
                     {
                        addr010d:
                        this.move_ticker.play();
                        if(!_loc4_)
                        {
                           addr011b:
                           this.startTimer();
                        }
                     }
                     §§goto(addr0121);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr00da);
            }
            addr0121:
            return;
         }
         §§goto(addr0066);
      }
      
      private function tickerPause() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.move_ticker.pause();
         }
      }
      
      private function tickerResume() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.move_ticker.resume();
         }
      }
      
      private function startTimer() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            clearInterval(this._intervalID);
            if(!(_loc1_ && Boolean(this)))
            {
               this._intervalID = setInterval(this.reset,this._tvData.showTime);
            }
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            clearInterval(this._intervalID);
            if(!_loc3_)
            {
               var _temp_2:* = this;
               var _loc1_:Boolean;
               this.visible = _loc1_ = false;
               _temp_2.includeInLayout = _loc1_;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0054:
                  §§push(this.tv);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     this.tv.visible = _loc1_ = true;
                     §§pop().includeInLayout = _loc1_;
                     if(_loc2_)
                     {
                        addr0078:
                        this.dropButton.selected = false;
                        if(!(_loc3_ && _loc3_))
                        {
                           this.move_ticker.stop();
                           if(!_loc3_)
                           {
                              §§goto(addr00a6);
                           }
                           §§goto(addr00bb);
                        }
                        addr00a6:
                        this._siren.stop();
                        if(_loc2_ || _loc1_)
                        {
                           addr00bf:
                           this.tv.stopClips();
                           addr00bb:
                        }
                        §§goto(addr00c3);
                     }
                     addr00c3:
                     return;
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr00a6);
            }
            §§goto(addr0078);
         }
         §§goto(addr0054);
      }
      
      public function set tvData(param1:EmergencyTVVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._tvData))
            {
               if(!_loc3_)
               {
                  this._dataDirty = true;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0070);
               }
               addr005e:
               this._tvData = param1;
               if(_loc2_ || _loc2_)
               {
                  addr0070:
                  invalidateProperties();
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr005e);
      }
      
      public function get tvCollapsedState() : Boolean
      {
         return this._tvCollapsedState;
      }
      
      public function set tvCollapsedState(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || param1)
         {
            this._tvCollapsedState = param1;
            if(_loc4_ || param1)
            {
               this.dropButton.selected = param1;
               if(_loc4_ || _loc3_)
               {
                  addr0057:
                  §§push(this.tv);
                  if(_loc4_)
                  {
                     §§push(this.tv);
                     if(!_loc3_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§push(!§§pop());
                        }
                        §§push(§§pop().visible = §§pop());
                        if(_loc4_ || param1)
                        {
                           §§pop().includeInLayout = §§pop();
                           if(_loc4_ || Boolean(this))
                           {
                              addr00ad:
                              this.tv.stopClips(!this.tv.includeInLayout);
                              addr00aa:
                              addr00a6:
                              addr00a2:
                           }
                           return;
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00a6);
               }
            }
            §§goto(addr00a2);
         }
         §§goto(addr0057);
      }
      
      private function _EmergencyTV_Move1_i() : Move
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Move = new Move();
         if(_loc3_)
         {
            this.move_ticker = _loc1_;
            if(!_loc2_)
            {
               addr0036:
               BindingManager.executeBindings(this,"move_ticker",this.move_ticker);
            }
            return _loc1_;
         }
         §§goto(addr0036);
      }
      
      private function _EmergencyTV_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.mxmlContent = [this._EmergencyTV_BriskMCDynaLib1_i(),this._EmergencyTV_Group2_i(),this._EmergencyTV_NewsComponent1_i()];
               addr0045:
               if(_loc3_)
               {
                  §§goto(addr006d);
               }
               §§goto(addr0081);
            }
            addr006d:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0081:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _EmergencyTV_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_emergency";
            if(_loc2_)
            {
               _loc1_.dynaMCSourceName = "emergency_alarm";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "alarm";
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0090:
                              this.alarm = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a2:
                                 BindingManager.executeBindings(this,"alarm",this.alarm);
                              }
                           }
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr0090);
                  }
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr00a2);
         }
         §§goto(addr0066);
      }
      
      private function _EmergencyTV_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._EmergencyTV_BriskImageDynaLib1_c(),this._EmergencyTV_HGroup1_c()];
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.id = "newsGroup";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0092:
                           this.newsGroup = _loc1_;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00a4:
                              BindingManager.executeBindings(this,"newsGroup",this.newsGroup);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00a4);
                     }
                     addr00b1:
                     return _loc1_;
                  }
                  §§goto(addr0092);
               }
            }
            §§goto(addr00a4);
         }
         §§goto(addr0092);
      }
      
      private function _EmergencyTV_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_emergency";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "news_frame_top";
               if(!_loc3_)
               {
                  _loc1_.left = 2;
                  if(!_loc3_)
                  {
                     addr0069:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0081);
               }
            }
            §§goto(addr0069);
         }
         addr0081:
         return _loc1_;
      }
      
      private function _EmergencyTV_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.height = 23;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.paddingLeft = 4;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.gap = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007a:
                        _loc1_.mxmlContent = [this._EmergencyTV_Group3_c(),this._EmergencyTV_ToggleButton1_i()];
                        if(!_loc2_)
                        {
                           §§goto(addr0090);
                        }
                        §§goto(addr009c);
                     }
                     addr0090:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr009c:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr009c);
               }
            }
            §§goto(addr007a);
         }
         §§goto(addr009c);
      }
      
      private function _EmergencyTV_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._EmergencyTV_Canvas1_i()];
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr006c:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr006c);
         }
         addr0070:
         return _loc1_;
      }
      
      private function _EmergencyTV_Canvas1_i() : Canvas
      {
         var temp:Canvas;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = new Canvas();
            if(_loc2_ || _loc3_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§pop().§§slot[1].horizontalScrollPolicy = "off";
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc3_ && _loc1_))
                     {
                        §§pop().§§slot[1].width = 220;
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              §§goto(addr0075);
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr00ce);
                     }
                     addr0075:
                     §§pop().§§slot[1].left = 4;
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(§§newactivation());
                        if(!_loc3_)
                        {
                           §§pop().§§slot[1].addEventListener("mouseOver",this.__maskCanvas_mouseOver);
                           if(!_loc3_)
                           {
                              addr00a1:
                              §§push(§§newactivation());
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr00bc:
                                 §§pop().§§slot[1].addEventListener("mouseOut",this.__maskCanvas_mouseOut);
                                 if(!_loc3_)
                                 {
                                    addr00ce:
                                    §§push(§§newactivation());
                                    if(_loc2_)
                                    {
                                       §§goto(addr00d5);
                                    }
                                    §§goto(addr0160);
                                 }
                                 §§goto(addr017f);
                              }
                              addr00d5:
                              §§pop().§§slot[1].id = "maskCanvas";
                              if(_loc2_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr00f0:
                                    if(!§§pop().§§slot[1].document)
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr00fd);
                                       }
                                       §§goto(addr017f);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr0115);
                              }
                              addr00fd:
                              §§push(§§newactivation());
                              if(_loc2_)
                              {
                                 addr0104:
                                 §§pop().§§slot[1].document = this;
                                 if(!_loc3_)
                                 {
                                    addr010e:
                                    §§push(§§newactivation());
                                    if(!_loc3_)
                                    {
                                       addr0115:
                                       §§pop().§§slot[1].mx_internal::_documentDescriptor = new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"maskCanvas",
                                          "events":{
                                             "mouseOver":"__maskCanvas_mouseOver",
                                             "mouseOut":"__maskCanvas_mouseOut"
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"childDescriptors":[new UIComponentDescriptor({
                                                "type":LocaLabel,
                                                "id":"newsTicker",
                                                "stylesFactory":function():void
                                                {
                                                   this.color = 16777215;
                                                   this.textAlign = "left";
                                                   this.fontSize = 12;
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "verticalCenter":2,
                                                      "styleName":"fontABlack",
                                                      "left":2
                                                   };
                                                }
                                             })]};
                                          }
                                       });
                                       if(!_loc3_)
                                       {
                                          §§goto(addr01a3);
                                       }
                                       §§goto(addr01a1);
                                    }
                                    §§goto(addr0160);
                                 }
                                 §§goto(addr017f);
                              }
                              addr01a3:
                              §§goto(addr0151);
                           }
                           §§goto(addr010e);
                        }
                        §§goto(addr00bc);
                     }
                     addr0151:
                     §§push(§§newactivation());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§pop().§§slot[1].mx_internal::_documentDescriptor.document = this;
                        addr0160:
                        if(!_loc3_)
                        {
                           addr017f:
                           this.maskCanvas = temp;
                           if(!(_loc3_ && _loc2_))
                           {
                              BindingManager.executeBindings(this,"maskCanvas",this.maskCanvas);
                           }
                        }
                        addr01a1:
                        §§push(§§newactivation());
                     }
                     return §§pop().§§slot[1];
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr0104);
            }
            §§goto(addr00a1);
         }
         §§goto(addr00f0);
      }
      
      public function __maskCanvas_mouseOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.tickerPause();
         }
      }
      
      public function __maskCanvas_mouseOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.tickerResume();
         }
      }
      
      private function _EmergencyTV_ToggleButton1_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 23;
            if(_loc3_ || _loc3_)
            {
               _loc1_.height = 23;
               if(!_loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.setStyle("skinClass",TVDropButtonSkin);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.addEventListener("click",this.__dropButton_click);
                        if(_loc3_ || _loc3_)
                        {
                           addr0094:
                           _loc1_.id = "dropButton";
                           if(!_loc2_)
                           {
                              addr009f:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00d0:
                                       this.dropButton = _loc1_;
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00e2:
                                          BindingManager.executeBindings(this,"dropButton",this.dropButton);
                                       }
                                    }
                                    §§goto(addr00ef);
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr00d0);
                           }
                        }
                     }
                     §§goto(addr00e2);
                  }
                  §§goto(addr0094);
               }
               addr00ef:
               return _loc1_;
            }
            §§goto(addr00e2);
         }
         §§goto(addr009f);
      }
      
      public function __dropButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.dropButton_clickHandler();
         }
      }
      
      private function _EmergencyTV_NewsComponent1_i() : NewsComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:NewsComponent = new NewsComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.bottom = 0;
            if(_loc3_)
            {
               _loc1_.id = "tv";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0081:
                           this.tv = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0093:
                              BindingManager.executeBindings(this,"tv",this.tv);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0093);
                     }
                     addr00a0:
                     return _loc1_;
                  }
                  §§goto(addr0081);
               }
            }
            §§goto(addr0093);
         }
         §§goto(addr0081);
      }
      
      public function ___EmergencyTV_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.onCreationComplete();
         }
      }
      
      private function _EmergencyTV_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc2_))
               {
                  addr0042:
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,null,null,"move_ticker.target","newsTicker");
                        if(!(_loc2_ && _loc1_))
                        {
                           addr007a:
                           §§push(§§newactivation());
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(1);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Function
                                    {
                                       return Linear.easeNone;
                                    },null,"move_ticker.easingFunction");
                                    if(_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§goto(addr00f5);
                                       }
                                       §§goto(addr00f3);
                                    }
                                    §§goto(addr00f1);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr00f3);
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr00e0);
                  }
                  addr00f5:
                  §§goto(addr00d7);
               }
               addr00d7:
               §§push(§§pop().§§slot[1]);
               if(_loc3_)
               {
                  addr00e0:
                  §§pop()[2] = new Binding(this,function():Array
                  {
                     var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                     return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                  },null,"newsTicker.filters");
                  addr00f3:
                  addr00f1:
                  §§push(result);
                  addr00de:
               }
               return §§pop();
            }
            §§goto(addr007a);
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get alarm() : BriskMCDynaLib
      {
         return this._92895825alarm;
      }
      
      public function set alarm(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._92895825alarm;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._92895825alarm = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"alarm",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get dropButton() : ToggleButton
      {
         return this._432870145dropButton;
      }
      
      public function set dropButton(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._432870145dropButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._432870145dropButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get maskCanvas() : Canvas
      {
         return this._1869907812maskCanvas;
      }
      
      public function set maskCanvas(param1:Canvas) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1869907812maskCanvas;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0042:
                  this._1869907812maskCanvas = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskCanvas",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get move_ticker() : Move
      {
         return this._301100856move_ticker;
      }
      
      public function set move_ticker(param1:Move) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._301100856move_ticker;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._301100856move_ticker = param1;
                  addr003d:
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"move_ticker",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0056);
            }
            addr007c:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get newsGroup() : Group
      {
         return this._278873964newsGroup;
      }
      
      public function set newsGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._278873964newsGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._278873964newsGroup = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0051:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0051);
            }
            addr0077:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get newsTicker() : LocaLabel
      {
         return this._418658237newsTicker;
      }
      
      public function set newsTicker(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._418658237newsTicker;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._418658237newsTicker = param1;
                  if(_loc4_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsTicker",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr004c);
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get tv() : NewsComponent
      {
         return this._3714tv;
      }
      
      public function set tv(param1:NewsComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3714tv;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._3714tv = param1;
                  addr0049:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0068);
                  }
                  §§goto(addr0077);
               }
               addr0068:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tv",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0049);
      }
   }
}

