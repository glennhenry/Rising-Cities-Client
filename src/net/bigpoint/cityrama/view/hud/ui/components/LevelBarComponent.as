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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class LevelBarComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1685398036leveLabel:LocaLabel;
      
      private var _1194071934levelProgressBar:HUDProgressBarComponent;
      
      private var _1981580913levelStarIcon:BriskImageDynaLib;
      
      private var _758945874progressGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _progress:Number;
      
      private var _progressDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LevelBarComponent()
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
         if(!_loc3_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0035:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 addr0068:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_ || _loc2_)
                                 {
                                    super();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc1_)
                                          {
                                             §§pop().§§slot[1] = this._LevelBarComponent_bindingsSetup();
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr00f1:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     addr0120:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_components_LevelBarComponentWatcherSetupUtil");
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr0148:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr0157:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              addr0176:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return LevelBarComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 addr019a:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    addr01c8:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01ee:
                                                                                       this.percentWidth = 100;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01f8:
                                                                                          this.mxmlContent = [this._LevelBarComponent_Group2_c()];
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             addr0212:
                                                                                             i = 0;
                                                                                             addr0210:
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
                                                                                                      if(!(_loc4_ || _loc2_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc4_ || _loc1_)
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
                                                                                          while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, !(_loc3_ && _loc3_));
                                                                                          
                                                                                          return;
                                                                                          addr0299:
                                                                                       }
                                                                                       §§goto(addr0210);
                                                                                    }
                                                                                    §§goto(addr0299);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr01f8);
                                                                        }
                                                                        §§goto(addr0212);
                                                                     }
                                                                     §§goto(addr0176);
                                                                  }
                                                                  §§goto(addr0212);
                                                               }
                                                               §§goto(addr0210);
                                                            }
                                                            §§goto(addr0176);
                                                         }
                                                         §§goto(addr0210);
                                                      }
                                                      §§goto(addr0212);
                                                   }
                                                   §§goto(addr0210);
                                                }
                                                §§goto(addr0120);
                                             }
                                             §§goto(addr0299);
                                          }
                                          §§goto(addr0212);
                                       }
                                       §§goto(addr01ee);
                                    }
                                    §§goto(addr0176);
                                 }
                                 §§goto(addr01c8);
                              }
                              §§goto(addr01ee);
                           }
                           §§goto(addr0068);
                        }
                        §§goto(addr0148);
                     }
                     §§goto(addr019a);
                  }
                  §§goto(addr0157);
               }
               §§goto(addr0299);
            }
            §§goto(addr0035);
         }
         §§goto(addr00f1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            LevelBarComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
               addr004f:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr004f);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_ || _loc1_)
            {
               if(this._progressDirty)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0051:
                     this._progressDirty = false;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0063:
                        this.levelProgressBar.progress = this._progress;
                     }
                  }
               }
               return;
            }
            §§goto(addr0051);
         }
         §§goto(addr0063);
      }
      
      public function set progress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(this._progress,param1))
            {
               if(_loc3_ || Boolean(this))
               {
                  this._progress = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0078);
               }
               addr0066:
               this._progressDirty = true;
               if(_loc3_ || Boolean(this))
               {
                  addr0078:
                  invalidateProperties();
               }
               §§goto(addr007d);
            }
         }
         addr007d:
      }
      
      public function get pixelBounds() : Rectangle
      {
         return this.levelProgressBar.pixelBounds;
      }
      
      private function _LevelBarComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._LevelBarComponent_Group3_c(),this._LevelBarComponent_BriskImageDynaLib7_i()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0082:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0082);
      }
      
      private function _LevelBarComponent_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.left = 10;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._LevelBarComponent_HGroup1_c(),this._LevelBarComponent_Group4_c(),this._LevelBarComponent_Group5_i()];
                     addr0063:
                     if(!_loc2_)
                     {
                        §§goto(addr008c);
                     }
                     §§goto(addr00a0);
                  }
               }
               addr008c:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr00a0:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr00a0);
         }
         §§goto(addr0063);
      }
      
      private function _LevelBarComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalCenter = 0;
                  addr0056:
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._LevelBarComponent_BriskImageDynaLib1_c(),this._LevelBarComponent_BriskImageDynaLib2_c(),this._LevelBarComponent_BriskImageDynaLib3_c()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0094:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr0094);
               }
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _LevelBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && Boolean(this)))
            {
               addr004b:
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_left";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006a);
         }
         §§goto(addr004b);
      }
      
      private function _LevelBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc3_)
            {
               addr0034:
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_middle";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     addr0065:
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0065);
         }
         §§goto(addr0034);
      }
      
      private function _LevelBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_right";
               if(!_loc2_)
               {
                  §§goto(addr0048);
               }
               §§goto(addr0054);
            }
            addr0048:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0054:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0058);
         }
         addr0058:
         return _loc1_;
      }
      
      private function _LevelBarComponent_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.left = 5;
            if(_loc2_)
            {
               _loc1_.percentWidth = 23;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr004a);
               }
               §§goto(addr0099);
            }
            addr004a:
            _loc1_.verticalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._LevelBarComponent_HGroup2_c(),this._LevelBarComponent_VGroup1_c()];
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0085:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0099:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _LevelBarComponent_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._LevelBarComponent_BriskImageDynaLib4_c(),this._LevelBarComponent_BriskImageDynaLib5_c(),this._LevelBarComponent_BriskImageDynaLib6_c()];
                  §§goto(addr003f);
               }
               §§goto(addr007b);
            }
            addr003f:
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr007b:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr007f);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_left";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_middle";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr007f);
      }
      
      private function _LevelBarComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_right";
               if(_loc3_)
               {
                  addr0049:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0055:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0055);
            }
            addr0059:
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _LevelBarComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.height = 16;
                  if(!_loc3_)
                  {
                     _loc1_.paddingRight = 0;
                     if(!_loc3_)
                     {
                        _loc1_.paddingLeft = 22;
                        if(_loc2_)
                        {
                           addr0061:
                           _loc1_.paddingTop = 2;
                           if(!_loc3_)
                           {
                              _loc1_.percentWidth = 100;
                              if(_loc2_ || _loc2_)
                              {
                                 addr0089:
                                 _loc1_.mxmlContent = [this._LevelBarComponent_LocaLabel1_i()];
                                 if(!_loc3_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          addr00ad:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr0089);
                        }
                        addr00b1:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0089);
            }
            §§goto(addr00ad);
         }
         §§goto(addr0061);
      }
      
      private function _LevelBarComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "progressBarLabel";
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "leveLabel";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0076:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr007f);
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0091);
               }
               addr007f:
               this.leveLabel = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr0091:
                  BindingManager.executeBindings(this,"leveLabel",this.leveLabel);
               }
               return _loc1_;
            }
            §§goto(addr0091);
         }
         §§goto(addr0076);
      }
      
      private function _LevelBarComponent_Group5_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.right = 5;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 74;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._LevelBarComponent_HUDProgressBarComponent1_i()];
                     if(!_loc2_)
                     {
                        _loc1_.id = "progressGroup";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0084:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00b5);
                                 }
                              }
                              §§goto(addr00c7);
                           }
                           addr00b5:
                           this.progressGroup = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00c7:
                              BindingManager.executeBindings(this,"progressGroup",this.progressGroup);
                           }
                           §§goto(addr00d4);
                        }
                        addr00d4:
                        return _loc1_;
                     }
                     §§goto(addr00c7);
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr00c7);
         }
         §§goto(addr00b5);
      }
      
      private function _LevelBarComponent_HUDProgressBarComponent1_i() : HUDProgressBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HUDProgressBarComponent = new HUDProgressBarComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dividerCount = 4;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005e:
                  _loc1_.id = "levelProgressBar";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0093:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr009c:
                              this.levelProgressBar = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00ae:
                                 BindingManager.executeBindings(this,"levelProgressBar",this.levelProgressBar);
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00ae);
                        }
                        addr00bb:
                        return _loc1_;
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr0093);
            }
            §§goto(addr005e);
         }
         §§goto(addr00ae);
      }
      
      private function _LevelBarComponent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.left = 0;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "mainhud_icon_level";
                  if(_loc3_)
                  {
                     _loc1_.dynaLibName = "gui_main_hud";
                     if(_loc3_ || _loc2_)
                     {
                        addr0060:
                        _loc1_.visible = true;
                        if(_loc3_)
                        {
                           §§goto(addr0069);
                        }
                        §§goto(addr00a5);
                     }
                     addr0069:
                     _loc1_.id = "levelStarIcon";
                     if(_loc3_ || _loc3_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr009c:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr00a5);
                              }
                           }
                           §§goto(addr00af);
                        }
                        addr00a5:
                        this.levelStarIcon = _loc1_;
                        if(_loc3_)
                        {
                           addr00af:
                           BindingManager.executeBindings(this,"levelStarIcon",this.levelStarIcon);
                        }
                     }
                     §§goto(addr00bc);
                  }
                  addr00bc:
                  return _loc1_;
               }
               §§goto(addr009c);
            }
            §§goto(addr0060);
         }
         §§goto(addr007c);
      }
      
      private function _LevelBarComponent_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc2_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Array
                        {
                           var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                           return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                        },null,"leveLabel.filters");
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0096);
                  }
                  addr00ab:
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc1_)
                  {
                     addr0096:
                     §§pop()[1] = new Binding(this,function():Array
                     {
                        var _loc1_:* = HUDProgressBarComponent.LEVEL_COLOURS;
                        return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                     },null,"levelProgressBar.gradientColours");
                     addr00a9:
                     addr00a7:
                     return result;
                  }
               }
               §§goto(addr00a9);
            }
            §§goto(addr00a7);
         }
         §§goto(addr00a9);
      }
      
      [Bindable(event="propertyChange")]
      public function get leveLabel() : LocaLabel
      {
         return this._1685398036leveLabel;
      }
      
      public function set leveLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1685398036leveLabel;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1685398036leveLabel = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0071);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leveLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelProgressBar() : HUDProgressBarComponent
      {
         return this._1194071934levelProgressBar;
      }
      
      public function set levelProgressBar(param1:HUDProgressBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1194071934levelProgressBar;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1194071934levelProgressBar = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelProgressBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get levelStarIcon() : BriskImageDynaLib
      {
         return this._1981580913levelStarIcon;
      }
      
      public function set levelStarIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1981580913levelStarIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1981580913levelStarIcon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelStarIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
         }
         addr0079:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressGroup() : Group
      {
         return this._758945874progressGroup;
      }
      
      public function set progressGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._758945874progressGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._758945874progressGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
   }
}

