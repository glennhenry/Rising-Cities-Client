package net.bigpoint.cityrama.view.residentialBook.ui.skins
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
   import net.bigpoint.cityrama.view.hud.ui.skins.DropListButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.DropDownAmountListItemRenderer;
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
   
   public class DropDownAmountListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _433014735dropDown:Group;
      
      private var _98629247group:VGroup;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1671708693labelGroup:HGroup;
      
      private var _137111012openButton:Button;
      
      private var _106851532popUp:PopUpAnchor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DropDownList;
      
      public function DropDownAmountListSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var _DropDownAmountListSkin_PopUpAnchor1_factory:DeferredInstanceFromFunction;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr0041:
                     §§push(null);
                     if(_loc4_ || _loc2_)
                     {
                        addr0050:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || Boolean(this))
                           {
                              addr006b:
                              §§pop().§§slot[6] = null;
                              if(_loc4_ || _loc2_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    addr0088:
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             addr00b3:
                                             super();
                                             if(!_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr00d5:
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§pop().§§slot[1] = this._DropDownAmountListSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr0103:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               addr010f:
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  addr0116:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0136:
                                                                              §§pop().§§slot[6] = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_skins_DropDownAmountListSkinWatcherSetupUtil");
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr0152:
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr0161:
                                                                                    §§pop().§§slot[6]["init"](null);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return DropDownAmountListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       addr0178:
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr01a6:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§goto(addr01f3);
                                                                                             }
                                                                                             §§goto(addr0209);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0216);
                                                                                    }
                                                                                    §§goto(addr02e1);
                                                                                 }
                                                                                 §§goto(addr02e3);
                                                                              }
                                                                              addr01f3:
                                                                              this.mxmlContent = [this._DropDownAmountListSkin_HGroup3_c(),this._DropDownAmountListSkin_Group2_c()];
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0209:
                                                                                 this.currentState = "normal";
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0216:
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       §§pop().§§slot[4] = new DeferredInstanceFromFunction(this._DropDownAmountListSkin_PopUpAnchor1_i,this._DropDownAmountListSkin_PopUpAnchor1_r);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr0241);
                                                                                       }
                                                                                       §§goto(addr02e1);
                                                                                    }
                                                                                    §§goto(addr02e3);
                                                                                 }
                                                                                 §§goto(addr02e1);
                                                                              }
                                                                              §§goto(addr0241);
                                                                           }
                                                                           §§goto(addr0161);
                                                                        }
                                                                        addr0241:
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
                                                                              "itemsFactory":_DropDownAmountListSkin_PopUpAnchor1_factory,
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
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr02e3:
                                                                           i = 0;
                                                                           addr02e1:
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
                                                                                       break loop2;
                                                                                    }
                                                                                    Binding(bindings[i]).execute();
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop().§§slot[5]);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(uint(§§pop() + 1));
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          var _temp_22:* = §§pop();
                                                                                          §§pop().§§slot[5] = _temp_22;
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break loop1;
                                                                                          }
                                                                                          break loop2;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr0178);
                                                                  }
                                                                  §§goto(addr01f3);
                                                               }
                                                               §§goto(addr0136);
                                                            }
                                                            §§goto(addr0152);
                                                         }
                                                         §§goto(addr02e3);
                                                      }
                                                      §§goto(addr0216);
                                                   }
                                                   §§goto(addr0116);
                                                }
                                                §§goto(addr0216);
                                             }
                                             §§goto(addr0178);
                                          }
                                          §§goto(addr02e1);
                                       }
                                       §§goto(addr010f);
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr01a6);
                              }
                              §§goto(addr0088);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr01a6);
                     }
                     §§goto(addr006b);
                  }
                  §§goto(addr0103);
               }
               §§goto(addr00d5);
            }
            §§goto(addr0050);
         }
         §§goto(addr0041);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && DropDownAmountListSkin))
         {
            DropDownAmountListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               addr0046:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0046);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _DropDownAmountListSkin_PopUpAnchor1_i() : PopUpAnchor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PopUpAnchor = new PopUpAnchor();
         if(_loc3_)
         {
            _loc1_.left = 11;
            if(!_loc2_)
            {
               _loc1_.right = 20;
               if(!(_loc2_ && _loc3_))
               {
                  addr0041:
                  _loc1_.top = -2;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.bottom = 0;
                     if(_loc3_)
                     {
                        _loc1_.popUpPosition = "below";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.popUpWidthMatchesAnchorWidth = true;
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.popUp = this._DropDownAmountListSkin_Group1_i();
                              if(_loc3_)
                              {
                                 §§goto(addr00a0);
                              }
                              §§goto(addr00e4);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00e4);
                     }
                  }
                  §§goto(addr00b3);
               }
               addr00a0:
               _loc1_.id = "popUp";
               if(_loc3_ || _loc3_)
               {
                  addr00b3:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr00d3);
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr00e4);
               }
               addr00d3:
               _loc1_.document = this;
               if(_loc3_ || Boolean(this))
               {
                  addr00e4:
                  this.popUp = _loc1_;
                  if(_loc3_)
                  {
                     addr00ee:
                     BindingManager.executeBindings(this,"popUp",this.popUp);
                  }
               }
               return _loc1_;
            }
            §§goto(addr00ee);
         }
         §§goto(addr0041);
      }
      
      private function _DropDownAmountListSkin_PopUpAnchor1_r() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:*;
         this.popUp = _loc1_ = null;
         §§push(_loc1_);
         if(_loc2_ || _loc2_)
         {
            this.dropDown = _loc1_ = null;
         }
         §§push(_loc1_);
         if(!(_loc3_ && _loc2_))
         {
            this.group = _loc1_ = null;
         }
         §§push(_loc1_);
         if(!_loc3_)
         {
            this.dataGroup = _loc1_ = null;
         }
         _loc1_;
      }
      
      private function _DropDownAmountListSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.depth = -10;
               if(_loc2_ || _loc3_)
               {
                  addr004b:
                  _loc1_.mxmlContent = [this._DropDownAmountListSkin_VGroup1_i(),this._DropDownAmountListSkin_DataGroup1_i()];
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "dropDown";
                     if(!_loc3_)
                     {
                        addr0080:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0095:
                                 this.dropDown = _loc1_;
                                 if(!_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"dropDown",this.dropDown);
                                 }
                              }
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr0095);
                     }
                     addr00ac:
                     return _loc1_;
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0080);
            }
            §§goto(addr0095);
         }
         §§goto(addr004b);
      }
      
      private function _DropDownAmountListSkin_VGroup1_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.gap = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.top = -7;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._DropDownAmountListSkin_HGroup1_c(),this._DropDownAmountListSkin_HGroup2_c()];
                        if(!_loc3_)
                        {
                           addr0076:
                           _loc1_.id = "group";
                           if(!(_loc3_ && Boolean(this)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00a0:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       §§goto(addr00a9);
                                    }
                                 }
                                 §§goto(addr00bb);
                              }
                              addr00a9:
                              this.group = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00bb:
                                 BindingManager.executeBindings(this,"group",this.group);
                              }
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr00bb);
                     }
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr00a0);
            }
            addr00c8:
            return _loc1_;
         }
         §§goto(addr0076);
      }
      
      private function _DropDownAmountListSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.gap = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0070:
                     _loc1_.mxmlContent = [this._DropDownAmountListSkin_BriskImageDynaLib1_c(),this._DropDownAmountListSkin_BriskImageDynaLib2_c(),this._DropDownAmountListSkin_BriskImageDynaLib3_c()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0098);
               }
               addr009c:
               return _loc1_;
            }
            §§goto(addr0098);
         }
         §§goto(addr0070);
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_left";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentHeight = 100;
                  §§goto(addr0059);
               }
               §§goto(addr0075);
            }
            addr0059:
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0075:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr008d);
         }
         addr008d:
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_middle";
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007b:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr007b);
               }
            }
         }
         addr007f:
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_right";
               if(_loc3_)
               {
                  addr005b:
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr005b);
         }
         §§goto(addr0079);
      }
      
      private function _DropDownAmountListSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.gap = 0;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._DropDownAmountListSkin_BriskImageDynaLib4_c(),this._DropDownAmountListSkin_BriskImageDynaLib5_c(),this._DropDownAmountListSkin_BriskImageDynaLib6_c()];
                  addr0049:
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0049);
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc3_)
            {
               addr004a:
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downleft";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_down";
               if(_loc2_)
               {
                  addr0053:
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0071);
               }
               addr005d:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0071:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0053);
         }
         §§goto(addr0071);
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downright";
               if(_loc2_)
               {
                  addr0049:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
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
      
      private function _DropDownAmountListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.bottom = 6;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.itemRenderer = this._DropDownAmountListSkin_ClassFactory1_c();
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006c:
                     _loc1_.focusEnabled = false;
                     if(!_loc3_)
                     {
                        _loc1_.layout = this._DropDownAmountListSkin_VerticalLayout1_c();
                        if(_loc2_)
                        {
                           §§goto(addr0085);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr009c);
                  }
                  addr0085:
                  _loc1_.id = "dataGroup";
                  if(_loc2_)
                  {
                     addr0090:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr009c:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00b9:
                              this.dataGroup = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00cb:
                                 BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00d8);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr006c);
            }
            addr00d8:
            return _loc1_;
         }
         §§goto(addr00b9);
      }
      
      private function _DropDownAmountListSkin_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = DropDownAmountListItemRenderer;
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(!_loc3_)
         {
            _loc1_.gap = 2;
            if(_loc2_)
            {
               _loc1_.useVirtualLayout = false;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.clipAndEnableScrolling = false;
               }
            }
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 25;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.left = 10;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_)
                     {
                        §§goto(addr0072);
                     }
                     §§goto(addr0084);
                  }
               }
               addr0072:
               _loc1_.gap = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._DropDownAmountListSkin_BriskImageDynaLib7_c(),this._DropDownAmountListSkin_BriskImageDynaLib8_c(),this._DropDownAmountListSkin_Button1_i()];
                  addr0084:
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00c8:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00cc);
            }
            §§goto(addr00c8);
         }
         addr00cc:
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_)
            {
               addr0048:
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_left";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0067:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0067);
         }
         §§goto(addr0048);
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "mainhud_outerbar_middle";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0072);
            }
            §§goto(addr0086);
         }
         §§goto(addr0072);
      }
      
      private function _DropDownAmountListSkin_Button1_i() : Button
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Button = new Button();
         if(_loc2_)
         {
            _loc1_.width = 25;
            if(!_loc3_)
            {
               _loc1_.height = 25;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.right = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0059:
                     _loc1_.focusEnabled = false;
                     if(_loc2_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0059);
            }
            §§goto(addr007a);
         }
         addr0063:
         _loc1_.setStyle("skinClass",DropListButtonSkin);
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr007a:
            _loc1_.id = "openButton";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr00a7:
                        this.openButton = _loc1_;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00b9:
                           BindingManager.executeBindings(this,"openButton",this.openButton);
                        }
                     }
                     §§goto(addr00c6);
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr00b9);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  addr005e:
                  _loc1_.height = 30;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._DropDownAmountListSkin_HGroup4_c(),this._DropDownAmountListSkin_HGroup5_i()];
                     if(!_loc2_)
                     {
                        addr007e:
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
            §§goto(addr007e);
         }
         §§goto(addr005e);
      }
      
      private function _DropDownAmountListSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.gap = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 15;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.right = 25;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc3_)
                     {
                        addr007e:
                        _loc1_.mxmlContent = [this._DropDownAmountListSkin_BriskImageDynaLib9_c(),this._DropDownAmountListSkin_BriskImageDynaLib10_c()];
                        if(!_loc3_)
                        {
                           addr0094:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr0094);
                  }
                  addr00ac:
                  return _loc1_;
               }
               §§goto(addr0094);
            }
         }
         §§goto(addr007e);
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "sorting_bar_left";
               if(!_loc2_)
               {
                  addr0061:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0061);
      }
      
      private function _DropDownAmountListSkin_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!_loc2_)
            {
               §§goto(addr0037);
            }
            §§goto(addr0063);
         }
         addr0037:
         _loc1_.dynaBmpSourceName = "sorting_bar_middle";
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr0063:
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
         addr007b:
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_HGroup5_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr004e:
                     _loc1_.height = 30;
                     if(_loc3_)
                     {
                        addr0058:
                        _loc1_.paddingLeft = 18;
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr00a7);
                  }
               }
               addr0076:
               _loc1_.paddingRight = 28;
               if(!(_loc2_ && _loc3_))
               {
                  addr0089:
                  _loc1_.mxmlContent = [this._DropDownAmountListSkin_LocaLabel1_i(),this._DropDownAmountListSkin_LocaLabel2_i()];
                  if(_loc3_ || Boolean(this))
                  {
                     addr00a7:
                     _loc1_.id = "labelGroup";
                     if(!_loc2_)
                     {
                        §§goto(addr00b2);
                     }
                     §§goto(addr00d1);
                  }
                  addr00b2:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00d1:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr00da);
                        }
                        §§goto(addr00ec);
                     }
                  }
                  addr00da:
                  this.labelGroup = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00ec:
                     BindingManager.executeBindings(this,"labelGroup",this.labelGroup);
                  }
                  §§goto(addr00f9);
               }
               addr00f9:
               return _loc1_;
            }
            §§goto(addr004e);
         }
         §§goto(addr0058);
      }
      
      private function _DropDownAmountListSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.bottom = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.styleName = "elevenWhiteLeft";
                  if(_loc2_)
                  {
                     _loc1_.maxDisplayedLines = 1;
                     if(_loc2_)
                     {
                        _loc1_.id = "labelDisplay";
                        if(_loc2_)
                        {
                           addr0068:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr0098);
                                 }
                              }
                              §§goto(addr00a2);
                           }
                           addr0098:
                           this.labelDisplay = _loc1_;
                           if(!_loc3_)
                           {
                              addr00a2:
                              BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                           }
                           §§goto(addr00af);
                        }
                     }
                     addr00af:
                     return _loc1_;
                  }
                  §§goto(addr0068);
               }
               §§goto(addr0098);
            }
            §§goto(addr0068);
         }
         §§goto(addr0098);
      }
      
      private function _DropDownAmountListSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               _loc1_.styleName = "elevenWhiteRight";
               if(!_loc3_)
               {
                  _loc1_.id = "amountLabel";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr006e);
                           }
                           §§goto(addr0078);
                        }
                     }
                  }
               }
               addr006e:
               this.amountLabel = _loc1_;
               if(_loc2_)
               {
                  addr0078:
                  BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
               }
               §§goto(addr0085);
            }
         }
         addr0085:
         return _loc1_;
      }
      
      private function _DropDownAmountListSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || _loc1_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Array
                        {
                           var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                           return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                        },null,"labelDisplay.filters");
                        if(_loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0087);
               }
               addr0078:
               §§push(§§pop().§§slot[1]);
               if(!(_loc3_ && _loc1_))
               {
                  addr0089:
                  §§pop()[1] = new Binding(this,function():Array
                  {
                     var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
                     return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
                  },null,"amountLabel.filters");
                  addr009c:
                  addr009a:
                  §§push(result);
                  addr0087:
               }
               return §§pop();
            }
            §§goto(addr009a);
         }
         §§goto(addr009c);
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1229015684amountLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1229015684amountLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0063);
            }
         }
         addr0082:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0034:
                  this._433014735dropDown = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropDown",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0053);
            }
            addr0079:
            return;
         }
         §§goto(addr0034);
      }
      
      [Bindable(event="propertyChange")]
      public function get group() : VGroup
      {
         return this._98629247group;
      }
      
      public function set group(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._98629247group;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._98629247group = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"group",_loc2_,param1));
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
         §§goto(addr006d);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1184053038labelDisplay = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get labelGroup() : HGroup
      {
         return this._1671708693labelGroup;
      }
      
      public function set labelGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1671708693labelGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1671708693labelGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._137111012openButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
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
               if(_loc3_)
               {
                  this._106851532popUp = param1;
                  if(!(_loc4_ && _loc3_))
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     §§goto(addr003d);
                  }
                  §§goto(addr004d);
               }
               addr003d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr004d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr005c);
            }
         }
         addr005c:
      }
   }
}

