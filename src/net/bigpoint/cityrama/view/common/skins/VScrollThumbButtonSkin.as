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
   import mx.graphics.SolidColor;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.VScrollThumbButton;
   import spark.components.Group;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VScrollThumbButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _2122701368_VScrollThumbButtonSkin_SetProperty1:SetProperty;
      
      private var _467939451_VScrollThumbButtonSkin_SolidColor1:SolidColor;
      
      private var _1717541629thumpContainer:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:VScrollThumbButton;
      
      public function VScrollThumbButtonSkin()
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
         if(_loc3_)
         {
            §§push(null);
            if(_loc3_ || Boolean(this))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        addr0045:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || Boolean(this))
                           {
                              addr005f:
                              §§pop().§§slot[5] = null;
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc4_)
                                 {
                                    addr0075:
                                    this.mx_internal::_watchers = [];
                                    if(!_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc4_)
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr00ba:
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr00c9:
                                                      §§pop().§§slot[1] = this._VScrollThumbButtonSkin_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            addr00e1:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr0133:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_VScrollThumbButtonSkinWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr014e:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       addr0179:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return VScrollThumbButtonSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0195:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr01f3:
                                                                                                this.mxmlContent = [this._VScrollThumbButtonSkin_Group1_c()];
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr0203:
                                                                                                   this.currentState = "up";
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0210:
                                                                                                      states = [new State({
                                                                                                         "name":"up",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"over",
                                                                                                         "overrides":[this._VScrollThumbButtonSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
                                                                                                            "isBaseValueDataBound":true,
                                                                                                            "target":"_VScrollThumbButtonSkin_SolidColor1",
                                                                                                            "name":"color",
                                                                                                            "value":undefined
                                                                                                         }))]
                                                                                                      }),new State({
                                                                                                         "name":"down",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc3_ || _loc1_)
                                                                                                      {
                                                                                                         addr0293:
                                                                                                         BindingManager.executeBindings(this,"_VScrollThumbButtonSkin_SetProperty1",this._VScrollThumbButtonSkin_SetProperty1);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr02a7:
                                                                                                            i = 0;
                                                                                                            addr02a5:
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
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[4]);
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc3_)
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
                                                                                                         while(var _temp_15:* = §§pop(), §§pop().§§slot[4] = _temp_15, !_loc4_);
                                                                                                         
                                                                                                         return;
                                                                                                         addr0304:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02a5);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0203);
                                                                                       }
                                                                                       §§goto(addr01f3);
                                                                                    }
                                                                                    §§goto(addr0304);
                                                                                 }
                                                                                 §§goto(addr02a7);
                                                                              }
                                                                              §§goto(addr0210);
                                                                           }
                                                                           §§goto(addr014e);
                                                                        }
                                                                        §§goto(addr01f3);
                                                                     }
                                                                     §§goto(addr0179);
                                                                  }
                                                                  §§goto(addr0304);
                                                               }
                                                               §§goto(addr02a7);
                                                            }
                                                            §§goto(addr0210);
                                                         }
                                                         §§goto(addr0133);
                                                      }
                                                      §§goto(addr01f3);
                                                   }
                                                   §§goto(addr00e1);
                                                }
                                                §§goto(addr0195);
                                             }
                                             §§goto(addr02a5);
                                          }
                                          §§goto(addr00ba);
                                       }
                                       §§goto(addr0293);
                                    }
                                    §§goto(addr02a5);
                                 }
                                 §§goto(addr0179);
                              }
                              §§goto(addr0075);
                           }
                           §§goto(addr02a7);
                        }
                        §§goto(addr02a5);
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr00c9);
               }
               §§goto(addr01f3);
            }
            §§goto(addr0045);
         }
         §§goto(addr02a7);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            VScrollThumbButtonSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr004a);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr004a:
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
      
      private function _VScrollThumbButtonSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._VScrollThumbButtonSkin_Graphic1_c()];
            if(!(_loc2_ && _loc3_))
            {
               addr0046:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _VScrollThumbButtonSkin_Graphic1_c() : Graphic
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Graphic = new Graphic();
         if(!_loc2_)
         {
            _loc1_.x = 0;
            if(_loc3_)
            {
               _loc1_.y = 0;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._VScrollThumbButtonSkin_Rect1_i()];
                  if(_loc3_)
                  {
                     addr0055:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0061:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0061);
            }
         }
         §§goto(addr0055);
      }
      
      private function _VScrollThumbButtonSkin_Rect1_i() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.height = 20;
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 6;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.radiusX = 4;
                  if(_loc2_)
                  {
                     _loc1_.radiusY = 4;
                     if(_loc2_)
                     {
                        addr0065:
                        _loc1_.fill = this._VScrollThumbButtonSkin_SolidColor1_i();
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr00a9);
                     }
                     addr0089:
                     _loc1_.initialized(this,"thumpContainer");
                     if(!_loc3_)
                     {
                        this.thumpContainer = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr00a9:
                           BindingManager.executeBindings(this,"thumpContainer",this.thumpContainer);
                        }
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr00b6);
            }
            §§goto(addr0065);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _VScrollThumbButtonSkin_SolidColor1_i() : SolidColor
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColor = new SolidColor();
         if(_loc2_)
         {
            this._VScrollThumbButtonSkin_SolidColor1 = _loc1_;
            if(_loc2_)
            {
               addr002b:
               BindingManager.executeBindings(this,"_VScrollThumbButtonSkin_SolidColor1",this._VScrollThumbButtonSkin_SolidColor1);
            }
            return _loc1_;
         }
         §§goto(addr002b);
      }
      
      private function _VScrollThumbButtonSkin_bindingsSetup() : Array
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
                  addr003c:
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():*
                        {
                           return getStyle("overColor");
                        },null,"_VScrollThumbButtonSkin_SetProperty1.value");
                        if(_loc3_)
                        {
                           addr006a:
                           §§push(§§newactivation());
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr0097);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0082);
                  }
                  addr0097:
                  §§goto(addr0079);
               }
               addr0079:
               §§push(§§pop().§§slot[1]);
               if(!_loc2_)
               {
                  addr0082:
                  §§pop()[1] = new Binding(this,function():uint
                  {
                     return getStyle("normalColor");
                  },null,"_VScrollThumbButtonSkin_SolidColor1.color");
                  addr0095:
                  addr0093:
                  return result;
               }
            }
            §§goto(addr006a);
         }
         §§goto(addr003c);
      }
      
      [Bindable(event="propertyChange")]
      public function get _VScrollThumbButtonSkin_SetProperty1() : SetProperty
      {
         return this._2122701368_VScrollThumbButtonSkin_SetProperty1;
      }
      
      public function set _VScrollThumbButtonSkin_SetProperty1(param1:SetProperty) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2122701368_VScrollThumbButtonSkin_SetProperty1;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._2122701368_VScrollThumbButtonSkin_SetProperty1 = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0074);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_VScrollThumbButtonSkin_SetProperty1",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get _VScrollThumbButtonSkin_SolidColor1() : SolidColor
      {
         return this._467939451_VScrollThumbButtonSkin_SolidColor1;
      }
      
      public function set _VScrollThumbButtonSkin_SolidColor1(param1:SolidColor) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._467939451_VScrollThumbButtonSkin_SolidColor1;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._467939451_VScrollThumbButtonSkin_SolidColor1 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_VScrollThumbButtonSkin_SolidColor1",_loc2_,param1));
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
      public function get thumpContainer() : Rect
      {
         return this._1717541629thumpContainer;
      }
      
      public function set thumpContainer(param1:Rect) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1717541629thumpContainer;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1717541629thumpContainer = param1;
                  addr0048:
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thumpContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollThumbButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollThumbButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004a:
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0055);
            }
            addr0073:
            return;
         }
         §§goto(addr004a);
      }
   }
}

