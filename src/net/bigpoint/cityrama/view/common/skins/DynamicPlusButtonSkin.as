package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
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
   import mx.events.StateChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class DynamicPlusButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1418157577iconAsset:BriskImageDynaLib;
      
      private var _263713807overlayGroup:HGroup;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DynamicPlusButton;
      
      public function DynamicPlusButtonSkin()
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
         if(_loc4_ || _loc3_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(null);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0055:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr006f:
                              §§pop().§§slot[5] = null;
                              addr006e:
                              if(_loc4_ || _loc1_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_)
                                    {
                                       addr00a1:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00b4:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             addr00bf:
                                             super();
                                             if(_loc4_ || _loc2_)
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc3_)
                                                {
                                                   addr00e2:
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§§slot[1] = this._DynamicPlusButtonSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              addr014a:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_DynamicPlusButtonSkinWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0165:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr017b:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return DynamicPlusButtonSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          addr0197:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr01cb:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                this.width = 40;
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr020d:
                                                                                                   this.height = 40;
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0218:
                                                                                                      this.cacheAsBitmap = true;
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr022a:
                                                                                                         this.mxmlContent = [this._DynamicPlusButtonSkin_HGroup1_c(),this._DynamicPlusButtonSkin_HGroup2_i(),this._DynamicPlusButtonSkin_HGroup3_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib8_i(),this._DynamicPlusButtonSkin_BriskImageDynaLib9_i()];
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr0253:
                                                                                                            this.currentState = "up";
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               addr0268:
                                                                                                               this.addEventListener("currentStateChange",this.___DynamicPlusButtonSkin_SparkSkin1_currentStateChange);
                                                                                                               if(!(_loc3_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr0281:
                                                                                                                  states = [new State({
                                                                                                                     "name":"up",
                                                                                                                     "overrides":[]
                                                                                                                  }),new State({
                                                                                                                     "name":"down",
                                                                                                                     "overrides":[]
                                                                                                                  }),new State({
                                                                                                                     "name":"over",
                                                                                                                     "overrides":[new SetProperty().initializeFromObject({
                                                                                                                        "target":"plusIcon",
                                                                                                                        "name":"dynaBmpSourceName",
                                                                                                                        "value":"ui_mainbar_icon_add_mouseover"
                                                                                                                     })]
                                                                                                                  }),new State({
                                                                                                                     "name":"disabled",
                                                                                                                     "overrides":[]
                                                                                                                  }),new State({
                                                                                                                     "name":"inactive",
                                                                                                                     "overrides":[]
                                                                                                                  })];
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr02fc:
                                                                                                                     i = 0;
                                                                                                                     addr02fa:
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
                                                                                                                              if(!(_loc4_ || _loc3_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc4_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§§slot[4]);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(uint(§§pop() + 1));
                                                                                                                                    if(_loc3_ && _loc2_)
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
                                                                                                                  while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, _loc4_ || Boolean(this));
                                                                                                                  
                                                                                                                  return;
                                                                                                                  addr0372:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr02fa);
                                                                                                         }
                                                                                                         §§goto(addr0268);
                                                                                                      }
                                                                                                      §§goto(addr02fa);
                                                                                                   }
                                                                                                   §§goto(addr0372);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0281);
                                                                                          }
                                                                                          §§goto(addr020d);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0372);
                                                                                 }
                                                                                 §§goto(addr02fc);
                                                                              }
                                                                              §§goto(addr022a);
                                                                           }
                                                                           §§goto(addr0165);
                                                                        }
                                                                        §§goto(addr0197);
                                                                     }
                                                                     §§goto(addr017b);
                                                                  }
                                                                  §§goto(addr0268);
                                                               }
                                                               §§goto(addr02fc);
                                                            }
                                                            §§goto(addr0268);
                                                         }
                                                         §§goto(addr014a);
                                                      }
                                                      §§goto(addr0218);
                                                   }
                                                   §§goto(addr014a);
                                                }
                                                §§goto(addr0253);
                                             }
                                             §§goto(addr01cb);
                                          }
                                          §§goto(addr0281);
                                       }
                                       §§goto(addr00e2);
                                    }
                                    §§goto(addr0372);
                                 }
                                 §§goto(addr00a1);
                              }
                              §§goto(addr017b);
                           }
                           §§goto(addr02fc);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr006f);
                  }
                  §§goto(addr0165);
               }
               §§goto(addr00b4);
            }
            §§goto(addr0055);
         }
         §§goto(addr006e);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            DynamicPlusButtonSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr003b:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr003b);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function handleCurrentStateChange() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            TweenMax.to(this.iconAsset,0,{"colorMatrixFilter":{"saturation":1}});
         }
         var _loc1_:§--UNKNOWN--§ = currentState;
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push("up");
            if(!_loc2_)
            {
               if(§§pop() === _loc1_)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr00e5:
                     §§push(0);
                     if(_loc2_ && _loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr0147:
                     §§push(2);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  §§push("over");
                  if(_loc3_)
                  {
                     if(§§pop() === _loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(1);
                           if(_loc2_ && Boolean(_loc1_))
                           {
                           }
                        }
                        else
                        {
                           addr0171:
                           §§push(3);
                           if(_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push("down");
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0135:
                           if(§§pop() === _loc1_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr0147);
                              }
                              else
                              {
                                 addr0184:
                                 §§push(4);
                                 if(_loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("disabled");
                              if(_loc3_)
                              {
                                 addr0167:
                                 if(§§pop() === _loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr0171);
                                    }
                                    else
                                    {
                                       §§goto(addr0184);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr017f);
                                 }
                                 §§goto(addr0184);
                              }
                              addr017f:
                              if("inactive" === _loc1_)
                              {
                                 §§goto(addr0184);
                              }
                              else
                              {
                                 §§push(5);
                              }
                           }
                           §§goto(addr019b);
                        }
                        §§goto(addr0167);
                     }
                     §§goto(addr019b);
                  }
                  §§goto(addr0135);
               }
               addr019b:
               switch(§§pop())
               {
                  case 0:
                     TweenMax.to(this.overlayGroup,0,{"tint":16751616});
                     if(_loc3_)
                     {
                     }
                     break;
                  case 1:
                     TweenMax.to(this.overlayGroup,0,{"tint":178896});
                     if(_loc3_)
                     {
                     }
                     break;
                  case 2:
                     TweenMax.to(this.overlayGroup,0,{"tint":16751616});
                     if(_loc2_)
                     {
                     }
                     break;
                  case 3:
                  case 4:
                     TweenMax.to(this.overlayGroup,0,{"tint":12038312});
                     if(_loc2_)
                     {
                     }
               }
               return;
            }
            §§goto(addr0167);
         }
         §§goto(addr00e5);
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.hostComponent);
            if(_loc3_)
            {
               §§push(§§pop());
               if(!(_loc4_ && param2))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        addr004b:
                        §§pop();
                        if(_loc3_)
                        {
                           addr006a:
                           addr0054:
                           addr0051:
                           §§push(this.hostComponent.inactive);
                           if(_loc3_)
                           {
                              addr0069:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr007c:
                                 param1 = "inactive";
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    addr008d:
                                    super.setCurrentState(param1,param2);
                                 }
                              }
                              return;
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0069);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr004b);
            }
            §§goto(addr0054);
         }
         §§goto(addr0051);
      }
      
      private function _DynamicPlusButtonSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 0;
            if(_loc3_)
            {
               §§goto(addr0032);
            }
            §§goto(addr009b);
         }
         addr0032:
         _loc1_.left = 0;
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr004e);
            }
            §§goto(addr009b);
         }
         addr004e:
         _loc1_.percentHeight = 100;
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._DynamicPlusButtonSkin_BriskImageDynaLib1_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib2_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib3_c()];
                     addr009b:
                     if(_loc3_)
                     {
                        §§goto(addr00c4);
                     }
                     §§goto(addr00d8);
                  }
               }
               addr00c4:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr00d8:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00dc);
            }
         }
         addr00dc:
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               addr0038:
               _loc1_.dynaBmpSourceName = "button_40px_left";
               if(_loc3_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr004f);
            }
            addr0043:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr004f:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.dynaBmpSourceName = "button_40px_middle";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr007d);
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "button_40px_right";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr004c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr005c);
            }
            §§goto(addr004c);
         }
         addr005c:
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.left = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr005f:
                        _loc1_.gap = 0;
                        if(_loc3_)
                        {
                           _loc1_.verticalAlign = "middle";
                           if(!_loc2_)
                           {
                              addr0080:
                              _loc1_.blendMode = "overlay";
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr0094);
                              }
                              §§goto(addr00f7);
                           }
                           addr0094:
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._DynamicPlusButtonSkin_BriskImageDynaLib4_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib5_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib6_c()];
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00c2:
                                 _loc1_.id = "overlayGroup";
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00e2:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc2_)
                                       {
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr0101);
                                       }
                                    }
                                    §§goto(addr00f7);
                                 }
                                 §§goto(addr0101);
                              }
                              addr00f7:
                              this.overlayGroup = _loc1_;
                              if(_loc3_)
                              {
                                 addr0101:
                                 BindingManager.executeBindings(this,"overlayGroup",this.overlayGroup);
                              }
                              §§goto(addr010e);
                           }
                           addr010e:
                           return _loc1_;
                        }
                        §§goto(addr00e2);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0101);
            }
            §§goto(addr00c2);
         }
         §§goto(addr005f);
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "button_40px_left";
               if(_loc2_ || _loc2_)
               {
                  addr0057:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               addr0041:
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.dynaBmpSourceName = "button_40px_middle";
                  if(!_loc3_)
                  {
                     §§goto(addr0069);
                  }
               }
               §§goto(addr0075);
            }
            addr0069:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0041);
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "button_40px_right";
               if(_loc2_ || Boolean(this))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr005f);
      }
      
      private function _DynamicPlusButtonSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.left = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.bottom = 0;
                  addr0044:
                  if(!_loc2_)
                  {
                     addr0059:
                     _loc1_.right = 0;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.mxmlContent = [this._DynamicPlusButtonSkin_BriskImageDynaLib7_i()];
                              addr0080:
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00b8:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00b8);
                           }
                           addr00bc:
                           return _loc1_;
                        }
                     }
                  }
               }
               §§goto(addr0080);
            }
            §§goto(addr0059);
         }
         §§goto(addr0044);
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.id = "iconAsset";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr005e:
                        this.iconAsset = _loc1_;
                        if(_loc2_)
                        {
                           addr0068:
                           BindingManager.executeBindings(this,"iconAsset",this.iconAsset);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr0068);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr005e);
            }
         }
         addr0075:
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(_loc3_)
               {
                  addr0038:
                  _loc1_.mouseEnabled = false;
                  if(_loc3_ || _loc2_)
                  {
                     addr004a:
                     _loc1_.mouseChildren = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.verticalCenter = 10;
                        if(!_loc2_)
                        {
                           addr0072:
                           _loc1_.horizontalCenter = 10;
                           if(_loc3_)
                           {
                              addr007c:
                              _loc1_.id = "plusIcon";
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr008f:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00a7);
                                    }
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        addr00a7:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr00b0:
                           this.plusIcon = _loc1_;
                           if(_loc3_ || Boolean(this))
                           {
                              BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007c);
            }
            §§goto(addr0038);
         }
         §§goto(addr004a);
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
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
                  addr0033:
                  _loc1_.visible = false;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr0065);
               }
               addr0044:
               _loc1_.top = -7;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0065:
                  _loc1_.left = -5;
                  if(_loc2_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc2_)
                     {
                        _loc1_.id = "sparkle";
                        if(!_loc3_)
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr00b7);
                                 }
                              }
                              §§goto(addr00c1);
                           }
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00b7);
            }
            addr00b7:
            this.sparkle = _loc1_;
            if(_loc2_)
            {
               addr00c1:
               BindingManager.executeBindings(this,"sparkle",this.sparkle);
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      public function ___DynamicPlusButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleCurrentStateChange();
         }
      }
      
      private function _DynamicPlusButtonSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§goto(addr003d);
               }
               §§goto(addr008f);
            }
            §§goto(addr006c);
         }
         addr003d:
         §§push(§§pop().§§slot[1]);
         if(_loc2_)
         {
            §§push(0);
            if(_loc2_)
            {
               §§pop()[§§pop()] = new Binding(this,function():String
               {
                  var _loc1_:* = hostComponent.iconLibName;
                  return _loc1_ == undefined ? null : String(_loc1_);
               },null,"iconAsset.dynaLibName");
               if(_loc2_)
               {
                  addr006c:
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§goto(addr0091);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr008d);
            }
            §§goto(addr007c);
         }
         addr0091:
         §§push(§§pop().§§slot[1]);
         if(!_loc3_)
         {
            addr007c:
            §§pop()[1] = new Binding(this,function():String
            {
               var _loc1_:* = hostComponent.iconImageName;
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"iconAsset.dynaBmpSourceName");
            addr008f:
            addr008d:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconAsset() : BriskImageDynaLib
      {
         return this._1418157577iconAsset;
      }
      
      public function set iconAsset(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1418157577iconAsset;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1418157577iconAsset = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0064);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconAsset",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayGroup() : HGroup
      {
         return this._263713807overlayGroup;
      }
      
      public function set overlayGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._263713807overlayGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0036:
                  this._263713807overlayGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0054);
            }
            addr007b:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1849499341plusIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1849499341plusIcon = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._2011710186sparkle = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DynamicPlusButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DynamicPlusButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr004d);
      }
   }
}

