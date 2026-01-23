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
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.hud.ui.components.ListItemRenderer;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.DropDownList;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.PopUpAnchor;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class DropDownListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _433014735dropDown:Group;
      
      private var _98629247group:VGroup;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _137111012openButton:Button;
      
      private var _106851532popUp:PopUpAnchor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DropDownList;
      
      public function DropDownListSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var _DropDownListSkin_PopUpAnchor1_factory:DeferredInstanceFromFunction;
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
               §§pop().§§slot[1] = §§pop();
               if(_loc3_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc3_ || Boolean(this))
                     {
                        addr004c:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr005e:
                              §§pop().§§slot[6] = null;
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc4_)
                                       {
                                          addr008b:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc4_)
                                          {
                                             addr0097:
                                             super();
                                             if(_loc3_ || _loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr00d0:
                                                      §§pop().§§slot[1] = this._DropDownListSkin_bindingsSetup();
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            addr00ef:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr0112:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr0125:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           addr013a:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().§§slot[6] = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_skins_DropDownListSkinWatcherSetupUtil");
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr0165:
                                                                                    §§pop().§§slot[6]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return DropDownListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       addr017c:
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr01d2:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                addr0201:
                                                                                                this.mxmlContent = [this._DropDownListSkin_HGroup3_c(),this._DropDownListSkin_Group2_c()];
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      addr022c:
                                                                                                      §§push(§§newactivation());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr0233:
                                                                                                         §§pop().§§slot[4] = new DeferredInstanceFromFunction(this._DropDownListSkin_PopUpAnchor1_i,this._DropDownListSkin_PopUpAnchor1_r);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr024f:
                                                                                                            states = [new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"popUp",
                                                                                                                  "name":"displayPopUp",
                                                                                                                  "value":false
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"open",
                                                                                                               "overrides":[new AddItems().initializeFromObject({
                                                                                                                  "destructionPolicy":"auto",
                                                                                                                  "itemsFactory":_DropDownListSkin_PopUpAnchor1_factory,
                                                                                                                  "destination":null,
                                                                                                                  "propertyName":"mxmlContent",
                                                                                                                  "position":"first"
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"popUp",
                                                                                                                  "name":"displayPopUp",
                                                                                                                  "value":true
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[]
                                                                                                            })];
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               addr02f2:
                                                                                                               i = 0;
                                                                                                               addr02f0:
                                                                                                            }
                                                                                                            loop0:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               loop1:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[5]);
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
                                                                                                                        if(_loc4_ && Boolean(this))
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc4_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[5]);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              var _temp_22:* = §§pop();
                                                                                                                              §§pop().§§slot[5] = _temp_22;
                                                                                                                              if(_loc3_)
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
                                                                                                            addr0358:
                                                                                                         }
                                                                                                         §§goto(addr02f0);
                                                                                                      }
                                                                                                      §§goto(addr02f2);
                                                                                                   }
                                                                                                   §§goto(addr024f);
                                                                                                }
                                                                                                §§goto(addr02f0);
                                                                                             }
                                                                                             §§goto(addr022c);
                                                                                          }
                                                                                          §§goto(addr0201);
                                                                                       }
                                                                                       §§goto(addr024f);
                                                                                    }
                                                                                    §§goto(addr022c);
                                                                                 }
                                                                                 §§goto(addr0233);
                                                                              }
                                                                              §§goto(addr0358);
                                                                           }
                                                                           §§goto(addr02f2);
                                                                        }
                                                                        §§goto(addr01d2);
                                                                     }
                                                                     §§goto(addr017c);
                                                                  }
                                                                  §§goto(addr013a);
                                                               }
                                                               §§goto(addr0165);
                                                            }
                                                            §§goto(addr0201);
                                                         }
                                                         §§goto(addr0233);
                                                      }
                                                      §§goto(addr0201);
                                                   }
                                                   §§goto(addr0112);
                                                }
                                                §§goto(addr013a);
                                             }
                                             §§goto(addr02f0);
                                          }
                                          §§goto(addr0125);
                                       }
                                       §§goto(addr0358);
                                    }
                                    §§goto(addr008b);
                                 }
                                 §§goto(addr022c);
                              }
                              §§goto(addr0097);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr0233);
               }
               §§goto(addr01d2);
            }
            §§goto(addr004c);
         }
         §§goto(addr00d0);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            DropDownListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr003c);
            }
            §§goto(addr0058);
         }
         addr003c:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               return;
            }
         }
         else
         {
            addr0058:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _DropDownListSkin_PopUpAnchor1_i() : PopUpAnchor
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PopUpAnchor = new PopUpAnchor();
         if(_loc2_ || _loc3_)
         {
            _loc1_.left = 10;
            if(_loc2_)
            {
               _loc1_.right = 20;
               if(_loc2_)
               {
                  _loc1_.top = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr004f:
                     _loc1_.bottom = 0;
                     if(!_loc3_)
                     {
                        _loc1_.popUpPosition = "above";
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.popUpWidthMatchesAnchorWidth = true;
                           if(!_loc3_)
                           {
                              _loc1_.popUp = this._DropDownListSkin_Group1_i();
                              if(_loc2_)
                              {
                                 addr0097:
                                 _loc1_.id = "popUp";
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§goto(addr00be);
                                       }
                                       §§goto(addr00ed);
                                    }
                                 }
                                 §§goto(addr00db);
                              }
                              §§goto(addr00ed);
                           }
                        }
                        addr00be:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr00db:
                           this.popUp = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr00ed:
                              BindingManager.executeBindings(this,"popUp",this.popUp);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr004f);
            }
            §§goto(addr00ed);
         }
         §§goto(addr00db);
      }
      
      private function _DropDownListSkin_PopUpAnchor1_r() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:*;
         this.popUp = _loc1_ = null;
         §§push(_loc1_);
         if(!(_loc3_ && _loc2_))
         {
            this.dropDown = _loc1_ = null;
         }
         §§push(_loc1_);
         if(_loc2_ || _loc2_)
         {
            this.group = _loc1_ = null;
         }
         §§push(_loc1_);
         if(!(_loc3_ && _loc3_))
         {
            this.dataGroup = _loc1_ = null;
         }
         _loc1_;
      }
      
      private function _DropDownListSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._DropDownListSkin_VGroup1_i(),this._DropDownListSkin_DataGroup1_i()];
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "dropDown";
                  if(_loc2_)
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0089:
                              this.dropDown = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"dropDown",this.dropDown);
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0089);
                  }
                  addr00a8:
                  return _loc1_;
               }
            }
         }
         §§goto(addr0060);
      }
      
      private function _DropDownListSkin_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.top = -5;
               if(!(_loc2_ && _loc2_))
               {
                  addr003d:
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     _loc1_.gap = 0;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._DropDownListSkin_HGroup1_c(),this._DropDownListSkin_HGroup2_c()];
                        if(_loc3_)
                        {
                           _loc1_.id = "group";
                           if(_loc3_ || Boolean(this))
                           {
                              addr008f:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00a4:
                                       this.group = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00ae:
                                          BindingManager.executeBindings(this,"group",this.group);
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00ae);
                              }
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr00ae);
               }
            }
            §§goto(addr008f);
         }
         §§goto(addr003d);
      }
      
      private function _DropDownListSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._DropDownListSkin_BriskImageDynaLib1_c(),this._DropDownListSkin_BriskImageDynaLib2_c(),this._DropDownListSkin_BriskImageDynaLib3_c()];
                     if(_loc3_)
                     {
                        addr0088:
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
         }
         §§goto(addr0088);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_left";
               if(!(_loc2_ && _loc3_))
               {
                  addr005c:
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_middle";
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0049);
               }
               §§goto(addr0073);
            }
            §§goto(addr0087);
         }
         addr0049:
         _loc1_.percentHeight = 100;
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr0073:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0087:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _DropDownListSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0049:
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_right";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr007b);
                  }
               }
               §§goto(addr008f);
            }
            addr007b:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr008f:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _DropDownListSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.gap = 0;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._DropDownListSkin_BriskImageDynaLib4_c(),this._DropDownListSkin_BriskImageDynaLib5_c(),this._DropDownListSkin_BriskImageDynaLib6_c()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0085);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc2_ && _loc2_))
            {
               addr004c:
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downleft";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_down";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006a:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr006a);
               }
            }
            addr006e:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downright";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr006d:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr006d);
      }
      
      private function _DropDownListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.bottom = 6;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr003f:
                  _loc1_.itemRenderer = this._DropDownListSkin_ClassFactory1_c();
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.focusEnabled = false;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.layout = this._DropDownListSkin_VerticalLayout1_c();
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr008c);
                        }
                     }
                  }
                  §§goto(addr0097);
               }
               addr008c:
               _loc1_.id = "dataGroup";
               if(!_loc2_)
               {
                  addr0097:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00ab:
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr00c8:
                           this.dataGroup = _loc1_;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                           }
                        }
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr00c8);
               }
               addr00e7:
               return _loc1_;
            }
            §§goto(addr003f);
         }
         §§goto(addr00ab);
      }
      
      private function _DropDownListSkin_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.generator = ListItemRenderer;
         }
         return _loc1_;
      }
      
      private function _DropDownListSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc3_)
         {
            _loc1_.gap = 2;
            if(!_loc2_)
            {
               _loc1_.useVirtualLayout = false;
               if(_loc3_)
               {
                  addr0046:
                  _loc1_.clipAndEnableScrolling = false;
               }
               §§goto(addr004b);
            }
            §§goto(addr0046);
         }
         addr004b:
         return _loc1_;
      }
      
      private function _DropDownListSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0033:
               _loc1_.height = 25;
               if(_loc2_)
               {
                  _loc1_.left = 10;
                  if(_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0067:
                        _loc1_.gap = 0;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.mxmlContent = [this._DropDownListSkin_BriskImageDynaLib7_c(),this._DropDownListSkin_BriskImageDynaLib8_c(),this._DropDownListSkin_Button1_i()];
                           addr0079:
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr00a9);
                           }
                           §§goto(addr00b5);
                        }
                     }
                     addr00a9:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr00b5:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0067);
               }
            }
            §§goto(addr0079);
         }
         §§goto(addr0033);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_left";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0059:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0059);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  addr004f:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _DropDownListSkin_Button1_i() : Button
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Button = new Button();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 25;
            if(!_loc2_)
            {
               _loc1_.height = 25;
               if(_loc3_ || _loc2_)
               {
                  addr0043:
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     _loc1_.focusEnabled = false;
                     if(_loc3_)
                     {
                        addr0063:
                        _loc1_.setStyle("skinClass",DropListButtonSkin);
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.id = "openButton";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00a3:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00b4:
                                       this.openButton = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00be:
                                          BindingManager.executeBindings(this,"openButton",this.openButton);
                                       }
                                    }
                                    §§goto(addr00cb);
                                 }
                                 §§goto(addr00be);
                              }
                           }
                           §§goto(addr00b4);
                        }
                     }
                     addr00cb:
                     return _loc1_;
                  }
                  §§goto(addr0063);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0043);
         }
         §§goto(addr0063);
      }
      
      private function _DropDownListSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.height = 30;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._DropDownListSkin_HGroup4_c(),this._DropDownListSkin_Group3_c(),this._DropDownListSkin_BriskImageDynaLib11_i()];
                     addr005a:
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0089:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0095:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0095);
                  }
               }
               addr0099:
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr0089);
      }
      
      private function _DropDownListSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.left = 15;
               if(_loc2_)
               {
                  _loc1_.right = 25;
                  if(!_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0080);
            }
            addr0060:
            _loc1_.verticalCenter = 0;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._DropDownListSkin_BriskImageDynaLib9_c(),this._DropDownListSkin_BriskImageDynaLib10_c()];
               if(_loc2_)
               {
                  addr0080:
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
            §§goto(addr0090);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _DropDownListSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_left";
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0063);
               }
               §§goto(addr006f);
            }
            addr0063:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr006f:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_innerbar_middle";
               if(!(_loc2_ && _loc2_))
               {
                  addr0056:
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr006c);
               }
            }
            addr0070:
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _DropDownListSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(_loc3_)
            {
               _loc1_.right = 30;
               if(!_loc2_)
               {
                  _loc1_.height = 22;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._DropDownListSkin_LocaLabel1_i()];
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0072);
            }
         }
         §§goto(addr0086);
      }
      
      private function _DropDownListSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.bottom = 0;
               if(_loc2_)
               {
                  _loc1_.styleName = "fontABlack";
                  if(!_loc3_)
                  {
                     _loc1_.maxDisplayedLines = 1;
                     if(!_loc3_)
                     {
                        _loc1_.setStyle("color",16777215);
                        if(_loc2_)
                        {
                           _loc1_.setStyle("textAlign","right");
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.setStyle("fontSize",11);
                              if(_loc2_)
                              {
                                 _loc1_.id = "labelDisplay";
                                 if(!_loc3_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00af:
                                          _loc1_.document = this;
                                          if(_loc2_)
                                          {
                                             §§goto(addr00b8);
                                          }
                                       }
                                       §§goto(addr00c2);
                                    }
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00af);
                           }
                        }
                        addr00b8:
                        this.labelDisplay = _loc1_;
                        if(_loc2_)
                        {
                           addr00c2:
                           BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                        }
                     }
                     §§goto(addr00cf);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr00b8);
            }
            addr00cf:
            return _loc1_;
         }
         §§goto(addr00b8);
      }
      
      private function _DropDownListSkin_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.left = 0;
               if(!(_loc2_ && _loc2_))
               {
                  addr0059:
                  _loc1_.id = "icon";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0078:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0094:
                              this.icon = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a6:
                                 BindingManager.executeBindings(this,"icon",this.icon);
                              }
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00a6);
                     }
                  }
                  §§goto(addr0094);
               }
               addr00b3:
               return _loc1_;
            }
            §§goto(addr0059);
         }
         §§goto(addr0078);
      }
      
      private function _DropDownListSkin_bindingsSetup() : Array
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
                  if(_loc3_ || _loc1_)
                  {
                     §§pop()[0] = new Binding(this,function():Array
                     {
                        var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                        return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                     },null,"labelDisplay.filters");
                     addr006b:
                     addr0069:
                     return result;
                  }
               }
               §§goto(addr006b);
            }
            §§goto(addr0069);
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._385593099dataGroup = param1;
                  addr0036:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
            addr0072:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get dropDown() : Group
      {
         return this._433014735dropDown;
      }
      
      public function set dropDown(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._433014735dropDown;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._433014735dropDown = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropDown",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get group() : VGroup
      {
         return this._98629247group;
      }
      
      public function set group(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._98629247group;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._98629247group = param1;
                  addr0038:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"group",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._3226745icon = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007e);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr007e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                  }
               }
               §§goto(addr008d);
            }
         }
         addr008d:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184053038labelDisplay;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0040:
                  this._1184053038labelDisplay = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get openButton() : Button
      {
         return this._137111012openButton;
      }
      
      public function set openButton(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._137111012openButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._137111012openButton = param1;
                  addr003e:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get popUp() : PopUpAnchor
      {
         return this._106851532popUp;
      }
      
      public function set popUp(param1:PopUpAnchor) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._106851532popUp;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._106851532popUp = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popUp",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DropDownList
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DropDownList) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004f);
      }
   }
}

