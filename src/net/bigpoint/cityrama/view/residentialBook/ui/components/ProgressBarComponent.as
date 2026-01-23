package net.bigpoint.cityrama.view.residentialBook.ui.components
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
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class ProgressBarComponent extends Group implements IBindingClient
   {
      
      public static const BLUE_BAR:Array;
      
      public static const GREEN_BAR:Array;
      
      public static const YELLOW_BAR:Array;
      
      public static const RED_BAR:Array;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         BLUE_BAR = [10218751,51699,1103359];
         if(!_loc1_)
         {
            GREEN_BAR = [14152339,9492739,10478869];
            if(_loc2_ || _loc1_)
            {
               addr0059:
               YELLOW_BAR = [16638862,16626434,16760328];
               if(_loc2_)
               {
                  addr006f:
                  RED_BAR = [16755616,16143924,16138005];
               }
            }
            return;
         }
         §§goto(addr0059);
      }
      §§goto(addr006f);
      
      public var _ProgressBarComponent_HGroup2:HGroup;
      
      private var _1766862153bottomGradientEntry:GradientEntry;
      
      private var _1232143642dividerGroup:Group;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1856344179middleGradientEntry:GradientEntry;
      
      private var _717533617progressRect:Rect;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var _1318318899staticBG:HGroup;
      
      private var _1193926707topGradientEntry:GradientEntry;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _label:String;
      
      private var _progress:Number;
      
      private var _dividerAsset:BriskDynaVo;
      
      private var _dividerCount:uint = 0;
      
      private var _dividerBuilt:Boolean;
      
      private var _gradientColours:Array;
      
      private var _progressDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProgressBarComponent()
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
         if(_loc4_)
         {
            §§push(null);
            if(_loc4_ || _loc2_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     addr0050:
                     §§pop().§§slot[5] = null;
                     if(_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    addr0088:
                                    super();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr0098:
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || Boolean(this))
                                          {
                                             addr00ba:
                                             §§pop().§§slot[1] = this._ProgressBarComponent_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr00d8:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            addr00ff:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr010c:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0114:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_components_ProgressBarComponentWatcherSetupUtil");
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           addr014c:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              addr016b:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ProgressBarComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0187:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr01dc:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01e7:
                                                                                          this.mxmlContent = [this._ProgressBarComponent_HGroup1_i(),this._ProgressBarComponent_Group2_c(),this._ProgressBarComponent_LocaLabel1_i(),this._ProgressBarComponent_BriskImageDynaLib4_i(),this._ProgressBarComponent_HGroup2_i()];
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             addr0218:
                                                                                             this.addEventListener("creationComplete",this.___ProgressBarComponent_Group1_creationComplete);
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                addr0233:
                                                                                                i = 0;
                                                                                                addr0231:
                                                                                             }
                                                                                          }
                                                                                          var _temp_16:*;
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
                                                                                                      if(!(_loc4_ || Boolean(this)))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc3_ && _loc1_))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !(_loc3_ && Boolean(this)));
                                                                                          
                                                                                          return;
                                                                                          addr02a0:
                                                                                       }
                                                                                       §§goto(addr0231);
                                                                                    }
                                                                                    §§goto(addr0218);
                                                                                 }
                                                                                 §§goto(addr01e7);
                                                                              }
                                                                              §§goto(addr0231);
                                                                           }
                                                                           §§goto(addr01dc);
                                                                        }
                                                                        §§goto(addr0233);
                                                                     }
                                                                     §§goto(addr01dc);
                                                                  }
                                                                  §§goto(addr014c);
                                                               }
                                                               §§goto(addr0231);
                                                            }
                                                            §§goto(addr016b);
                                                         }
                                                         §§goto(addr01e7);
                                                      }
                                                      §§goto(addr014c);
                                                   }
                                                   §§goto(addr010c);
                                                }
                                                §§goto(addr0114);
                                             }
                                             §§goto(addr0187);
                                          }
                                          §§goto(addr00d8);
                                       }
                                       §§goto(addr0218);
                                    }
                                    §§goto(addr00ff);
                                 }
                                 §§goto(addr016b);
                              }
                              §§goto(addr0218);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr016b);
                     }
                     §§goto(addr02a0);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr0088);
            }
            §§goto(addr0050);
         }
         §§goto(addr00d8);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            ProgressBarComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0048);
                  }
               }
               §§goto(addr004e);
            }
            addr0048:
            return;
         }
         addr004e:
         this.__moduleFactoryInitialized = true;
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.setGradientColours();
            if(!_loc2_)
            {
               this.labelDisplay.filters = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
               if(!_loc2_)
               {
                  addr004b:
                  this.dividerGroup.percentWidth = 100;
               }
               §§goto(addr0053);
            }
            §§goto(addr004b);
         }
         addr0053:
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 != this.progress)
            {
               if(!_loc2_)
               {
                  this._progressDirty = true;
                  if(_loc3_ || _loc2_)
                  {
                     this._progress = param1;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(this.revertProgress)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0078:
                              this._progress = 1 - this._progress;
                              if(_loc3_)
                              {
                                 addr0088:
                                 this.commitProperties();
                              }
                           }
                           §§goto(addr008e);
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0078);
            }
            addr008e:
            return;
         }
         §§goto(addr0088);
      }
      
      public function set dividerAsset(param1:BriskDynaVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._dividerAsset = param1;
            if(_loc3_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function set dividerCount(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._dividerCount = param1;
            if(_loc2_ || Boolean(this))
            {
               addr002a:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr002a);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.commitProperties();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this._dividerBuilt);
               if(_loc1_)
               {
                  §§push(!§§pop());
                  if(_loc1_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§pop();
                              if(_loc1_ || Boolean(this))
                              {
                                 §§push(this._dividerCount > 0);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr008a:
                                    var _temp_8:* = §§pop();
                                    addr008b:
                                    §§push(_temp_8);
                                    if(_temp_8)
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§pop();
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             addr00aa:
                                             §§push(this._dividerAsset == null);
                                             if(_loc1_)
                                             {
                                                addr00b5:
                                                §§push(!§§pop());
                                                if(_loc1_)
                                                {
                                                   addr00bb:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         this.setDivider();
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr00e9:
                                                            addr00ed:
                                                            if(this._progressDirty)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  this._progressDirty = false;
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr0108:
                                                                     this.progressRect.percentWidth = this._progress * 100;
                                                                  }
                                                                  §§goto(addr0115);
                                                               }
                                                               §§goto(addr0108);
                                                            }
                                                         }
                                                         §§goto(addr0115);
                                                      }
                                                   }
                                                   §§goto(addr00e9);
                                                }
                                             }
                                             §§goto(addr00ed);
                                          }
                                          §§goto(addr00e9);
                                       }
                                    }
                                 }
                                 §§goto(addr00bb);
                              }
                              addr0115:
                              return;
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr00ed);
               }
               §§goto(addr00b5);
            }
            §§goto(addr00aa);
         }
         §§goto(addr0108);
      }
      
      private function setDivider() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            if(this.dividerGroup.width > 0)
            {
               if(_loc4_)
               {
                  addr0033:
                  this.dividerGroup.removeAllElements();
                  if(_loc4_)
                  {
                     _loc2_ = 1;
                  }
               }
               while(_loc2_ <= this._dividerCount)
               {
                  _loc1_ = new BriskImageDynaLib();
                  if(_loc4_)
                  {
                     _loc1_.briskDynaVo = this._dividerAsset;
                     if(!_loc3_)
                     {
                        this.dividerGroup.addElement(_loc1_);
                        if(!_loc3_)
                        {
                           addr007d:
                           _loc1_.left = _loc2_ * (this.dividerGroup.width / (this._dividerCount + 1));
                           if(_loc3_ && Boolean(this))
                           {
                              continue;
                           }
                        }
                        addr009d:
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr009d);
               }
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  this._dividerBuilt = true;
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               this.dividerGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerGroupCreated);
            }
            return;
         }
         §§goto(addr0033);
      }
      
      private function onDividerGroupCreated(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.dividerGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerGroupCreated);
            if(_loc2_ || _loc2_)
            {
               addr0036:
               this.setDivider();
            }
            return;
         }
         §§goto(addr0036);
      }
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._label = param1;
            if(!_loc2_)
            {
               addr002a:
               this.labelDisplay.text = this._label;
            }
            return;
         }
         §§goto(addr002a);
      }
      
      public function set barColours(param1:Array) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(RandomUtilities.isUnEqual(param1,this._gradientColours))
            {
               if(_loc2_)
               {
                  addr0038:
                  this._gradientColours = param1;
                  if(_loc2_ || _loc3_)
                  {
                     this.setGradientColours();
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      private function setGradientColours() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._gradientColours);
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc1_)
                     {
                        addr0037:
                        §§pop();
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr0058);
                        }
                        §§goto(addr00ca);
                     }
                  }
                  addr0058:
                  §§goto(addr0049);
               }
               §§goto(addr0037);
            }
            addr0049:
            if(this._gradientColours.length == 3)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.topGradientEntry.color = this._gradientColours[0];
                  if(_loc2_)
                  {
                     this.middleGradientEntry.color = this._gradientColours[1];
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.bottomGradientEntry.color = this._gradientColours[2];
                        if(_loc1_)
                        {
                        }
                     }
                  }
               }
            }
            else
            {
               this._gradientColours = BLUE_BAR;
               if(_loc2_)
               {
                  addr00ca:
                  this.setGradientColours();
               }
            }
            return;
         }
         §§goto(addr00ca);
      }
      
      private function _ProgressBarComponent_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ProgressBarComponent_BriskImageDynaLib1_c(),this._ProgressBarComponent_BriskImageDynaLib2_c(),this._ProgressBarComponent_BriskImageDynaLib3_c()];
                  if(_loc3_)
                  {
                     _loc1_.id = "staticBG";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr009d:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00a6:
                                 this.staticBG = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00b8:
                                    BindingManager.executeBindings(this,"staticBG",this.staticBG);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00a6);
                     }
                     addr00c5:
                     return _loc1_;
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr00a6);
            }
            §§goto(addr009d);
         }
         §§goto(addr00b8);
      }
      
      private function _ProgressBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "timer_bar_left";
               if(_loc2_)
               {
                  _loc1_.width = 8;
                  if(_loc2_)
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0083);
               }
            }
         }
         addr0065:
         _loc1_.height = 25;
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr0083:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProgressBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "timer_bar_middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     §§goto(addr005b);
                  }
                  §§goto(addr0078);
               }
            }
            §§goto(addr008c);
         }
         addr005b:
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0078:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr008c:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProgressBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "timer_bar_right";
               if(_loc3_ || _loc3_)
               {
                  addr0051:
                  _loc1_.width = 9;
                  if(!_loc2_)
                  {
                     _loc1_.height = 25;
                     if(_loc3_ || Boolean(this))
                     {
                        addr007a:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007a);
            }
            §§goto(addr008e);
         }
         §§goto(addr0051);
      }
      
      private function _ProgressBarComponent_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.left = 4;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.top = 4;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.right = 4;
                  if(_loc2_)
                  {
                     addr0060:
                     _loc1_.percentWidth = 100;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._ProgressBarComponent_Rect1_i()];
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00a5:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a9);
                     }
                  }
               }
               §§goto(addr00a5);
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _ProgressBarComponent_Rect1_i() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 17;
               if(!_loc2_)
               {
                  _loc1_.radiusX = 4;
                  addr003e:
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.radiusY = 4;
                     if(!_loc2_)
                     {
                        _loc1_.fill = this._ProgressBarComponent_LinearGradient1_c();
                        if(_loc3_)
                        {
                           _loc1_.initialized(this,"progressRect");
                           if(!(_loc2_ && _loc3_))
                           {
                              addr009d:
                              this.progressRect = _loc1_;
                              if(_loc3_)
                              {
                                 addr00a7:
                                 BindingManager.executeBindings(this,"progressRect",this.progressRect);
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr009d);
                  }
               }
               addr00b4:
               return _loc1_;
            }
            §§goto(addr003e);
         }
         §§goto(addr00a7);
      }
      
      private function _ProgressBarComponent_LinearGradient1_c() : LinearGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradient = new LinearGradient();
         if(_loc3_)
         {
            _loc1_.rotation = 90;
            if(_loc3_)
            {
               _loc1_.entries = [this._ProgressBarComponent_GradientEntry1_i(),this._ProgressBarComponent_GradientEntry2_i(),this._ProgressBarComponent_GradientEntry3_i()];
            }
         }
         return _loc1_;
      }
      
      private function _ProgressBarComponent_GradientEntry1_i() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc2_)
         {
            _loc1_.color = 10218751;
            if(_loc2_ || _loc3_)
            {
               addr0043:
               _loc1_.ratio = 0.25;
               if(_loc2_)
               {
                  this.topGradientEntry = _loc1_;
                  if(_loc2_)
                  {
                     BindingManager.executeBindings(this,"topGradientEntry",this.topGradientEntry);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0043);
      }
      
      private function _ProgressBarComponent_GradientEntry2_i() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc3_ || _loc2_)
         {
            _loc1_.color = 51699;
            if(!_loc2_)
            {
               this.middleGradientEntry = _loc1_;
               if(!_loc2_)
               {
                  addr0050:
                  BindingManager.executeBindings(this,"middleGradientEntry",this.middleGradientEntry);
               }
            }
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _ProgressBarComponent_GradientEntry3_i() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.color = 1103359;
            if(_loc2_ || _loc2_)
            {
               addr0055:
               this.bottomGradientEntry = _loc1_;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  BindingManager.executeBindings(this,"bottomGradientEntry",this.bottomGradientEntry);
               }
            }
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _ProgressBarComponent_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr0057);
            }
            addr003b:
            _loc1_.height = 17;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0057:
                  _loc1_.styleName = "progressBarLabel";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.maxDisplayedLines = 1;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.setStyle("paddingLeft",4);
                        if(!_loc2_)
                        {
                           _loc1_.setStyle("paddingRight",4);
                           if(!_loc2_)
                           {
                              addr00a5:
                              _loc1_.setStyle("paddingTop",4);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00bb:
                                 _loc1_.id = "labelDisplay";
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00ce:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          _loc1_.document = this;
                                          if(_loc3_)
                                          {
                                             addr00f5:
                                             this.labelDisplay = _loc1_;
                                             if(!_loc2_)
                                             {
                                                addr00ff:
                                                BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                                             }
                                             §§goto(addr010c);
                                          }
                                          §§goto(addr00ff);
                                       }
                                       §§goto(addr010c);
                                    }
                                 }
                                 §§goto(addr00f5);
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr010c);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00ff);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr00f5);
            }
            addr010c:
            return _loc1_;
         }
         §§goto(addr00a5);
      }
      
      private function _ProgressBarComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "sparkle";
            if(_loc2_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(!_loc3_)
               {
                  _loc1_.visible = false;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0046:
                     _loc1_.top = -7;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.left = -5;
                        if(!_loc3_)
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr007e);
                           }
                           §§goto(addr00cc);
                        }
                     }
                     §§goto(addr00b1);
                  }
                  addr007e:
                  _loc1_.id = "sparkle";
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr00b1:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr00c2);
                           }
                        }
                        §§goto(addr00cc);
                     }
                  }
                  §§goto(addr00c2);
               }
               addr00c2:
               this.sparkle = _loc1_;
               if(_loc2_)
               {
                  addr00cc:
                  BindingManager.executeBindings(this,"sparkle",this.sparkle);
               }
               return _loc1_;
            }
            §§goto(addr0046);
         }
         §§goto(addr00cc);
      }
      
      private function _ProgressBarComponent_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.paddingLeft = 2;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.paddingRight = 2;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr0079);
                     }
                  }
               }
               §§goto(addr00c4);
            }
            addr0079:
            _loc1_.mxmlContent = [this._ProgressBarComponent_Group3_i()];
            if(!_loc2_)
            {
               _loc1_.id = "_ProgressBarComponent_HGroup2";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr00c4);
                        }
                     }
                     §§goto(addr00ce);
                  }
                  addr00c4:
                  this._ProgressBarComponent_HGroup2 = _loc1_;
                  if(_loc3_)
                  {
                     addr00ce:
                     BindingManager.executeBindings(this,"_ProgressBarComponent_HGroup2",this._ProgressBarComponent_HGroup2);
                  }
                  §§goto(addr00db);
               }
            }
            §§goto(addr00db);
         }
         addr00db:
         return _loc1_;
      }
      
      private function _ProgressBarComponent_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.id = "dividerGroup";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0060:
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0071:
                        this.dividerGroup = _loc1_;
                        if(_loc3_)
                        {
                           addr007b:
                           BindingManager.executeBindings(this,"dividerGroup",this.dividerGroup);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007b);
                  }
                  addr0088:
                  return _loc1_;
               }
               §§goto(addr0071);
            }
            §§goto(addr0060);
         }
         §§goto(addr0071);
      }
      
      public function ___ProgressBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _ProgressBarComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return staticBG.width;
                        },null,"_ProgressBarComponent_HGroup2.width");
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr00b0);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr009b);
                  }
                  addr00b0:
                  §§goto(addr008a);
               }
               §§goto(addr00ae);
            }
            §§goto(addr00ac);
         }
         addr008a:
         §§push(§§pop().§§slot[1]);
         if(_loc3_ || Boolean(this))
         {
            addr009b:
            §§pop()[1] = new Binding(this,function():Number
            {
               return staticBG.width - 4;
            },null,"dividerGroup.width");
            addr00ae:
            addr00ac:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomGradientEntry() : GradientEntry
      {
         return this._1766862153bottomGradientEntry;
      }
      
      public function set bottomGradientEntry(param1:GradientEntry) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1766862153bottomGradientEntry;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1766862153bottomGradientEntry = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomGradientEntry",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerGroup() : Group
      {
         return this._1232143642dividerGroup;
      }
      
      public function set dividerGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1232143642dividerGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1232143642dividerGroup = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1184053038labelDisplay;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1184053038labelDisplay = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get middleGradientEntry() : GradientEntry
      {
         return this._1856344179middleGradientEntry;
      }
      
      public function set middleGradientEntry(param1:GradientEntry) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1856344179middleGradientEntry;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1856344179middleGradientEntry = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleGradientEntry",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressRect() : Rect
      {
         return this._717533617progressRect;
      }
      
      public function set progressRect(param1:Rect) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._717533617progressRect;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._717533617progressRect = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressRect",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get sparkle() : BriskImageDynaLib
      {
         return this._2011710186sparkle;
      }
      
      public function set sparkle(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2011710186sparkle;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2011710186sparkle = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get staticBG() : HGroup
      {
         return this._1318318899staticBG;
      }
      
      public function set staticBG(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1318318899staticBG;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1318318899staticBG = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0062:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticBG",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get topGradientEntry() : GradientEntry
      {
         return this._1193926707topGradientEntry;
      }
      
      public function set topGradientEntry(param1:GradientEntry) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1193926707topGradientEntry;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1193926707topGradientEntry = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0075);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGradientEntry",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
   }
}

