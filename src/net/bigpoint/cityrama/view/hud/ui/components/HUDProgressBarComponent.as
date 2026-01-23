package net.bigpoint.cityrama.view.hud.ui.components
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
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class HUDProgressBarComponent extends Group implements IBindingClient
   {
      
      public static const ENERGY_COLOURS:Array;
      
      public static const LEVEL_COLOURS:Array;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         ENERGY_COLOURS = [10218751,51699,1103359];
         if(_loc1_)
         {
            §§goto(addr0032);
         }
         §§goto(addr0046);
      }
      addr0032:
      
      public static const HAPPINESS_COLOURS:Array = [14152339,9492739,10478869];
      
      if(!_loc2_)
      {
         addr0046:
         LEVEL_COLOURS = [16638862,16626434,16760328];
      }
      
      public var _HUDProgressBarComponent_HGroup2:HGroup;
      
      private var _1766862153bottomGradientEntry:GradientEntry;
      
      private var _1232143642dividerGroup:Group;
      
      private var _1856344179middleGradientEntry:GradientEntry;
      
      private var _717533617progressRect:Rect;
      
      private var _1318318899staticBG:HGroup;
      
      private var _1193926707topGradientEntry:GradientEntry;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _progress:Number;
      
      private var _dividerAsset:BriskDynaVo;
      
      private var _dividerCount:uint = 0;
      
      private var _gradientColours:Array;
      
      private var _dividerBuilt:Boolean;
      
      private var _progressDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function HUDProgressBarComponent()
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
            if(!(_loc4_ && Boolean(this)))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0042:
                     §§pop().§§slot[5] = null;
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    super();
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr009b:
                                       mx_internal::_document = this;
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          addr00b6:
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§pop().§§slot[1] = this._HUDProgressBarComponent_bindingsSetup();
                                             if(_loc3_)
                                             {
                                                addr00d5:
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr011f:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     addr012f:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_components_HUDProgressBarComponentWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           addr0168:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr017e:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return HUDProgressBarComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0199:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       addr01f5:
                                                                                       this.percentWidth = 100;
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          addr0208:
                                                                                          this.minWidth = 0;
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             addr021b:
                                                                                             this.mxmlContent = [this._HUDProgressBarComponent_HGroup1_i(),this._HUDProgressBarComponent_Group2_c(),this._HUDProgressBarComponent_HGroup2_i()];
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr0240:
                                                                                                this.addEventListener("creationComplete",this.___HUDProgressBarComponent_Group1_creationComplete);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0254:
                                                                                                   i = 0;
                                                                                                   addr0252:
                                                                                                }
                                                                                                var _temp_19:*;
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
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc4_ && _loc2_))
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
                                                                                                while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, !(_loc4_ && _loc3_));
                                                                                                
                                                                                                return;
                                                                                                addr02b8:
                                                                                             }
                                                                                             §§goto(addr0252);
                                                                                          }
                                                                                          §§goto(addr0240);
                                                                                       }
                                                                                       §§goto(addr0252);
                                                                                    }
                                                                                    §§goto(addr02b8);
                                                                                 }
                                                                                 §§goto(addr0252);
                                                                              }
                                                                              §§goto(addr0208);
                                                                           }
                                                                           §§goto(addr021b);
                                                                        }
                                                                        §§goto(addr0254);
                                                                     }
                                                                     §§goto(addr0252);
                                                                  }
                                                                  §§goto(addr0254);
                                                               }
                                                               §§goto(addr0208);
                                                            }
                                                         }
                                                         §§goto(addr017e);
                                                      }
                                                      §§goto(addr0168);
                                                   }
                                                   §§goto(addr0199);
                                                }
                                                §§goto(addr012f);
                                             }
                                             §§goto(addr0208);
                                          }
                                          §§goto(addr012f);
                                       }
                                       §§goto(addr021b);
                                    }
                                    §§goto(addr01f5);
                                 }
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr021b);
                        }
                        §§goto(addr0199);
                     }
                     §§goto(addr011f);
                  }
                  §§goto(addr012f);
               }
               §§goto(addr009b);
            }
            §§goto(addr0042);
         }
         §§goto(addr0254);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || HUDProgressBarComponent)
         {
            HUDProgressBarComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr002c:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr002c);
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!this._gradientColours)
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._gradientColours = [8421504,10526880,2105376];
                  if(_loc3_)
                  {
                     addr005f:
                     this.setGradientColours();
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0071:
                        this.dividerGroup.percentWidth = 100;
                     }
                  }
               }
               return;
            }
            §§goto(addr005f);
         }
         §§goto(addr0071);
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 != this.progress)
            {
               if(_loc2_ || Boolean(param1))
               {
                  this._progressDirty = true;
                  addr002c:
                  if(_loc2_)
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr0060);
               }
               addr0044:
               this._progress = param1;
               if(_loc2_ || Boolean(param1))
               {
                  addr0060:
                  if(this.revertProgress)
                  {
                     if(_loc2_)
                     {
                        this._progress = 1 - this._progress;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0085:
                           invalidateProperties();
                        }
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr008a);
            }
            addr008a:
            return;
         }
         §§goto(addr002c);
      }
      
      public function set dividerCount(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._dividerCount = param1;
            if(_loc3_ || _loc3_)
            {
               addr003d:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr003d);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.commitProperties();
            if(_loc2_)
            {
               §§push(this._dividerBuilt);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(!§§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(!_loc1_)
                           {
                              §§push(this._dividerCount > 0);
                              if(!_loc1_)
                              {
                                 addr006e:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr007f:
                                       this.setDivider();
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr009b:
                                          addr009f:
                                          if(this._progressDirty)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00b0:
                                                this._progressDirty = false;
                                                if(!_loc1_)
                                                {
                                                   addr00ba:
                                                   this.progressRect.percentWidth = this._progress * 100;
                                                }
                                                §§goto(addr00c7);
                                             }
                                             §§goto(addr00ba);
                                          }
                                       }
                                       §§goto(addr00c7);
                                    }
                                    §§goto(addr00b0);
                                 }
                                 §§goto(addr009b);
                              }
                              §§goto(addr009f);
                           }
                           addr00c7:
                           return;
                        }
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr006e);
            }
            §§goto(addr007f);
         }
         §§goto(addr009b);
      }
      
      public function get pixelBounds() : Rectangle
      {
         return this.progressRect.transform.pixelBounds;
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
               if(_loc4_ || Boolean(_loc2_))
               {
                  this.dividerGroup.removeAllElements();
                  if(_loc4_)
                  {
                     addr0048:
                     if(!this._dividerAsset)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr005d:
                           this._dividerAsset = new BriskDynaVo("gui_main_hud","mainhud_divider");
                           if(_loc4_)
                           {
                              addr0073:
                              _loc2_ = 1;
                           }
                        }
                        while(_loc2_ <= this._dividerCount)
                        {
                           _loc1_ = new BriskImageDynaLib();
                           if(_loc4_ || _loc3_)
                           {
                              _loc1_.briskDynaVo = this._dividerAsset;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.dividerGroup.addElement(_loc1_);
                                 if(!(_loc4_ || Boolean(_loc1_)))
                                 {
                                    continue;
                                 }
                                 _loc1_.left = _loc2_ * (this.dividerGroup.width / (this._dividerCount + 1));
                                 if(!(_loc4_ || Boolean(_loc2_)))
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc2_++;
                        }
                        if(_loc4_)
                        {
                           this._dividerBuilt = true;
                           if(_loc3_)
                           {
                           }
                        }
                        addr0127:
                        return;
                        addr00f8:
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr00f8);
            }
            else
            {
               this.dividerGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerGroupCreated);
            }
            §§goto(addr0127);
         }
         §§goto(addr0048);
      }
      
      private function onDividerGroupCreated(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.dividerGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerGroupCreated);
            if(_loc3_ || _loc2_)
            {
               addr0043:
               this.setDivider();
            }
            return;
         }
         §§goto(addr0043);
      }
      
      public function set gradientColours(param1:Array) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            if(param1 != this._gradientColours)
            {
               if(_loc2_ || Boolean(this))
               {
                  this._gradientColours = param1;
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0052:
                     this.setGradientColours();
                  }
               }
            }
            return;
         }
         §§goto(addr0052);
      }
      
      private function setGradientColours() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(this._gradientColours.length > 2)
            {
               if(_loc1_ || Boolean(this))
               {
                  this.topGradientEntry.color = this._gradientColours[0];
                  if(!_loc2_)
                  {
                     addr005f:
                     this.middleGradientEntry.color = this._gradientColours[1];
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007c:
                        this.bottomGradientEntry.color = this._gradientColours[2];
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007c);
            }
            addr008c:
            return;
         }
         §§goto(addr005f);
      }
      
      private function _HUDProgressBarComponent_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               addr002a:
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._HUDProgressBarComponent_BriskImageDynaLib1_c(),this._HUDProgressBarComponent_BriskImageDynaLib2_c(),this._HUDProgressBarComponent_BriskImageDynaLib3_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0092);
            }
            addr0066:
            _loc1_.id = "staticBG";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0089:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr0092:
                        this.staticBG = _loc1_;
                        if(_loc3_)
                        {
                           addr009c:
                           BindingManager.executeBindings(this,"staticBG",this.staticBG);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0092);
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr002a);
      }
      
      private function _HUDProgressBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_left";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.width = 5;
                  if(_loc3_)
                  {
                     _loc1_.height = 16;
                     addr005d:
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr008d);
                  }
                  addr0091:
                  return _loc1_;
               }
               §§goto(addr008d);
            }
            §§goto(addr0079);
         }
         §§goto(addr005d);
      }
      
      private function _HUDProgressBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_middle";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  addr0051:
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr0085);
               }
               addr006f:
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0089);
            }
            §§goto(addr0051);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_right";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.width = 5;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr008a);
               }
               addr006c:
               _loc1_.height = 16;
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr008a:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr008a);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.left = 1;
            if(!_loc2_)
            {
               addr0028:
               _loc1_.top = 1;
               if(_loc3_)
               {
                  addr0040:
                  _loc1_.right = 1;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._HUDProgressBarComponent_Rect1_i()];
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0080);
                        }
                        §§goto(addr008c);
                     }
                     addr0080:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr008c:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr0040);
         }
         §§goto(addr0028);
      }
      
      private function _HUDProgressBarComponent_Rect1_i() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 14;
               if(_loc2_)
               {
                  _loc1_.bottomLeftRadiusX = 3;
                  if(_loc2_)
                  {
                     addr0050:
                     _loc1_.bottomLeftRadiusY = 3;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.bottomRightRadiusX = 1;
                        if(_loc2_)
                        {
                           _loc1_.bottomRightRadiusY = 3;
                           addr006e:
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.topLeftRadiusX = 1;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.topLeftRadiusY = 3;
                                 if(_loc2_)
                                 {
                                    _loc1_.topRightRadiusX = 1;
                                    if(_loc2_)
                                    {
                                       addr00b5:
                                       _loc1_.topRightRadiusY = 3;
                                       if(!_loc3_)
                                       {
                                          _loc1_.fill = this._HUDProgressBarComponent_LinearGradient1_c();
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             addr00e4:
                                             _loc1_.initialized(this,"progressRect");
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr00fa:
                                                this.progressRect = _loc1_;
                                                if(!_loc3_)
                                                {
                                                   addr0104:
                                                   BindingManager.executeBindings(this,"progressRect",this.progressRect);
                                                }
                                                §§goto(addr0111);
                                             }
                                             §§goto(addr0104);
                                          }
                                          §§goto(addr0111);
                                       }
                                    }
                                    §§goto(addr00e4);
                                 }
                              }
                              §§goto(addr0104);
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr00e4);
                  }
                  addr0111:
                  return _loc1_;
               }
               §§goto(addr0050);
            }
            §§goto(addr006e);
         }
         §§goto(addr0104);
      }
      
      private function _HUDProgressBarComponent_LinearGradient1_c() : LinearGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LinearGradient = new LinearGradient();
         if(!_loc3_)
         {
            _loc1_.rotation = 90;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.entries = [this._HUDProgressBarComponent_GradientEntry1_i(),this._HUDProgressBarComponent_GradientEntry2_i(),this._HUDProgressBarComponent_GradientEntry3_i()];
            }
         }
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_GradientEntry1_i() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc2_ || _loc2_)
         {
            _loc1_.color = 8421504;
            if(!(_loc3_ && _loc2_))
            {
               addr0055:
               _loc1_.ratio = 0.25;
               if(!(_loc3_ && _loc2_))
               {
                  this.topGradientEntry = _loc1_;
                  if(!_loc3_)
                  {
                     addr0072:
                     BindingManager.executeBindings(this,"topGradientEntry",this.topGradientEntry);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0072);
            }
            addr007f:
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _HUDProgressBarComponent_GradientEntry2_i() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.color = 10526880;
            if(!_loc2_)
            {
               this.middleGradientEntry = _loc1_;
               if(_loc3_)
               {
                  addr004b:
                  BindingManager.executeBindings(this,"middleGradientEntry",this.middleGradientEntry);
               }
               §§goto(addr0058);
            }
            §§goto(addr004b);
         }
         addr0058:
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_GradientEntry3_i() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.color = 2105376;
            if(!(_loc2_ && Boolean(this)))
            {
               this.bottomGradientEntry = _loc1_;
               if(!_loc2_)
               {
                  addr0064:
                  BindingManager.executeBindings(this,"bottomGradientEntry",this.bottomGradientEntry);
               }
            }
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _HUDProgressBarComponent_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._HUDProgressBarComponent_Group3_i()];
                  if(_loc3_)
                  {
                     _loc1_.id = "_HUDProgressBarComponent_HGroup2";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0080:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0095:
                                 this._HUDProgressBarComponent_HGroup2 = _loc1_;
                                 if(!_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"_HUDProgressBarComponent_HGroup2",this._HUDProgressBarComponent_HGroup2);
                                 }
                              }
                              §§goto(addr00ac);
                           }
                        }
                     }
                     §§goto(addr0095);
                  }
                  addr00ac:
                  return _loc1_;
               }
            }
            §§goto(addr0080);
         }
         §§goto(addr0095);
      }
      
      private function _HUDProgressBarComponent_Group3_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.id = "dividerGroup";
            if(!_loc2_)
            {
               addr003e:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0067);
                     }
                  }
                  §§goto(addr0071);
               }
            }
            addr0067:
            this.dividerGroup = _loc1_;
            if(_loc3_)
            {
               addr0071:
               BindingManager.executeBindings(this,"dividerGroup",this.dividerGroup);
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      public function ___HUDProgressBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      private function _HUDProgressBarComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(0);
                     if(_loc3_ || Boolean(this))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return this.staticBG.width;
                        },null,"_HUDProgressBarComponent_HGroup2.width");
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§newactivation());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr00b4);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr009f);
                  }
                  addr00b4:
                  §§goto(addr0096);
               }
               §§goto(addr00b2);
            }
            §§goto(addr00b0);
         }
         addr0096:
         §§push(§§pop().§§slot[1]);
         if(_loc3_)
         {
            addr009f:
            §§pop()[1] = new Binding(this,function():Number
            {
               return this.staticBG.width - 3;
            },null,"dividerGroup.width");
            addr00b2:
            addr00b0:
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1766862153bottomGradientEntry = param1;
                  addr0038:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomGradientEntry",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0038);
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
               if(!_loc4_)
               {
                  this._1232143642dividerGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0059);
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
               if(!_loc3_)
               {
                  this._1856344179middleGradientEntry = param1;
                  if(!_loc3_)
                  {
                     addr004c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleGradientEntry",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr004c);
            }
            addr0072:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressRect() : Rect
      {
         return this._717533617progressRect;
      }
      
      public function set progressRect(param1:Rect) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._717533617progressRect;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._717533617progressRect = param1;
                  addr003e:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressRect",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr003e);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1318318899staticBG = param1;
                  addr0040:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticBG",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0040);
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1193926707topGradientEntry = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0074);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGradientEntry",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
   }
}

