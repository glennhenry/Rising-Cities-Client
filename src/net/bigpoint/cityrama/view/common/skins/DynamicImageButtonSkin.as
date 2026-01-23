package net.bigpoint.cityrama.view.common.skins
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
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class DynamicImageButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1897129873_DynamicImageButtonSkin_SetProperty1:SetProperty;
      
      private var _1897129872_DynamicImageButtonSkin_SetProperty2:SetProperty;
      
      private var _1897129871_DynamicImageButtonSkin_SetProperty3:SetProperty;
      
      private var _1897129870_DynamicImageButtonSkin_SetProperty4:SetProperty;
      
      private var _117840734runtimeImageContainer:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DynamicImageButton;
      
      public function DynamicImageButtonSkin()
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
            if(_loc4_ || _loc1_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc2_))
                           {
                              addr006c:
                              §§pop().§§slot[5] = null;
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             super();
                                             if(_loc4_ || _loc1_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr00f5:
                                                      §§pop().§§slot[1] = this._DynamicImageButtonSkin_bindingsSetup();
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_)
                                                         {
                                                            addr0115:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               addr0121:
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  addr0130:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     addr0143:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           addr0159:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              addr0168:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_DynamicImageButtonSkinWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr017b:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0198:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return DynamicImageButtonSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01b3:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                this.mxmlContent = [this._DynamicImageButtonSkin_BriskImageDynaLib1_i()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0222:
                                                                                                   this.currentState = "up";
                                                                                                   if(_loc4_ || Boolean(this))
                                                                                                   {
                                                                                                      addr0237:
                                                                                                      var _temp_29:* = new State({
                                                                                                         "name":"up",
                                                                                                         "overrides":[this._DynamicImageButtonSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "target":"runtimeImageContainer",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         }))]
                                                                                                      });
                                                                                                      var _temp_28:* = new State({
                                                                                                         "name":"over",
                                                                                                         "overrides":[this._DynamicImageButtonSkin_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "target":"runtimeImageContainer",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         }))]
                                                                                                      });
                                                                                                      var _temp_27:* = new State({
                                                                                                         "name":"down",
                                                                                                         "overrides":[this._DynamicImageButtonSkin_SetProperty3 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "target":"runtimeImageContainer",
                                                                                                            "name":"dynaBmpSourceName",
                                                                                                            "value":undefined
                                                                                                         }))]
                                                                                                      });
                                                                                                      var _temp_26:* = §§findproperty(State);
                                                                                                      var _temp_25:* = "name";
                                                                                                      var _temp_24:* = "disabled";
                                                                                                      var _temp_23:* = "overrides";
                                                                                                      var _loc2_:*;
                                                                                                      this._DynamicImageButtonSkin_SetProperty4 = _loc2_ = SetProperty(new SetProperty().initializeFromObject({
                                                                                                         "target":"runtimeImageContainer",
                                                                                                         "name":"dynaBmpSourceName",
                                                                                                         "value":undefined
                                                                                                      }));
                                                                                                      states = [_temp_29,_temp_28,_temp_27,new State({
                                                                                                         _temp_25:_temp_24,
                                                                                                         _temp_23:[_loc2_]
                                                                                                      })];
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr0322:
                                                                                                         BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty1",this._DynamicImageButtonSkin_SetProperty1);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr0335:
                                                                                                            BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty2",this._DynamicImageButtonSkin_SetProperty2);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr0347:
                                                                                                               BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty3",this._DynamicImageButtonSkin_SetProperty3);
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  addr0361:
                                                                                                                  BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty4",this._DynamicImageButtonSkin_SetProperty4);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr0375:
                                                                                                                     i = 0;
                                                                                                                     addr0373:
                                                                                                                  }
                                                                                                               }
                                                                                                               var _temp_32:*;
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
                                                                                                                           if(_loc3_ && _loc1_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop() + 1));
                                                                                                                                 if(_loc3_ && Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc4_ || _loc1_)
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
                                                                                                               while(var _temp_32:* = §§pop(), §§pop().§§slot[4] = _temp_32, !(_loc3_ && Boolean(_loc2_)));
                                                                                                               
                                                                                                               return;
                                                                                                               addr03f2:
                                                                                                            }
                                                                                                            §§goto(addr0361);
                                                                                                         }
                                                                                                         §§goto(addr0347);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0373);
                                                                                                }
                                                                                                §§goto(addr03f2);
                                                                                             }
                                                                                             §§goto(addr0335);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0361);
                                                                                    }
                                                                                    §§goto(addr0347);
                                                                                 }
                                                                                 §§goto(addr0375);
                                                                              }
                                                                              §§goto(addr0322);
                                                                           }
                                                                           §§goto(addr0375);
                                                                        }
                                                                        §§goto(addr03f2);
                                                                     }
                                                                     §§goto(addr0198);
                                                                  }
                                                                  §§goto(addr01b3);
                                                               }
                                                               §§goto(addr0168);
                                                            }
                                                            §§goto(addr0222);
                                                         }
                                                         §§goto(addr0130);
                                                      }
                                                      §§goto(addr017b);
                                                   }
                                                   §§goto(addr0130);
                                                }
                                                §§goto(addr0198);
                                             }
                                             §§goto(addr0335);
                                          }
                                          §§goto(addr0237);
                                       }
                                       §§goto(addr0159);
                                    }
                                    §§goto(addr0143);
                                 }
                                 §§goto(addr0121);
                              }
                              §§goto(addr01b3);
                           }
                           §§goto(addr00f5);
                        }
                        §§goto(addr0198);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr0115);
               }
               §§goto(addr0159);
            }
            §§goto(addr006c);
         }
         §§goto(addr0375);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            DynamicImageButtonSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr002d);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr002d:
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
      
      private function _DynamicImageButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.id = "runtimeImageContainer";
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0070:
                        this.runtimeImageContainer = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           BindingManager.executeBindings(this,"runtimeImageContainer",this.runtimeImageContainer);
                        }
                     }
                  }
                  §§goto(addr008f);
               }
            }
            §§goto(addr0070);
         }
         addr008f:
         return _loc1_;
      }
      
      private function _DynamicImageButtonSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc1_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(0);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("dynaLibName");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"runtimeImageContainer.dynaLibName");
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():*
                                    {
                                       return getStyle("upImage");
                                    },null,"_DynamicImageButtonSkin_SetProperty1.value");
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00d9:
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc2_)
                                          {
                                             §§push(2);
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr00ef:
                                                §§pop()[§§pop()] = new Binding(this,function():*
                                                {
                                                   return getStyle("overImage");
                                                },null,"_DynamicImageButtonSkin_SetProperty2.value");
                                                if(_loc2_)
                                                {
                                                   addr0105:
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push(3);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():*
                                                            {
                                                               return getStyle("downImage");
                                                            },null,"_DynamicImageButtonSkin_SetProperty3.value");
                                                            if(!_loc3_)
                                                            {
                                                               addr0154:
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr0179);
                                                               }
                                                               §§goto(addr0177);
                                                            }
                                                            §§goto(addr0175);
                                                         }
                                                         §§goto(addr0164);
                                                      }
                                                      addr0179:
                                                   }
                                                   §§goto(addr015b);
                                                }
                                                §§goto(addr0154);
                                             }
                                             §§goto(addr0164);
                                          }
                                          §§goto(addr0162);
                                       }
                                       addr015b:
                                       §§push(§§pop().§§slot[1]);
                                       if(!_loc3_)
                                       {
                                          addr0164:
                                          §§pop()[4] = new Binding(this,function():*
                                          {
                                             return getStyle("disabledImage");
                                          },null,"_DynamicImageButtonSkin_SetProperty4.value");
                                          addr0177:
                                          addr0175:
                                          §§push(result);
                                          addr0162:
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr0105);
                                 }
                                 §§goto(addr00ef);
                              }
                              §§goto(addr0162);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr0105);
                     }
                     §§goto(addr00ef);
                  }
                  §§goto(addr0162);
               }
               §§goto(addr0177);
            }
            §§goto(addr0175);
         }
         §§goto(addr0177);
      }
      
      [Bindable(event="propertyChange")]
      public function get _DynamicImageButtonSkin_SetProperty1() : SetProperty
      {
         return this._1897129873_DynamicImageButtonSkin_SetProperty1;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty1(param1:SetProperty) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1897129873_DynamicImageButtonSkin_SetProperty1;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003f:
                  this._1897129873_DynamicImageButtonSkin_SetProperty1 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get _DynamicImageButtonSkin_SetProperty2() : SetProperty
      {
         return this._1897129872_DynamicImageButtonSkin_SetProperty2;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty2(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1897129872_DynamicImageButtonSkin_SetProperty2;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1897129872_DynamicImageButtonSkin_SetProperty2 = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005b);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
      }
      
      [Bindable(event="propertyChange")]
      public function get _DynamicImageButtonSkin_SetProperty3() : SetProperty
      {
         return this._1897129871_DynamicImageButtonSkin_SetProperty3;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty3(param1:SetProperty) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1897129871_DynamicImageButtonSkin_SetProperty3;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1897129871_DynamicImageButtonSkin_SetProperty3 = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty3",_loc2_,param1));
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
      public function get _DynamicImageButtonSkin_SetProperty4() : SetProperty
      {
         return this._1897129870_DynamicImageButtonSkin_SetProperty4;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty4(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1897129870_DynamicImageButtonSkin_SetProperty4;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1897129870_DynamicImageButtonSkin_SetProperty4 = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty4",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get runtimeImageContainer() : BriskImageDynaLib
      {
         return this._117840734runtimeImageContainer;
      }
      
      public function set runtimeImageContainer(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._117840734runtimeImageContainer;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._117840734runtimeImageContainer = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runtimeImageContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DynamicImageButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0054:
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0054);
      }
   }
}

