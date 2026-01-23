package net.bigpoint.cityrama.view.assistants.ui.skins
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
   import mx.resources.ResourceManager;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorInfoComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class RentCollectorSuccessSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _RentCollectorSuccessSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _RentCollectorSuccessSkin_BriskImageDynaLib6:BriskImageDynaLib;
      
      public var _RentCollectorSuccessSkin_BriskImageDynaLib7:BriskImageDynaLib;
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1783636765epAmount:LocaLabel;
      
      private var _1297385352epText:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _207407736ppAmount:LocaLabel;
      
      private var _982464691ppText:LocaLabel;
      
      private var _873278107vcAmount:LocaLabel;
      
      private var _822695558vcText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:RentCollectorInfoComponent;
      
      public function RentCollectorSuccessSkin()
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
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(null);
                     if(_loc3_)
                     {
                        addr0042:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              addr0054:
                              §§pop().§§slot[5] = null;
                              if(!(_loc4_ && Boolean(this)))
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
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_ || _loc3_)
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   addr00bf:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      §§pop().§§slot[1] = this._RentCollectorSuccessSkin_bindingsSetup();
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr00e7:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr00f7:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr011a:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr012d:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           addr013a:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_assistants_ui_skins_RentCollectorSuccessSkinWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0155:
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    addr0165:
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       addr018f:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return RentCollectorSuccessSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01ad:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && Boolean(this)))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && Boolean(this)))
                                                                                             {
                                                                                                addr020b:
                                                                                                this.width = 250;
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   addr021e:
                                                                                                   this.minHeight = 90;
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      this.mxmlContent = [this._RentCollectorSuccessSkin_Group1_c()];
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         addr0242:
                                                                                                         this.currentState = "normal";
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr024f:
                                                                                                            this.addEventListener("creationComplete",this.___RentCollectorSuccessSkin_SparkSkin1_creationComplete);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr0261:
                                                                                                               states = [new State({
                                                                                                                  "name":"normal",
                                                                                                                  "overrides":[]
                                                                                                               }),new State({
                                                                                                                  "name":"disabled",
                                                                                                                  "overrides":[]
                                                                                                               })];
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr0290:
                                                                                                                  i = 0;
                                                                                                                  addr028e:
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
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        Binding(bindings[i]).execute();
                                                                                                                        if(_loc4_ && Boolean(this))
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[4]);
                                                                                                                           if(!(_loc3_ || _loc1_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(!(_loc3_ || _loc2_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              var _temp_28:* = §§pop();
                                                                                                                              §§pop().§§slot[4] = _temp_28;
                                                                                                                              if(_loc3_)
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
                                                                                                            addr0304:
                                                                                                         }
                                                                                                         §§goto(addr028e);
                                                                                                      }
                                                                                                      §§goto(addr024f);
                                                                                                   }
                                                                                                   §§goto(addr028e);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0304);
                                                                                          }
                                                                                          §§goto(addr024f);
                                                                                       }
                                                                                       §§goto(addr0304);
                                                                                    }
                                                                                    §§goto(addr028e);
                                                                                 }
                                                                                 §§goto(addr0290);
                                                                              }
                                                                              §§goto(addr0242);
                                                                           }
                                                                           §§goto(addr0165);
                                                                        }
                                                                        §§goto(addr021e);
                                                                     }
                                                                     §§goto(addr018f);
                                                                  }
                                                                  §§goto(addr0242);
                                                               }
                                                               §§goto(addr0290);
                                                            }
                                                            §§goto(addr020b);
                                                         }
                                                         §§goto(addr0290);
                                                      }
                                                      §§goto(addr0304);
                                                   }
                                                   §§goto(addr0290);
                                                }
                                                §§goto(addr00e7);
                                             }
                                             §§goto(addr013a);
                                          }
                                          §§goto(addr012d);
                                       }
                                       §§goto(addr00bf);
                                    }
                                 }
                                 §§goto(addr0261);
                              }
                              §§goto(addr013a);
                           }
                           §§goto(addr0290);
                        }
                        §§goto(addr0155);
                     }
                     §§goto(addr0054);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr01ad);
            }
            §§goto(addr0042);
         }
         §§goto(addr011a);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            RentCollectorSuccessSkin._watcherSetupUtil = param1;
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
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0048);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0054);
            }
            addr0048:
            return;
         }
         addr0054:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.vcText.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.virtualcurrency"));
            if(!(_loc2_ && _loc2_))
            {
               this.ppText.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints"));
               if(!(_loc2_ && _loc2_))
               {
                  addr0092:
                  this.epText.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints"));
               }
               §§goto(addr00b2);
            }
            §§goto(addr0092);
         }
         addr00b2:
      }
      
      private function _RentCollectorSuccessSkin_Group1_c() : Group
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
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  §§goto(addr0048);
               }
               §§goto(addr0058);
            }
            addr0048:
            _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_Group2_c()];
            if(!_loc3_)
            {
               addr0058:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _RentCollectorSuccessSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_RentCollectorBubbleComponent1_i(),this._RentCollectorSuccessSkin_HGroup1_c(),this._RentCollectorSuccessSkin_BriskImageDynaLib4_c(),this._RentCollectorSuccessSkin_HGroup2_c(),this._RentCollectorSuccessSkin_VGroup1_c()];
               if(!_loc3_)
               {
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0071);
      }
      
      private function _RentCollectorSuccessSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.bottom = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.right = 0;
                  if(_loc3_)
                  {
                     _loc1_.id = "bubble";
                     if(_loc3_ || _loc3_)
                     {
                        addr0069:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr007d:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009a:
                                 this.bubble = _loc1_;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00ac:
                                    BindingManager.executeBindings(this,"bubble",this.bubble);
                                 }
                                 §§goto(addr00b9);
                              }
                              §§goto(addr00ac);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr009a);
                     }
                     addr00b9:
                     return _loc1_;
                  }
                  §§goto(addr0069);
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr00ac);
      }
      
      private function _RentCollectorSuccessSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.left = 5;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.right = 15;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        addr0066:
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           addr0071:
                           _loc1_.top = 9;
                           if(!_loc2_)
                           {
                              addr007b:
                              _loc1_.height = 30;
                              if(!_loc2_)
                              {
                                 _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_BriskImageDynaLib1_c(),this._RentCollectorSuccessSkin_BriskImageDynaLib2_c(),this._RentCollectorSuccessSkin_BriskImageDynaLib3_c()];
                                 if(_loc3_)
                                 {
                                    §§goto(addr00ad);
                                 }
                              }
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr0071);
                  }
                  addr00ad:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00c1:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr0071);
            }
            addr00c5:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               §§goto(addr003c);
            }
            §§goto(addr0054);
         }
         addr003c:
         if(!_loc3_)
         {
            addr0054:
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               §§goto(addr005e);
            }
            §§goto(addr0072);
         }
         addr005e:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr0072:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 90;
                  §§goto(addr004c);
               }
               §§goto(addr0082);
            }
            §§goto(addr006c);
         }
         addr004c:
         if(_loc3_ || Boolean(this))
         {
            addr006c:
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               §§goto(addr0076);
            }
            §§goto(addr0082);
         }
         addr0076:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr0082:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  addr0049:
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.left = -8;
                  if(_loc2_)
                  {
                     _loc1_.top = -10;
                     if(!_loc3_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr007c:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr007c);
            }
         }
         addr0080:
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.left = 5;
            if(_loc3_)
            {
               _loc1_.top = 11;
               if(_loc3_)
               {
                  _loc1_.right = 10;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr006e);
               }
            }
            addr0051:
            _loc1_.height = 30;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr006e:
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     §§goto(addr0085);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0095);
            }
            §§goto(addr0085);
         }
         addr0085:
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel1_i()];
         if(!_loc2_)
         {
            addr0095:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr00a9:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "eventName";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.maxWidth = 170;
               if(_loc2_ || _loc2_)
               {
                  addr005c:
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc3_)
                  {
                     addr0067:
                     _loc1_.id = "header";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr007a);
                     }
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0067);
            }
            addr007a:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr00a1);
                  }
               }
               §§goto(addr00ab);
            }
            addr00a1:
            this.header = _loc1_;
            if(_loc2_)
            {
               addr00ab:
               BindingManager.executeBindings(this,"header",this.header);
            }
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _RentCollectorSuccessSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.left = 5;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.right = 15;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0044:
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.paddingTop = 50;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.minHeight = 30;
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_HGroup3_c(),this._RentCollectorSuccessSkin_HGroup4_c(),this._RentCollectorSuccessSkin_HGroup5_c(),this._RentCollectorSuccessSkin_Group3_c()];
                              addr0093:
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00ca:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00de:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr00de);
                           }
                           addr00e2:
                           return _loc1_;
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr0093);
                  }
               }
               §§goto(addr00ca);
            }
            §§goto(addr0093);
         }
         §§goto(addr0044);
      }
      
      private function _RentCollectorSuccessSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 85;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               §§goto(addr0038);
            }
            §§goto(addr0097);
         }
         addr0038:
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel2_i(),this._RentCollectorSuccessSkin_LocaLabel3_i(),this._RentCollectorSuccessSkin_BriskImageDynaLib5_i()];
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0097:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr0097);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "residentialCycleTextLeft";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "vcText";
                  if(!_loc2_)
                  {
                     addr0053:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007a:
                              this.vcText = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr008c:
                                 BindingManager.executeBindings(this,"vcText",this.vcText);
                              }
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0053);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr008c);
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.styleName = "residentialCycleText";
            if(!_loc3_)
            {
               _loc1_.id = "vcAmount";
               addr0032:
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0068:
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           addr0079:
                           this.vcAmount = _loc1_;
                           if(_loc2_)
                           {
                              BindingManager.executeBindings(this,"vcAmount",this.vcAmount);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0068);
            }
            §§goto(addr0079);
         }
         §§goto(addr0032);
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_cc_icon_small";
               if(!_loc3_)
               {
                  _loc1_.id = "_RentCollectorSuccessSkin_BriskImageDynaLib5";
                  if(!_loc3_)
                  {
                     addr0057:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0081:
                              this._RentCollectorSuccessSkin_BriskImageDynaLib5 = _loc1_;
                              if(!_loc3_)
                              {
                                 addr008c:
                                 BindingManager.executeBindings(this,"_RentCollectorSuccessSkin_BriskImageDynaLib5",this._RentCollectorSuccessSkin_BriskImageDynaLib5);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr008c);
                        }
                        addr009a:
                        return _loc1_;
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr0057);
         }
         §§goto(addr008c);
      }
      
      private function _RentCollectorSuccessSkin_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 85;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel4_i(),this._RentCollectorSuccessSkin_LocaLabel5_i(),this._RentCollectorSuccessSkin_BriskImageDynaLib6_i()];
                     if(_loc3_)
                     {
                        addr0087:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0093:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0087);
         }
         §§goto(addr0093);
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "residentialCycleTextLeft";
            if(!_loc2_)
            {
               §§goto(addr002b);
            }
            §§goto(addr007e);
         }
         addr002b:
         _loc1_.percentWidth = 100;
         if(!_loc2_)
         {
            _loc1_.id = "ppText";
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr007e);
                     }
                  }
                  §§goto(addr0090);
               }
            }
            addr007e:
            this.ppText = _loc1_;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0090:
               BindingManager.executeBindings(this,"ppText",this.ppText);
            }
            §§goto(addr009d);
         }
         addr009d:
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.styleName = "residentialCycleText";
            if(_loc2_)
            {
               §§goto(addr003c);
            }
            §§goto(addr0047);
         }
         addr003c:
         _loc1_.id = "ppAmount";
         if(_loc2_)
         {
            addr0047:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  §§goto(addr005f);
               }
            }
            §§goto(addr0068);
         }
         addr005f:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr0068:
            this.ppAmount = _loc1_;
            if(_loc2_ || _loc2_)
            {
               BindingManager.executeBindings(this,"ppAmount",this.ppAmount);
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "pp_icon_small";
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0059);
               }
               §§goto(addr008e);
            }
            addr0059:
            _loc1_.id = "_RentCollectorSuccessSkin_BriskImageDynaLib6";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr008e:
                        this._RentCollectorSuccessSkin_BriskImageDynaLib6 = _loc1_;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00a1:
                           BindingManager.executeBindings(this,"_RentCollectorSuccessSkin_BriskImageDynaLib6",this._RentCollectorSuccessSkin_BriskImageDynaLib6);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr008e);
            }
            addr00af:
            return _loc1_;
         }
         §§goto(addr008e);
      }
      
      private function _RentCollectorSuccessSkin_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 85;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     addr005f:
                     _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel6_i(),this._RentCollectorSuccessSkin_LocaLabel7_i(),this._RentCollectorSuccessSkin_BriskImageDynaLib7_i()];
                     if(!_loc3_)
                     {
                        addr007b:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0087);
                  }
               }
               addr008b:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr005f);
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel6_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "residentialCycleTextLeft";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr004a:
                  _loc1_.id = "epText";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0075);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0090);
               }
               addr0075:
               _loc1_.document = this;
               if(_loc3_)
               {
                  addr007e:
                  this.epText = _loc1_;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0090:
                     BindingManager.executeBindings(this,"epText",this.epText);
                  }
               }
               return _loc1_;
            }
            §§goto(addr005d);
         }
         §§goto(addr004a);
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel7_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "residentialCycleText";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "epAmount";
               addr0031:
               if(_loc2_)
               {
                  §§goto(addr004a);
               }
               §§goto(addr0083);
            }
            addr004a:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0083);
            }
            addr0071:
            this.epAmount = _loc1_;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0083:
               BindingManager.executeBindings(this,"epAmount",this.epAmount);
            }
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "ep_icon_small";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "_RentCollectorSuccessSkin_BriskImageDynaLib7";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0089:
                              this._RentCollectorSuccessSkin_BriskImageDynaLib7 = _loc1_;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"_RentCollectorSuccessSkin_BriskImageDynaLib7",this._RentCollectorSuccessSkin_BriskImageDynaLib7);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009b);
                        }
                        addr00a8:
                        return _loc1_;
                     }
                     §§goto(addr0089);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr0080);
         }
         §§goto(addr0089);
      }
      
      private function _RentCollectorSuccessSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.height = 5;
            if(_loc2_)
            {
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
      
      public function ___RentCollectorSuccessSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _RentCollectorSuccessSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_ || Boolean(this))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Boolean
                        {
                           return vcAmount.visible;
                        },null,"vcText.visible");
                        if(!_loc2_)
                        {
                           addr006d:
                           §§push(§§newactivation());
                           if(!(_loc2_ && _loc2_))
                           {
                              addr007c:
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Boolean
                                    {
                                       return vcAmount.includeInLayout;
                                    },null,"vcText.includeInLayout");
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc3_)
                                          {
                                             §§push(2);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr00c6:
                                                §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                {
                                                   return vcAmount.visible;
                                                },null,"_RentCollectorSuccessSkin_BriskImageDynaLib5.visible");
                                                if(!_loc2_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         §§push(3);
                                                         if(_loc3_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                            {
                                                               return vcAmount.includeInLayout;
                                                            },null,"_RentCollectorSuccessSkin_BriskImageDynaLib5.includeInLayout");
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                                        {
                                                                           return ppAmount.visible;
                                                                        },null,"ppText.visible");
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 §§push(5);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                                                    {
                                                                                       return ppAmount.includeInLayout;
                                                                                    },null,"ppText.includeInLayout");
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr018c);
                                                                                       }
                                                                                       §§goto(addr01c8);
                                                                                    }
                                                                                    §§goto(addr01b9);
                                                                                 }
                                                                                 §§goto(addr02cc);
                                                                              }
                                                                              §§goto(addr01cf);
                                                                           }
                                                                           §§goto(addr02e0);
                                                                        }
                                                                        §§goto(addr02de);
                                                                     }
                                                                     §§goto(addr0256);
                                                                  }
                                                                  §§goto(addr028b);
                                                               }
                                                               §§goto(addr01c8);
                                                            }
                                                            §§goto(addr0275);
                                                         }
                                                         §§goto(addr01a2);
                                                      }
                                                      §§goto(addr02ca);
                                                   }
                                                   §§goto(addr02c3);
                                                }
                                                §§goto(addr01b9);
                                             }
                                             §§goto(addr01a2);
                                          }
                                          §§goto(addr0247);
                                       }
                                       addr018c:
                                       §§push(§§pop().§§slot[1]);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr019b:
                                          §§push(6);
                                          if(!_loc2_)
                                          {
                                             addr01a2:
                                             §§pop()[§§pop()] = new Binding(this,function():Boolean
                                             {
                                                return ppAmount.visible;
                                             },null,"_RentCollectorSuccessSkin_BriskImageDynaLib6.visible");
                                             if(!_loc2_)
                                             {
                                                addr01b9:
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr01c8:
                                                   §§push(§§pop().§§slot[1]);
                                                   if(_loc3_)
                                                   {
                                                      addr01cf:
                                                      §§push(7);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                         {
                                                            return ppAmount.includeInLayout;
                                                         },null,"_RentCollectorSuccessSkin_BriskImageDynaLib6.includeInLayout");
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            addr01fd:
                                                            §§push(§§newactivation());
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               addr020c:
                                                               §§push(§§pop().§§slot[1]);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(8);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                                     {
                                                                        return epAmount.visible;
                                                                     },null,"epText.visible");
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr0231:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr0238:
                                                                           §§push(§§pop().§§slot[1]);
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              addr0247:
                                                                              §§push(9);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 addr0256:
                                                                                 §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                                                 {
                                                                                    return epAmount.includeInLayout;
                                                                                 },null,"epText.includeInLayout");
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr0275:
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr027c:
                                                                                       §§push(§§pop().§§slot[1]);
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          addr028b:
                                                                                          §§push(10);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr0292:
                                                                                             §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                                                             {
                                                                                                return epAmount.visible;
                                                                                             },null,"_RentCollectorSuccessSkin_BriskImageDynaLib7.visible");
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                addr02bc:
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr02c3);
                                                                                                }
                                                                                                §§goto(addr02e0);
                                                                                             }
                                                                                             §§goto(addr02de);
                                                                                          }
                                                                                          §§goto(addr02cc);
                                                                                       }
                                                                                       §§goto(addr02ca);
                                                                                    }
                                                                                    addr02c3:
                                                                                    §§goto(addr02e2);
                                                                                 }
                                                                                 §§goto(addr02bc);
                                                                              }
                                                                              §§goto(addr02cc);
                                                                           }
                                                                           §§goto(addr02ca);
                                                                        }
                                                                        §§goto(addr02e0);
                                                                     }
                                                                     §§goto(addr02de);
                                                                  }
                                                                  §§goto(addr0256);
                                                               }
                                                               §§goto(addr02ca);
                                                            }
                                                            §§goto(addr027c);
                                                         }
                                                         §§goto(addr02de);
                                                      }
                                                      §§goto(addr0256);
                                                   }
                                                   §§goto(addr02e2);
                                                }
                                                §§goto(addr020c);
                                             }
                                             §§goto(addr01fd);
                                          }
                                          §§goto(addr0292);
                                       }
                                       addr02e2:
                                       §§push(§§pop().§§slot[1]);
                                       if(_loc3_)
                                       {
                                          addr02cc:
                                          §§pop()[11] = new Binding(this,function():Boolean
                                          {
                                             return epAmount.includeInLayout;
                                          },null,"_RentCollectorSuccessSkin_BriskImageDynaLib7.includeInLayout");
                                          addr02e0:
                                          addr02de:
                                          §§push(result);
                                          addr02ca:
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr01fd);
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr019b);
                           }
                           §§goto(addr0238);
                        }
                        §§goto(addr0231);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr02ca);
               }
               §§goto(addr02c3);
            }
            §§goto(addr006d);
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1378241396bubble;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1378241396bubble = param1;
                  addr0049:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
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
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get epAmount() : LocaLabel
      {
         return this._1783636765epAmount;
      }
      
      public function set epAmount(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1783636765epAmount;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1783636765epAmount = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get epText() : LocaLabel
      {
         return this._1297385352epText;
      }
      
      public function set epText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1297385352epText;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1297385352epText = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0077);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epText",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1221270899header;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1221270899header = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get ppAmount() : LocaLabel
      {
         return this._207407736ppAmount;
      }
      
      public function set ppAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._207407736ppAmount;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._207407736ppAmount = param1;
                  addr003f:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppAmount",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get ppText() : LocaLabel
      {
         return this._982464691ppText;
      }
      
      public function set ppText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._982464691ppText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._982464691ppText = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get vcAmount() : LocaLabel
      {
         return this._873278107vcAmount;
      }
      
      public function set vcAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._873278107vcAmount;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._873278107vcAmount = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcAmount",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get vcText() : LocaLabel
      {
         return this._822695558vcText;
      }
      
      public function set vcText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._822695558vcText;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._822695558vcText = param1;
                  addr003b:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcText",_loc2_,param1));
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
         §§goto(addr003b);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RentCollectorInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RentCollectorInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005b);
      }
   }
}

