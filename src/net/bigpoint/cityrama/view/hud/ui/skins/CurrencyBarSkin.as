package net.bigpoint.cityrama.view.hud.ui.skins
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
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.hud.ui.components.CurrencyBar;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class CurrencyBarSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _563971436plusButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:CurrencyBar;
      
      public function CurrencyBarSkin()
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
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || Boolean(this))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        addr0057:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0071:
                              §§pop().§§slot[5] = null;
                              addr0070:
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || _loc1_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             super();
                                             if(_loc4_)
                                             {
                                                addr00c2:
                                                mx_internal::_document = this;
                                                if(!_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§pop().§§slot[1] = this._CurrencyBarSkin_bindingsSetup();
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               addr0107:
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr0116:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0136:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr014b:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_skins_CurrencyBarSkinWatcherSetupUtil");
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§goto(addr016f);
                                                                                 }
                                                                                 §§goto(addr025c);
                                                                              }
                                                                              §§goto(addr025a);
                                                                           }
                                                                           §§goto(addr025c);
                                                                        }
                                                                        §§goto(addr025a);
                                                                     }
                                                                  }
                                                                  §§goto(addr0186);
                                                               }
                                                               §§goto(addr025c);
                                                            }
                                                            §§goto(addr0136);
                                                         }
                                                         addr016f:
                                                         §§pop().§§slot[5]["init"](null);
                                                         if(_loc4_)
                                                         {
                                                            addr0186:
                                                            _watcherSetupUtil.setup(this,function(param1:String):*
                                                            {
                                                               return target[param1];
                                                            },function(param1:String):*
                                                            {
                                                               return CurrencyBarSkin[param1];
                                                            },bindings,watchers);
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               addr01a9:
                                                               mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                               if(_loc4_)
                                                               {
                                                                  mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr01f7);
                                                                  }
                                                               }
                                                               §§goto(addr0208);
                                                            }
                                                            §§goto(addr025a);
                                                         }
                                                         §§goto(addr01f7);
                                                      }
                                                      §§goto(addr0208);
                                                   }
                                                   §§goto(addr025c);
                                                }
                                                §§goto(addr01a9);
                                             }
                                             §§goto(addr0214);
                                          }
                                          §§goto(addr0186);
                                       }
                                       §§goto(addr0136);
                                    }
                                    §§goto(addr0107);
                                 }
                                 addr01f7:
                                 this.mxmlContent = [this._CurrencyBarSkin_Group1_c()];
                                 if(_loc4_)
                                 {
                                    addr0208:
                                    this.currentState = "normal";
                                    if(!_loc3_)
                                    {
                                       addr0214:
                                       this.addEventListener("creationComplete",this.___CurrencyBarSkin_SparkSkin1_creationComplete);
                                       if(!_loc3_)
                                       {
                                          states = [new State({
                                             "name":"normal",
                                             "overrides":[]
                                          }),new State({
                                             "name":"disabled",
                                             "overrides":[]
                                          })];
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr025c:
                                             i = 0;
                                             addr025a:
                                          }
                                       }
                                    }
                                 }
                                 var _temp_15:*;
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
                                                if(!_loc3_)
                                                {
                                                   §§push(uint(§§pop() + 1));
                                                   if(_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                                §§push(§§newactivation());
                                                if(_loc4_)
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
                                 while(var _temp_15:* = §§pop(), §§pop().§§slot[4] = _temp_15, !_loc3_);
                                 
                                 return;
                              }
                              §§goto(addr0208);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0214);
            }
            §§goto(addr0057);
         }
         §§goto(addr014b);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            CurrencyBarSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.icon);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.hostComponent);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push("libName");
                  if(_loc1_ || _loc1_)
                  {
                     §§pop().dynaLibName = §§pop().getStyle(§§pop()) as String;
                     if(_loc1_)
                     {
                        addr0072:
                        this.icon.dynaBmpSourceName = this.hostComponent.getStyle("imageName") as String;
                        addr006f:
                        addr006c:
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr006f);
            }
            §§goto(addr006c);
         }
         addr007b:
      }
      
      private function _CurrencyBarSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._CurrencyBarSkin_Group2_c(),this._CurrencyBarSkin_BriskImageDynaLib7_i(),this._CurrencyBarSkin_LocaLabel1_i(),this._CurrencyBarSkin_Group3_c()];
                  if(_loc3_ || _loc2_)
                  {
                     addr008b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr009f:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009f);
            }
         }
         §§goto(addr008b);
      }
      
      private function _CurrencyBarSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.left = 10;
                  if(_loc3_)
                  {
                     _loc1_.right = 10;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._CurrencyBarSkin_HGroup1_c(),this._CurrencyBarSkin_HGroup2_c()];
                        addr0065:
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr008e:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a2:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00a2);
                     }
                     addr00a6:
                     return _loc1_;
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0065);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0065);
      }
      
      private function _CurrencyBarSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0064:
                     _loc1_.mxmlContent = [this._CurrencyBarSkin_BriskImageDynaLib1_c(),this._CurrencyBarSkin_BriskImageDynaLib2_c(),this._CurrencyBarSkin_BriskImageDynaLib3_c()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008c:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr008c);
               }
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _CurrencyBarSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_left";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0058:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0058);
            }
            addr005c:
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _CurrencyBarSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0082);
                     }
                     §§goto(addr0096);
                  }
               }
               addr0082:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0096:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr009a);
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _CurrencyBarSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_right";
               if(_loc3_)
               {
                  addr004a:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0056);
         }
         §§goto(addr004a);
      }
      
      private function _CurrencyBarSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.left = 10;
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr00ba);
               }
            }
            §§goto(addr007f);
         }
         addr0063:
         _loc1_.right = 6;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._CurrencyBarSkin_BriskImageDynaLib4_c(),this._CurrencyBarSkin_BriskImageDynaLib5_c(),this._CurrencyBarSkin_BriskImageDynaLib6_c()];
               addr007f:
               if(_loc2_)
               {
                  §§goto(addr00a6);
               }
            }
            §§goto(addr00ba);
         }
         addr00a6:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr00ba:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CurrencyBarSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_)
            {
               §§goto(addr0038);
            }
            §§goto(addr0043);
         }
         addr0038:
         _loc1_.dynaBmpSourceName = "mainhud_innerbar_left";
         if(!_loc3_)
         {
            addr0043:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CurrencyBarSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_middle";
               addr0033:
               if(!(_loc2_ && _loc2_))
               {
                  addr0052:
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr0052);
         }
         §§goto(addr0033);
      }
      
      private function _CurrencyBarSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_right";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr006e:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006e);
      }
      
      private function _CurrencyBarSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.left = 0;
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "icon";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr008c:
                              this.icon = _loc1_;
                              if(_loc3_)
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"icon",this.icon);
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0096);
                     }
                  }
               }
               §§goto(addr008c);
            }
         }
         §§goto(addr0096);
      }
      
      private function _CurrencyBarSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.verticalCenter = 1;
            if(_loc3_ || _loc2_)
            {
               _loc1_.styleName = "fontABlack";
               if(!_loc2_)
               {
                  addr0046:
                  _loc1_.right = 25;
                  if(!_loc2_)
                  {
                     _loc1_.left = 25;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006e:
                        _loc1_.setStyle("color",16777215);
                        if(_loc3_)
                        {
                           _loc1_.setStyle("textAlign","center");
                           if(!_loc2_)
                           {
                              addr008a:
                              _loc1_.setStyle("fontSize",11);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a0:
                                 _loc1_.id = "labelDisplay";
                                 if(_loc3_)
                                 {
                                    addr00ab:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr00ca:
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             addr00d3:
                                             this.labelDisplay = _loc1_;
                                             if(!(_loc2_ && Boolean(_loc1_)))
                                             {
                                                addr00e5:
                                                BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr00e5);
                                       }
                                       addr00f2:
                                       return _loc1_;
                                    }
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00ab);
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr00a0);
            }
            §§goto(addr0046);
         }
         §§goto(addr006e);
      }
      
      private function _CurrencyBarSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.minWidth = 25;
            if(!_loc2_)
            {
               _loc1_.minHeight = 25;
               if(!(_loc2_ && _loc3_))
               {
                  addr0049:
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     addr0053:
                     _loc1_.right = 0;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CurrencyBarSkin_DynamicImageButton1_i()];
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0053);
         }
         §§goto(addr0049);
      }
      
      private function _CurrencyBarSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "plusButton";
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.width = 25;
                     if(!_loc2_)
                     {
                        _loc1_.height = 25;
                        if(!_loc2_)
                        {
                           addr0072:
                           _loc1_.id = "plusButton";
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0091:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr009d);
                                 }
                              }
                           }
                           §§goto(addr00a6);
                        }
                        addr009d:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr00a6:
                           this.plusButton = _loc1_;
                           if(!_loc2_)
                           {
                              addr00b0:
                              BindingManager.executeBindings(this,"plusButton",this.plusButton);
                           }
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr0072);
                  }
                  addr00bd:
                  return _loc1_;
               }
               §§goto(addr0091);
            }
            §§goto(addr00b0);
         }
         §§goto(addr0091);
      }
      
      public function ___CurrencyBarSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleCreationComplete();
         }
      }
      
      private function _CurrencyBarSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || Boolean(this))
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§pop()[0] = new Binding(this,function():Array
                     {
                        var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                        return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                     },null,"labelDisplay.filters");
                     addr0071:
                     addr006f:
                     return result;
                  }
               }
               §§goto(addr0071);
            }
            §§goto(addr006f);
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._3226745icon = param1;
                  addr0041:
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr005f);
            }
            addr007e:
            return;
         }
         §§goto(addr0041);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1184053038labelDisplay = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
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
      public function get plusButton() : DynamicImageButton
      {
         return this._563971436plusButton;
      }
      
      public function set plusButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._563971436plusButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._563971436plusButton = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CurrencyBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CurrencyBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
   }
}

