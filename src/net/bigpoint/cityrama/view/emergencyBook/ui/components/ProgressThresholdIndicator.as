package net.bigpoint.cityrama.view.emergencyBook.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProgressThresholdVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class ProgressThresholdIndicator extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _ProgressThresholdIndicator_BriskImageDynaLib11:BriskImageDynaLib;
      
      public var _ProgressThresholdIndicator_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _201073350bgGroup:HGroup;
      
      private var _1232143642dividerGroup:Group;
      
      private var _1281190588mockProgressBar:HGroup;
      
      private var _1911456873mockProgressBarMaskGroup:HGroup;
      
      private var _1705522728realProgressBar:HGroup;
      
      private var _1816737365realProgressBarMaskGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _progressDirty:Boolean;
      
      private var _data:ProgressThresholdVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProgressThresholdIndicator()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc4_ || _loc3_)
                     {
                        addr005e:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || Boolean(this))
                           {
                              addr0079:
                              §§pop().§§slot[5] = null;
                              if(_loc4_)
                              {
                                 addr0083:
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_ || Boolean(this))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_)
                                    {
                                       addr00a3:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || _loc2_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             super();
                                             if(!_loc3_)
                                             {
                                                addr00cb:
                                                mx_internal::_document = this;
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr00e6:
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._ProgressThresholdIndicator_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr0106:
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr0115:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_components_ProgressThresholdIndicatorWatcherSetupUtil");
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0180:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0197:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ProgressThresholdIndicator[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr01bd:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr01e4:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                addr0213:
                                                                                                this.percentWidth = 100;
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr0226:
                                                                                                   this.mxmlContent = [this._ProgressThresholdIndicator_Group2_c()];
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0237:
                                                                                                      this.currentState = "normal";
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr0243:
                                                                                                         states = [new State({
                                                                                                            "name":"normal",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"disabled",
                                                                                                            "overrides":[]
                                                                                                         })];
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr0272:
                                                                                                            i = 0;
                                                                                                            addr0270:
                                                                                                         }
                                                                                                         var _temp_18:*;
                                                                                                         loop0:
                                                                                                         do
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
                                                                                                                  while(§§pop() < §§pop().§§slot[1].length)
                                                                                                                  {
                                                                                                                     Binding(bindings[i]).execute();
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[4]);
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, _loc4_ || _loc1_);
                                                                                                         
                                                                                                         return;
                                                                                                         addr02dc:
                                                                                                      }
                                                                                                      §§goto(addr0270);
                                                                                                   }
                                                                                                   §§goto(addr02dc);
                                                                                                }
                                                                                                §§goto(addr0270);
                                                                                             }
                                                                                             §§goto(addr0243);
                                                                                          }
                                                                                          §§goto(addr0226);
                                                                                       }
                                                                                       §§goto(addr0270);
                                                                                    }
                                                                                    §§goto(addr01bd);
                                                                                 }
                                                                                 §§goto(addr0272);
                                                                              }
                                                                              §§goto(addr02dc);
                                                                           }
                                                                           §§goto(addr0272);
                                                                        }
                                                                        §§goto(addr0243);
                                                                     }
                                                                     §§goto(addr0197);
                                                                  }
                                                                  §§goto(addr0226);
                                                               }
                                                               §§goto(addr0180);
                                                            }
                                                            §§goto(addr0213);
                                                         }
                                                         §§goto(addr0180);
                                                      }
                                                      §§goto(addr0237);
                                                   }
                                                   §§goto(addr0272);
                                                }
                                                §§goto(addr01e4);
                                             }
                                             §§goto(addr00e6);
                                          }
                                          §§goto(addr0243);
                                       }
                                       §§goto(addr02dc);
                                    }
                                    §§goto(addr00cb);
                                 }
                                 §§goto(addr0106);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0180);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0115);
               }
               §§goto(addr0226);
            }
            §§goto(addr005e);
         }
         §§goto(addr0115);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            ProgressThresholdIndicator._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0050:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0056);
            }
            §§goto(addr0050);
         }
         addr0056:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               §§push(this._isDirty);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc1_ || Boolean(this))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              §§pop();
                              if(!_loc2_)
                              {
                                 §§push(this._data);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr006a:
                                       if(§§pop())
                                       {
                                          if(_loc1_)
                                          {
                                             this.setThresholds();
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr0085:
                                                §§push(this._progressDirty);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr0096:
                                                   §§push(§§pop());
                                                   if(_loc1_)
                                                   {
                                                      addr009c:
                                                      var _temp_7:* = §§pop();
                                                      addr009d:
                                                      §§push(_temp_7);
                                                      if(_temp_7)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr00a6);
                                                         }
                                                      }
                                                      §§goto(addr00b6);
                                                   }
                                                   addr00a6:
                                                   §§pop();
                                                   if(_loc1_)
                                                   {
                                                      §§push(this._data);
                                                      if(!_loc2_)
                                                      {
                                                         addr00b6:
                                                         addr00b5:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               this._progressDirty = false;
                                                               if(_loc1_)
                                                               {
                                                                  if(this.realProgressBarMaskGroup.width > 0)
                                                                  {
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        this.realProgressBar.left = Math.floor(this.realProgressBarMaskGroup.width * -1 * (1 - Math.min(Number(this._data.progress),1)));
                                                                        addr00ea:
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           this.realProgressBar.visible = true;
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr013a:
                                                                              §§push(this._data);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr0143:
                                                                                 §§push(§§pop().progress);
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             addr016b:
                                                                                             this.realProgressBar.visible = false;
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr0199:
                                                                                                if(this.mockProgressBarMaskGroup.width > 0)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr01aa:
                                                                                                      this.mockProgressBar.left = Math.floor(this.mockProgressBarMaskGroup.width * -1 * (1 - Math.min(Number(this._data.extraProgress),1)));
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         this.mockProgressBar.visible = true;
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr01fb:
                                                                                                            addr01f9:
                                                                                                            addr01ec:
                                                                                                            addr01e8:
                                                                                                            if(this._data.extraProgress == 0)
                                                                                                            {
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  addr0204:
                                                                                                                  this.mockProgressBar.visible = false;
                                                                                                                  if(_loc2_ && _loc1_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr022c);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0204);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.realProgressBarMaskGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.handleMockMaskComplete);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr022c);
                                                                                          }
                                                                                          §§goto(addr01aa);
                                                                                       }
                                                                                       §§goto(addr0199);
                                                                                    }
                                                                                    §§goto(addr01fb);
                                                                                 }
                                                                                 §§goto(addr01f9);
                                                                              }
                                                                              §§goto(addr01ec);
                                                                           }
                                                                           §§goto(addr01e8);
                                                                        }
                                                                        §§goto(addr01aa);
                                                                     }
                                                                     §§goto(addr013a);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.realProgressBarMaskGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.handleRealMaskComplete);
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        §§goto(addr0199);
                                                                     }
                                                                  }
                                                                  §§goto(addr022c);
                                                               }
                                                            }
                                                            §§goto(addr013a);
                                                         }
                                                         §§goto(addr022c);
                                                      }
                                                      §§goto(addr0143);
                                                   }
                                                   §§goto(addr022c);
                                                }
                                                §§goto(addr00b6);
                                             }
                                             §§goto(addr016b);
                                          }
                                          addr022c:
                                          return;
                                       }
                                       §§goto(addr0085);
                                    }
                                    §§goto(addr0096);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr01e8);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr006a);
                     }
                     §§goto(addr009d);
                  }
               }
               §§goto(addr0096);
            }
            §§goto(addr016b);
         }
         §§goto(addr00ea);
      }
      
      private function handleRealMaskComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.realProgressBarMaskGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.handleRealMaskComplete);
            if(_loc3_)
            {
               this._progressDirty = true;
               if(!(_loc2_ && _loc2_))
               {
                  addr004e:
                  this.commitProperties();
               }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      private function handleMockMaskComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.mockProgressBarMaskGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.handleMockMaskComplete);
            if(_loc2_)
            {
               §§goto(addr0040);
            }
            §§goto(addr004a);
         }
         addr0040:
         this._progressDirty = true;
         if(_loc2_)
         {
            addr004a:
            this.commitProperties();
         }
      }
      
      private function setThresholds() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         var _loc2_:* = NaN;
         if(_loc6_ || Boolean(this))
         {
            if(this.dividerGroup.width != 0)
            {
               if(_loc6_)
               {
                  this.dividerGroup.removeAllElements();
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     addr0051:
                     if(this._data.thresholds)
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr016a);
                  }
                  addr005c:
                  var _loc3_:int = 0;
                  var _loc4_:* = this._data.thresholds;
                  for each(_loc3_ in _loc4_)
                  {
                     §§push(_loc3_);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc2_ = §§pop();
                        if(!_loc5_)
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop() == 0);
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 §§push(!§§pop());
                                 if(_loc6_)
                                 {
                                    addr00bc:
                                    var _temp_7:* = §§pop();
                                    §§push(_temp_7);
                                    if(_temp_7)
                                    {
                                       if(_loc6_)
                                       {
                                          §§pop();
                                          if(!_loc5_)
                                          {
                                             addr00e6:
                                             addr00cf:
                                             addr00ce:
                                             §§push(_loc2_ == this._data.maxValue);
                                             if(_loc6_ || Boolean(this))
                                             {
                                                addr00e5:
                                                §§push(!§§pop());
                                             }
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                          }
                                          _loc1_ = new BriskImageDynaLib();
                                          if(_loc6_)
                                          {
                                             _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
                                             if(_loc6_)
                                             {
                                                _loc1_.dynaLibName = "gui_popups_emergencyBook";
                                                if(_loc6_)
                                                {
                                                   §§push(_loc1_);
                                                   §§push(this.dividerGroup.width / 100);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() * Math.round(_loc2_ / (this._data.maxValue / 100)));
                                                   }
                                                   §§pop().left = §§pop();
                                                   if(!(_loc6_ || Boolean(_loc2_)))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                this.dividerGroup.addElement(_loc1_);
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr00e5);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr00e5);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00cf);
                  }
                  if(_loc6_)
                  {
                     addr016a:
                     this._isDirty = false;
                     if(_loc6_ || Boolean(_loc2_))
                     {
                     }
                  }
                  §§goto(addr0191);
               }
               §§goto(addr0051);
            }
            else
            {
               this.dividerGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerCreationComp);
            }
            addr0191:
            return;
         }
         §§goto(addr0051);
      }
      
      public function set data(param1:ProgressThresholdVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc2_)
               {
                  this._data = param1;
                  if(!_loc2_)
                  {
                     this._isDirty = true;
                     if(!_loc2_)
                     {
                        addr004e:
                        this._progressDirty = true;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0060:
                           invalidateProperties();
                        }
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr0060);
               }
               §§goto(addr004e);
            }
         }
         addr0065:
      }
      
      public function updateProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(this._data);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr0047:
                     if(!RandomUtilities.isEqual(param1,this._data.progress))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this._progressDirty = true;
                           if(_loc3_ || _loc2_)
                           {
                              addr0089:
                              this._data.progress = param1;
                              if(_loc3_)
                              {
                                 addr0092:
                                 invalidateProperties();
                              }
                              §§goto(addr0097);
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0092);
               }
               addr0097:
               return;
            }
            §§goto(addr0089);
         }
         §§goto(addr0047);
      }
      
      public function updateXtraProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this._data);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr003f:
                     if(!RandomUtilities.isEqual(param1,this._data.extraProgress))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this._progressDirty = true;
                           if(_loc3_ || Boolean(param1))
                           {
                              addr0081:
                              this._data.extraProgress = param1;
                              if(!_loc2_)
                              {
                                 addr008a:
                                 invalidateProperties();
                              }
                           }
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr008a);
               }
               addr008f:
               return;
            }
            §§goto(addr0081);
         }
         §§goto(addr003f);
      }
      
      private function onDividerCreationComp(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.dividerGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerCreationComp);
            if(!(_loc2_ && _loc2_))
            {
               addr005b:
               if(this._data)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this.setThresholds();
                  }
               }
            }
            return;
         }
         §§goto(addr005b);
      }
      
      private function _ProgressThresholdIndicator_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.mxmlContent = [this._ProgressThresholdIndicator_HGroup1_i(),this._ProgressThresholdIndicator_HGroup2_i(),this._ProgressThresholdIndicator_HGroup3_i(),this._ProgressThresholdIndicator_HGroup4_i(),this._ProgressThresholdIndicator_HGroup5_i(),this._ProgressThresholdIndicator_Group3_i()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr008c);
            }
         }
         addr0090:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.gap = 0;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib1_c(),this._ProgressThresholdIndicator_BriskImageDynaLib2_c(),this._ProgressThresholdIndicator_BriskImageDynaLib3_c()];
                     addr004d:
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr007d:
                        _loc1_.id = "bgGroup";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr00a7);
                              }
                           }
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00c2);
                  }
               }
               §§goto(addr007d);
            }
            §§goto(addr004d);
         }
         addr00a7:
         _loc1_.document = this;
         if(!(_loc2_ && _loc2_))
         {
            addr00b8:
            this.bgGroup = _loc1_;
            if(!_loc2_)
            {
               addr00c2:
               BindingManager.executeBindings(this,"bgGroup",this.bgGroup);
            }
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_bg_left";
               addr0041:
               if(_loc3_)
               {
                  _loc1_.width = 7;
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0077);
               }
            }
            addr007b:
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_bg_middle";
               if(_loc3_)
               {
                  addr0060:
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0076:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0076);
               }
               addr007a:
               return _loc1_;
            }
         }
         §§goto(addr0060);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_bg_right";
               if(_loc2_)
               {
                  §§goto(addr004e);
               }
               §§goto(addr006c);
            }
            addr004e:
            _loc1_.width = 7;
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr006c:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0070);
         }
         addr0070:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup2_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.left = 3;
                  if(_loc2_)
                  {
                     _loc1_.right = 3;
                     if(_loc2_)
                     {
                        addr004f:
                        _loc1_.visible = false;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib4_c(),this._ProgressThresholdIndicator_BriskImageDynaLib5_i(),this._ProgressThresholdIndicator_BriskImageDynaLib6_c()];
                           addr0058:
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0088:
                              _loc1_.id = "mockProgressBarMaskGroup";
                              if(_loc2_ || _loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00b9:
                                       _loc1_.document = this;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00ca:
                                          this.mockProgressBarMaskGroup = _loc1_;
                                          if(!_loc3_)
                                          {
                                             addr00d4:
                                             BindingManager.executeBindings(this,"mockProgressBarMaskGroup",this.mockProgressBarMaskGroup);
                                          }
                                          §§goto(addr00e1);
                                       }
                                       §§goto(addr00d4);
                                    }
                                    addr00e1:
                                    return _loc1_;
                                 }
                                 §§goto(addr00ca);
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr0058);
                  }
                  §§goto(addr004f);
               }
               §§goto(addr00ca);
            }
            §§goto(addr0088);
         }
         §§goto(addr0058);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0052:
               _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_left";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0072);
         }
         §§goto(addr0052);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_middle";
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr005c);
               }
               §§goto(addr008e);
            }
            addr005c:
            _loc1_.id = "_ProgressThresholdIndicator_BriskImageDynaLib5";
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr008e:
                        this._ProgressThresholdIndicator_BriskImageDynaLib5 = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a1:
                           BindingManager.executeBindings(this,"_ProgressThresholdIndicator_BriskImageDynaLib5",this._ProgressThresholdIndicator_BriskImageDynaLib5);
                        }
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr008e);
            }
            addr00af:
            return _loc1_;
         }
         §§goto(addr00a1);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_right";
               if(_loc3_ || _loc3_)
               {
                  addr0057:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006b);
            }
            addr006f:
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _ProgressThresholdIndicator_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib7_c(),this._ProgressThresholdIndicator_BriskImageDynaLib8_c(),this._ProgressThresholdIndicator_BriskImageDynaLib9_c()];
                  addr0043:
                  if(_loc2_)
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr009f);
            }
            §§goto(addr0043);
         }
         addr006b:
         _loc1_.id = "mockProgressBar";
         if(!_loc3_)
         {
            addr0076:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr009f);
                  }
                  §§goto(addr00b1);
               }
            }
            addr009f:
            this.mockProgressBar = _loc1_;
            if(!(_loc3_ && _loc3_))
            {
               addr00b1:
               BindingManager.executeBindings(this,"mockProgressBar",this.mockProgressBar);
            }
            §§goto(addr00be);
         }
         addr00be:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_left";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0072);
            }
         }
         addr0076:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr005b:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr0079);
               }
               addr006d:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0079:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005b);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_yellow_right";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0077);
               }
            }
            §§goto(addr0073);
         }
         addr0077:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup4_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.left = 3;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.right = 3;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.visible = false;
                        addr0067:
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0083:
                           _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib10_c(),this._ProgressThresholdIndicator_BriskImageDynaLib11_i(),this._ProgressThresholdIndicator_BriskImageDynaLib12_c()];
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00a7:
                              _loc1_.id = "realProgressBarMaskGroup";
                              if(!_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00c6:
                                       _loc1_.document = this;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00e3:
                                          this.realProgressBarMaskGroup = _loc1_;
                                          if(_loc3_ || _loc2_)
                                          {
                                             BindingManager.executeBindings(this,"realProgressBarMaskGroup",this.realProgressBarMaskGroup);
                                          }
                                       }
                                    }
                                    §§goto(addr0102);
                                 }
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr0067);
            }
            addr0102:
            return _loc1_;
         }
         §§goto(addr00c6);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_left";
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr005e);
               }
               §§goto(addr0072);
            }
            addr005e:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0072:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_middle";
               if(_loc2_ || _loc3_)
               {
                  addr0051:
                  _loc1_.id = "_ProgressThresholdIndicator_BriskImageDynaLib11";
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr007b);
               }
               addr0064:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007b:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0084);
                     }
                     §§goto(addr0097);
                  }
               }
               addr0084:
               this._ProgressThresholdIndicator_BriskImageDynaLib11 = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr0097:
                  BindingManager.executeBindings(this,"_ProgressThresholdIndicator_BriskImageDynaLib11",this._ProgressThresholdIndicator_BriskImageDynaLib11);
               }
               §§goto(addr00a5);
            }
            §§goto(addr0051);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_right";
               if(_loc2_)
               {
                  §§goto(addr0053);
               }
               §§goto(addr0067);
            }
         }
         addr0053:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc2_)
            {
               addr0067:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_HGroup5_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ProgressThresholdIndicator_BriskImageDynaLib13_c(),this._ProgressThresholdIndicator_BriskImageDynaLib14_c(),this._ProgressThresholdIndicator_BriskImageDynaLib15_c()];
                  if(!_loc2_)
                  {
                     _loc1_.id = "realProgressBar";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008b:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00b9);
                           }
                        }
                        addr00a7:
                        this.realProgressBar = _loc1_;
                        if(_loc3_ || _loc2_)
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"realProgressBar",this.realProgressBar);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr00a7);
            }
            §§goto(addr00b9);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_left";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr007b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007f);
               }
            }
            §§goto(addr007b);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib14_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_middle";
               if(_loc3_)
               {
                  addr0054:
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0072:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0072);
            }
            §§goto(addr0054);
         }
         §§goto(addr0072);
      }
      
      private function _ProgressThresholdIndicator_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mini_infrabar_orange_right";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0069);
            }
         }
         addr006d:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.top = 2;
               if(!_loc2_)
               {
                  _loc1_.id = "dividerGroup";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0082:
                              this.dividerGroup = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0094:
                                 BindingManager.executeBindings(this,"dividerGroup",this.dividerGroup);
                              }
                           }
                           §§goto(addr00a1);
                        }
                     }
                  }
               }
               §§goto(addr0082);
            }
            §§goto(addr0094);
         }
         addr00a1:
         return _loc1_;
      }
      
      private function _ProgressThresholdIndicator_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return bgGroup.width - 7 - 7;
                        },null,"_ProgressThresholdIndicator_BriskImageDynaLib5.width");
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(1);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr009a:
                                    §§pop()[§§pop()] = new Binding(this,function():Number
                                    {
                                       return mockProgressBarMaskGroup.width;
                                    },null,"mockProgressBar.width");
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!_loc2_)
                                          {
                                             addr00c7:
                                             §§push(2);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():Object
                                                {
                                                   return mockProgressBarMaskGroup.width * -1;
                                                },null,"mockProgressBar.left");
                                                if(!_loc2_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr0109:
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(3);
                                                         if(_loc3_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,null,null,"mockProgressBar.mask","mockProgressBarMaskGroup");
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        addr015b:
                                                                        §§pop()[§§pop()] = new Binding(this,function():Number
                                                                        {
                                                                           return bgGroup.width - 7 - 7;
                                                                        },null,"_ProgressThresholdIndicator_BriskImageDynaLib11.width");
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              addr0181:
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0188:
                                                                                 §§push(5);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr018f:
                                                                                    §§pop()[§§pop()] = new Binding(this,function():Number
                                                                                    {
                                                                                       return realProgressBarMaskGroup.width;
                                                                                    },null,"realProgressBar.width");
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       addr01ae:
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr01b5);
                                                                                       }
                                                                                       §§goto(addr0222);
                                                                                    }
                                                                                    §§goto(addr01e2);
                                                                                 }
                                                                                 §§goto(addr020e);
                                                                              }
                                                                              §§goto(addr01c4);
                                                                           }
                                                                           addr01b5:
                                                                           §§push(§§pop().§§slot[1]);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr01c4:
                                                                              §§push(6);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§pop()[§§pop()] = new Binding(this,function():Object
                                                                                 {
                                                                                    return realProgressBarMaskGroup.width * -1;
                                                                                 },null,"realProgressBar.left");
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr01e2:
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr0224);
                                                                                    }
                                                                                    §§goto(addr0222);
                                                                                 }
                                                                                 §§goto(addr0220);
                                                                              }
                                                                              §§goto(addr020e);
                                                                           }
                                                                           §§goto(addr0224);
                                                                        }
                                                                        §§goto(addr01e2);
                                                                     }
                                                                     §§goto(addr020e);
                                                                  }
                                                                  addr0224:
                                                                  §§goto(addr01fd);
                                                               }
                                                               §§goto(addr0222);
                                                            }
                                                            §§goto(addr0220);
                                                         }
                                                         §§goto(addr015b);
                                                      }
                                                      §§goto(addr0188);
                                                   }
                                                   addr01fd:
                                                   §§push(§§pop().§§slot[1]);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      addr020e:
                                                      §§pop()[7] = new Binding(this,null,null,"realProgressBar.mask","realProgressBarMaskGroup");
                                                      addr0222:
                                                      addr0220:
                                                      return result;
                                                   }
                                                }
                                                §§goto(addr01e2);
                                             }
                                             §§goto(addr020e);
                                          }
                                          §§goto(addr0188);
                                       }
                                       §§goto(addr01b5);
                                    }
                                    §§goto(addr0220);
                                 }
                                 §§goto(addr018f);
                              }
                              §§goto(addr0188);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr01ae);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr0109);
            }
            §§goto(addr0220);
         }
         §§goto(addr0181);
      }
      
      [Bindable(event="propertyChange")]
      public function get bgGroup() : HGroup
      {
         return this._201073350bgGroup;
      }
      
      public function set bgGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._201073350bgGroup;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._201073350bgGroup = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0075);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerGroup() : Group
      {
         return this._1232143642dividerGroup;
      }
      
      public function set dividerGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1232143642dividerGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr003c:
                  this._1232143642dividerGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      [Bindable(event="propertyChange")]
      public function get mockProgressBar() : HGroup
      {
         return this._1281190588mockProgressBar;
      }
      
      public function set mockProgressBar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1281190588mockProgressBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1281190588mockProgressBar = param1;
                  if(_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mockProgressBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr005a);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get mockProgressBarMaskGroup() : HGroup
      {
         return this._1911456873mockProgressBarMaskGroup;
      }
      
      public function set mockProgressBarMaskGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1911456873mockProgressBarMaskGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr004e:
                  this._1911456873mockProgressBarMaskGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mockProgressBarMaskGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get realProgressBar() : HGroup
      {
         return this._1705522728realProgressBar;
      }
      
      public function set realProgressBar(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1705522728realProgressBar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1705522728realProgressBar = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realProgressBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get realProgressBarMaskGroup() : HGroup
      {
         return this._1816737365realProgressBarMaskGroup;
      }
      
      public function set realProgressBarMaskGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1816737365realProgressBarMaskGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1816737365realProgressBarMaskGroup = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realProgressBarMaskGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
         }
         addr0086:
      }
   }
}

