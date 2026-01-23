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
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.VScrollTrackButton;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VScrollTrackButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _282843249bottomImageContainer:BriskImageDynaLib;
      
      private var _1174468891centerImageContainer:BriskImageDynaLib;
      
      private var _863972891topImageContainer:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:VScrollTrackButton;
      
      public function VScrollTrackButtonSkin()
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
         if(!(_loc3_ && _loc1_))
         {
            §§push(null);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(null);
                     if(_loc4_ || _loc1_)
                     {
                        addr005e:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0080:
                              §§pop().§§slot[5] = null;
                              addr007f:
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             super();
                                             if(_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      addr00ea:
                                                      §§pop().§§slot[1] = this._VScrollTrackButtonSkin_bindingsSetup();
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            addr0109:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               addr011d:
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0130:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr013d:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_VScrollTrackButtonSkinWatcherSetupUtil");
                                                                              addr014c:
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr016b:
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0190:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return VScrollTrackButtonSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr01b3:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0208:
                                                                                                this.mxmlContent = [this._VScrollTrackButtonSkin_VGroup1_c()];
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0219:
                                                                                                   this.currentState = "up";
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0226:
                                                                                                      states = [new State({
                                                                                                         "name":"up",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"over",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"down",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr027f:
                                                                                                         i = 0;
                                                                                                         addr027d:
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
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc3_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc3_)
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
                                                                                                      while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, !_loc3_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02e4:
                                                                                                   }
                                                                                                   §§goto(addr027d);
                                                                                                }
                                                                                                §§goto(addr0226);
                                                                                             }
                                                                                             §§goto(addr0219);
                                                                                          }
                                                                                          §§goto(addr0208);
                                                                                       }
                                                                                       §§goto(addr02e4);
                                                                                    }
                                                                                    §§goto(addr0208);
                                                                                 }
                                                                                 §§goto(addr027f);
                                                                              }
                                                                              §§goto(addr0219);
                                                                           }
                                                                           §§goto(addr027f);
                                                                        }
                                                                     }
                                                                     §§goto(addr0190);
                                                                  }
                                                                  §§goto(addr0208);
                                                               }
                                                               §§goto(addr027f);
                                                            }
                                                            §§goto(addr02e4);
                                                         }
                                                         §§goto(addr014c);
                                                      }
                                                      §§goto(addr016b);
                                                   }
                                                   §§goto(addr027f);
                                                }
                                                §§goto(addr0130);
                                             }
                                             §§goto(addr0190);
                                          }
                                       }
                                       §§goto(addr027d);
                                    }
                                    §§goto(addr01b3);
                                 }
                              }
                              §§goto(addr011d);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr013d);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr00ea);
               }
               §§goto(addr0208);
            }
            §§goto(addr005e);
         }
         §§goto(addr007f);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && VScrollTrackButtonSkin))
         {
            VScrollTrackButtonSkin._watcherSetupUtil = param1;
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
            if(_loc3_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return;
                  }
               }
               else
               {
                  addr0068:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0068);
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
      
      private function _VScrollTrackButtonSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.gap = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._VScrollTrackButtonSkin_BriskImageDynaLib1_i(),this._VScrollTrackButtonSkin_BriskImageDynaLib2_i(),this._VScrollTrackButtonSkin_BriskImageDynaLib3_i()];
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0080);
               }
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _VScrollTrackButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.id = "topImageContainer";
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr0064);
                     }
                  }
                  §§goto(addr006e);
               }
               addr0064:
               this.topImageContainer = _loc1_;
               if(_loc2_)
               {
                  addr006e:
                  BindingManager.executeBindings(this,"topImageContainer",this.topImageContainer);
               }
               return _loc1_;
            }
         }
         §§goto(addr006e);
      }
      
      private function _VScrollTrackButtonSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "centerImageContainer";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr007b:
                           this.centerImageContainer = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              addr008d:
                              BindingManager.executeBindings(this,"centerImageContainer",this.centerImageContainer);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr007b);
               }
            }
            §§goto(addr008d);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _VScrollTrackButtonSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.id = "bottomImageContainer";
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0078);
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0078);
            }
            §§goto(addr008a);
         }
         addr0078:
         this.bottomImageContainer = _loc1_;
         if(!(_loc3_ && _loc3_))
         {
            addr008a:
            BindingManager.executeBindings(this,"bottomImageContainer",this.bottomImageContainer);
         }
         return _loc1_;
      }
      
      private function _VScrollTrackButtonSkin_bindingsSetup() : Array
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
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("dynaLibName");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"topImageContainer.dynaLibName");
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc1_))
                           {
                              addr0084:
                              §§push(§§pop().§§slot[1]);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push(1);
                                 if(_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = getStyle("topImage");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"topImageContainer.dynaBmpSourceName");
                                    if(_loc2_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00cd:
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc2_)
                                          {
                                             addr00d4:
                                             §§push(2);
                                             if(!_loc3_)
                                             {
                                                addr00db:
                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                {
                                                   var _loc1_:* = getStyle("dynaLibName");
                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                },null,"centerImageContainer.dynaLibName");
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      addr0108:
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!_loc3_)
                                                      {
                                                         addr010f:
                                                         §§push(3);
                                                         if(!_loc3_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                            {
                                                               var _loc1_:* = getStyle("centerImage");
                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                            },null,"centerImageContainer.dynaBmpSourceName");
                                                            if(!_loc3_)
                                                            {
                                                               addr012c:
                                                               §§push(§§newactivation());
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr014a:
                                                                     §§push(4);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0151:
                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                        {
                                                                           var _loc1_:* = getStyle("dynaLibName");
                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                        },null,"bottomImageContainer.dynaLibName");
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0167:
                                                                           §§push(§§newactivation());
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              §§goto(addr01a9);
                                                                           }
                                                                           §§goto(addr01a7);
                                                                        }
                                                                        §§goto(addr01a5);
                                                                     }
                                                                     §§goto(addr0194);
                                                                  }
                                                                  addr01a9:
                                                               }
                                                               §§goto(addr0183);
                                                            }
                                                            §§goto(addr01a5);
                                                         }
                                                         §§goto(addr0194);
                                                      }
                                                      §§goto(addr0192);
                                                   }
                                                   addr0183:
                                                   §§push(§§pop().§§slot[1]);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr0194:
                                                      §§pop()[5] = new Binding(this,function():String
                                                      {
                                                         var _loc1_:* = getStyle("bottomImage");
                                                         return _loc1_ == undefined ? null : String(_loc1_);
                                                      },null,"bottomImageContainer.dynaBmpSourceName");
                                                      addr01a7:
                                                      addr01a5:
                                                      §§push(result);
                                                      addr0192:
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr0167);
                                             }
                                             §§goto(addr0194);
                                          }
                                          §§goto(addr014a);
                                       }
                                       §§goto(addr0108);
                                    }
                                    §§goto(addr01a5);
                                 }
                                 §§goto(addr00db);
                              }
                              §§goto(addr010f);
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr012c);
                     }
                     §§goto(addr0151);
                  }
                  §§goto(addr00d4);
               }
               §§goto(addr0084);
            }
            §§goto(addr012c);
         }
         §§goto(addr01a7);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomImageContainer() : BriskImageDynaLib
      {
         return this._282843249bottomImageContainer;
      }
      
      public function set bottomImageContainer(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._282843249bottomImageContainer;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._282843249bottomImageContainer = param1;
                  addr003d:
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomImageContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get centerImageContainer() : BriskImageDynaLib
      {
         return this._1174468891centerImageContainer;
      }
      
      public function set centerImageContainer(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1174468891centerImageContainer;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1174468891centerImageContainer = param1;
                  if(!_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerImageContainer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get topImageContainer() : BriskImageDynaLib
      {
         return this._863972891topImageContainer;
      }
      
      public function set topImageContainer(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._863972891topImageContainer;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._863972891topImageContainer = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topImageContainer",_loc2_,param1));
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
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollTrackButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollTrackButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0046:
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008a);
                  }
               }
               §§goto(addr007b);
            }
            addr008a:
            return;
         }
         §§goto(addr0046);
      }
   }
}

