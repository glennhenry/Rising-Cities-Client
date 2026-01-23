package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.skins
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.InventoryRadioButton;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class InventoryRadioButtonSkinClass extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _InventoryRadioButtonSkinClass_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _385748430_InventoryRadioButtonSkinClass_SetProperty1:SetProperty;
      
      private var _385748431_InventoryRadioButtonSkinClass_SetProperty2:SetProperty;
      
      private var _385748432_InventoryRadioButtonSkinClass_SetProperty3:SetProperty;
      
      private var _385748433_InventoryRadioButtonSkinClass_SetProperty4:SetProperty;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:InventoryRadioButton;
      
      public function InventoryRadioButtonSkinClass()
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
         if(_loc4_ || _loc1_)
         {
            §§push(null);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || _loc3_)
                           {
                              addr0074:
                              §§pop().§§slot[5] = null;
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    addr0089:
                                    this.mx_internal::_watchers = [];
                                    if(!_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_ || Boolean(this))
                                          {
                                             super();
                                             if(_loc4_ || _loc1_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      addr00df:
                                                      §§pop().§§slot[1] = this._InventoryRadioButtonSkinClass_bindingsSetup();
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
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
                                                                              addr0130:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_components_skins_InventoryRadioButtonSkinClassWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0143:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr014b:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0162:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return InventoryRadioButtonSkinClass[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr01b5:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                addr01e3:
                                                                                                this.mxmlContent = [this._InventoryRadioButtonSkinClass_Group1_c()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr01f3:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      var _temp_28:* = new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      });
                                                                                                      var _temp_27:* = new State({
                                                                                                         "name":"up",
                                                                                                         "overrides":[]
                                                                                                      });
                                                                                                      var _temp_26:* = new State({
                                                                                                         "name":"over",
                                                                                                         "overrides":[this._InventoryRadioButtonSkinClass_SetProperty4 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         }))]
                                                                                                      });
                                                                                                      var _temp_25:* = new State({
                                                                                                         "name":"down",
                                                                                                         "overrides":[]
                                                                                                      });
                                                                                                      var _temp_24:* = new State({
                                                                                                         "name":"upAndSelected",
                                                                                                         "stateGroups":["selected"],
                                                                                                         "overrides":[this._InventoryRadioButtonSkinClass_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",
                                                                                                            "name":"visible",
                                                                                                            "value":true
                                                                                                         })]
                                                                                                      });
                                                                                                      var _temp_23:* = new State({
                                                                                                         "name":"overAndSelected",
                                                                                                         "stateGroups":["selected"],
                                                                                                         "overrides":[this._InventoryRadioButtonSkinClass_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         })),new SetProperty().initializeFromObject({
                                                                                                            "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",
                                                                                                            "name":"visible",
                                                                                                            "value":true
                                                                                                         })]
                                                                                                      });
                                                                                                      var _temp_22:* = §§findproperty(State);
                                                                                                      var _temp_21:* = "name";
                                                                                                      var _temp_20:* = "downAndSelected";
                                                                                                      var _temp_19:* = "stateGroups";
                                                                                                      var _temp_18:* = ["selected"];
                                                                                                      var _temp_17:* = "overrides";
                                                                                                      var _loc2_:*;
                                                                                                      this._InventoryRadioButtonSkinClass_SetProperty3 = _loc2_ = SetProperty(new SetProperty().initializeFromObject({
                                                                                                         "isBaseValueDataBound":true,
                                                                                                         "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
                                                                                                         "name":"dynaBmpSourceName",
                                                                                                         "value":undefined
                                                                                                      }));
                                                                                                      states = [_temp_28,_temp_27,_temp_26,_temp_25,_temp_24,_temp_23,new State({
                                                                                                         _temp_21:_temp_20,
                                                                                                         _temp_19:_temp_18,
                                                                                                         _temp_17:[_loc2_,new SetProperty().initializeFromObject({
                                                                                                            "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",
                                                                                                            "name":"visible",
                                                                                                            "value":true
                                                                                                         })]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabledAndSelected",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      addr0200:
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty4",this._InventoryRadioButtonSkinClass_SetProperty4);
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            addr03dc:
                                                                                                            BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty1",this._InventoryRadioButtonSkinClass_SetProperty1);
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               addr03f6:
                                                                                                               BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty2",this._InventoryRadioButtonSkinClass_SetProperty2);
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  addr0410:
                                                                                                                  BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty3",this._InventoryRadioButtonSkinClass_SetProperty3);
                                                                                                                  if(_loc4_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr042d:
                                                                                                                     i = 0;
                                                                                                                     addr042b:
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
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(_loc3_ && Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(uint(§§pop() + 1));
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 var _temp_39:* = §§pop();
                                                                                                                                 §§pop().§§slot[4] = _temp_39;
                                                                                                                                 if(!_loc3_)
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
                                                                                                               addr0493:
                                                                                                            }
                                                                                                            §§goto(addr042b);
                                                                                                         }
                                                                                                         §§goto(addr0493);
                                                                                                      }
                                                                                                      §§goto(addr0410);
                                                                                                   }
                                                                                                   §§goto(addr03f6);
                                                                                                }
                                                                                                §§goto(addr0493);
                                                                                             }
                                                                                             §§goto(addr0200);
                                                                                          }
                                                                                          §§goto(addr01e3);
                                                                                       }
                                                                                       §§goto(addr03dc);
                                                                                    }
                                                                                    §§goto(addr03f6);
                                                                                 }
                                                                                 §§goto(addr042d);
                                                                              }
                                                                              §§goto(addr03f6);
                                                                           }
                                                                           §§goto(addr014b);
                                                                        }
                                                                        §§goto(addr0410);
                                                                     }
                                                                     §§goto(addr0162);
                                                                  }
                                                                  §§goto(addr01b5);
                                                               }
                                                               §§goto(addr014b);
                                                            }
                                                            §§goto(addr0410);
                                                         }
                                                         §§goto(addr0130);
                                                      }
                                                      §§goto(addr0200);
                                                   }
                                                   §§goto(addr014b);
                                                }
                                                §§goto(addr03f6);
                                             }
                                             §§goto(addr042b);
                                          }
                                          §§goto(addr01f3);
                                       }
                                       §§goto(addr0493);
                                    }
                                 }
                                 §§goto(addr0162);
                              }
                              §§goto(addr0089);
                           }
                           §§goto(addr0130);
                        }
                        §§goto(addr0143);
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr00df);
               }
               §§goto(addr0200);
            }
            §§goto(addr0074);
         }
         §§goto(addr014b);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            InventoryRadioButtonSkinClass._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0057:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr005d);
            }
            §§goto(addr0057);
         }
         addr005d:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _InventoryRadioButtonSkinClass_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._InventoryRadioButtonSkinClass_BriskImageDynaLib1_i(),this._InventoryRadioButtonSkinClass_HGroup1_c()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_)
            {
               _loc1_.id = "_InventoryRadioButtonSkinClass_BriskImageDynaLib1";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0063:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr006c:
                           this._InventoryRadioButtonSkinClass_BriskImageDynaLib1 = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",this._InventoryRadioButtonSkinClass_BriskImageDynaLib1);
                           }
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr006c);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _InventoryRadioButtonSkinClass_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.left = 1;
            if(_loc2_ || _loc2_)
            {
               _loc1_.right = 12;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.top = -5;
                  addr004e:
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc3_)
                        {
                           addr0082:
                           _loc1_.percentHeight = 100;
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.gap = 0;
                              if(_loc2_)
                              {
                                 addr00a9:
                                 _loc1_.mxmlContent = [this._InventoryRadioButtonSkinClass_Group2_c(),this._InventoryRadioButtonSkinClass_LocaLabel1_i()];
                                 if(!_loc3_)
                                 {
                                    addr00bf:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00cb:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr00a9);
            }
            §§goto(addr004e);
         }
         addr00cf:
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 35;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = 32;
               if(!(_loc3_ && _loc3_))
               {
                  addr0064:
                  _loc1_.mxmlContent = [this._InventoryRadioButtonSkinClass_BriskImageDynaLib2_i(),this._InventoryRadioButtonSkinClass_BriskImageDynaLib3_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr008e:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr008e);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _InventoryRadioButtonSkinClass_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_ || _loc2_)
            {
               addr003c:
               _loc1_.verticalCenter = 0;
               if(!_loc2_)
               {
                  §§goto(addr0046);
               }
               §§goto(addr0064);
            }
            addr0046:
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               addr0064:
               _loc1_.id = "_InventoryRadioButtonSkinClass_BriskImageDynaLib2";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr00b1);
                  }
               }
            }
            addr009f:
            this._InventoryRadioButtonSkinClass_BriskImageDynaLib2 = _loc1_;
            if(_loc3_ || _loc3_)
            {
               addr00b1:
               BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib2",this._InventoryRadioButtonSkinClass_BriskImageDynaLib2);
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _InventoryRadioButtonSkinClass_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "postit_marker";
               if(!_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_)
                     {
                        _loc1_.width = 28;
                        if(_loc2_)
                        {
                           _loc1_.height = 26;
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr0082);
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr00b8);
                     }
                     addr0082:
                     _loc1_.visible = false;
                     if(!_loc3_)
                     {
                        addr008b:
                        _loc1_.id = "_InventoryRadioButtonSkinClass_BriskImageDynaLib3";
                        if(!_loc3_)
                        {
                           §§goto(addr0096);
                        }
                        §§goto(addr00d3);
                     }
                     addr0096:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr00b8:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr00c1);
                           }
                        }
                        §§goto(addr00d3);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00b8);
               }
               addr00c1:
               this._InventoryRadioButtonSkinClass_BriskImageDynaLib3 = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr00d3:
                  BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",this._InventoryRadioButtonSkinClass_BriskImageDynaLib3);
               }
               return _loc1_;
            }
            §§goto(addr0082);
         }
         §§goto(addr008b);
      }
      
      private function _InventoryRadioButtonSkinClass_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "invewntoryCategoryLabel";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr005c:
                     _loc1_.top = 3;
                     if(_loc3_ || _loc3_)
                     {
                        addr006e:
                        _loc1_.id = "labelDisplay";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0099:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00aa:
                                    this.labelDisplay = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr006e);
            }
            §§goto(addr005c);
         }
         addr00c1:
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = hostComponent.getStyle("bg_gfx");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"_InventoryRadioButtonSkinClass_BriskImageDynaLib1.dynaBmpSourceName");
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0071:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():*
                                    {
                                       return hostComponent.getStyle("bg_gfx_over");
                                    },null,"_InventoryRadioButtonSkinClass_SetProperty1.value");
                                    if(!_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc2_)
                                          {
                                             addr00b9:
                                             §§push(2);
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():*
                                                {
                                                   return hostComponent.getStyle("bg_gfx_over");
                                                },null,"_InventoryRadioButtonSkinClass_SetProperty2.value");
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc2_)
                                                      {
                                                         §§push(3);
                                                         if(!_loc3_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():*
                                                            {
                                                               return hostComponent.getStyle("bg_gfx_over");
                                                            },null,"_InventoryRadioButtonSkinClass_SetProperty3.value");
                                                            if(!_loc3_)
                                                            {
                                                               addr0119:
                                                               §§push(§§newactivation());
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  addr0128:
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     addr0137:
                                                                     §§push(4);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr013e:
                                                                        §§pop()[§§pop()] = new Binding(this,function():*
                                                                        {
                                                                           return hostComponent.getStyle("bg_gfx_over");
                                                                        },null,"_InventoryRadioButtonSkinClass_SetProperty4.value");
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           addr0167:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr018c);
                                                                           }
                                                                           §§goto(addr018a);
                                                                        }
                                                                        §§goto(addr0188);
                                                                     }
                                                                     §§goto(addr0177);
                                                                  }
                                                                  addr018c:
                                                                  §§goto(addr016e);
                                                               }
                                                               §§goto(addr018a);
                                                            }
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr013e);
                                                      }
                                                      §§goto(addr0175);
                                                   }
                                                   addr016e:
                                                   §§push(§§pop().§§slot[1]);
                                                   if(_loc2_)
                                                   {
                                                      addr0177:
                                                      §§pop()[5] = new Binding(this,function():String
                                                      {
                                                         var _loc1_:* = hostComponent.getStyle("iconSource");
                                                         return _loc1_ == undefined ? null : String(_loc1_);
                                                      },null,"_InventoryRadioButtonSkinClass_BriskImageDynaLib2.dynaBmpSourceName");
                                                      addr018a:
                                                      addr0188:
                                                      §§push(result);
                                                      addr0175:
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr0119);
                                             }
                                             §§goto(addr0177);
                                          }
                                          §§goto(addr0137);
                                       }
                                       §§goto(addr0128);
                                    }
                                    §§goto(addr0167);
                                 }
                                 §§goto(addr013e);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr018a);
                        }
                        §§goto(addr0188);
                     }
                     §§goto(addr013e);
                  }
                  §§goto(addr0175);
               }
               §§goto(addr0071);
            }
            §§goto(addr0188);
         }
         §§goto(addr0128);
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1;
      }
      
      public function set _InventoryRadioButtonSkinClass_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1 = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3;
      }
      
      public function set _InventoryRadioButtonSkinClass_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3 = param1;
                  if(!_loc4_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr005f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty1() : SetProperty
      {
         return this._385748430_InventoryRadioButtonSkinClass_SetProperty1;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty1(param1:SetProperty) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385748430_InventoryRadioButtonSkinClass_SetProperty1;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._385748430_InventoryRadioButtonSkinClass_SetProperty1 = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty2() : SetProperty
      {
         return this._385748431_InventoryRadioButtonSkinClass_SetProperty2;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty2(param1:SetProperty) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385748431_InventoryRadioButtonSkinClass_SetProperty2;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._385748431_InventoryRadioButtonSkinClass_SetProperty2 = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty3() : SetProperty
      {
         return this._385748432_InventoryRadioButtonSkinClass_SetProperty3;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty3(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385748432_InventoryRadioButtonSkinClass_SetProperty3;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._385748432_InventoryRadioButtonSkinClass_SetProperty3 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005c);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty4() : SetProperty
      {
         return this._385748433_InventoryRadioButtonSkinClass_SetProperty4;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty4(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385748433_InventoryRadioButtonSkinClass_SetProperty4;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._385748433_InventoryRadioButtonSkinClass_SetProperty4 = param1;
                  if(!_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0059);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1184053038labelDisplay = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : InventoryRadioButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:InventoryRadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
         }
         addr007b:
      }
   }
}

