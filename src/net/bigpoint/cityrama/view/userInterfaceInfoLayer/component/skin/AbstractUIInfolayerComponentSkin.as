package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.skin
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
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class AbstractUIInfolayerComponentSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const briskOuterMiddle:BriskDynaVo;
      
      private static const briskCorner:BriskDynaVo;
      
      private static const briskIndicator:BriskDynaVo;
      
      private static const briskMiddle:BriskDynaVo;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || AbstractUIInfolayerComponentSkin)
      {
         briskOuterMiddle = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_outermiddle","gui_popups_paperPopup");
         if(!_loc2_)
         {
            briskCorner = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_corner","gui_popups_paperPopup");
            if(!(_loc2_ && _loc2_))
            {
               addr006d:
               briskIndicator = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_fixpoint","gui_popups_paperPopup");
               if(_loc1_ || AbstractUIInfolayerComponentSkin)
               {
                  addr008f:
                  briskMiddle = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_middle","gui_popups_paperPopup");
               }
               §§goto(addr00a4);
            }
            §§goto(addr008f);
         }
         addr00a4:
         return;
      }
      §§goto(addr006d);
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib10:BriskImageDynaLib;
      
      private var _1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib12:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib13:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib14:BriskImageDynaLib;
      
      private var _1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib16:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib17:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib6:BriskImageDynaLib;
      
      private var _1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib8:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib9:BriskImageDynaLib;
      
      private var _1326573433_AbstractUIInfolayerComponentSkin_HGroup1:HGroup;
      
      private var _1326573431_AbstractUIInfolayerComponentSkin_HGroup3:HGroup;
      
      public var _AbstractUIInfolayerComponentSkin_HGroup4:HGroup;
      
      private var _1786423786_AbstractUIInfolayerComponentSkin_VGroup2:VGroup;
      
      private var _1786423785_AbstractUIInfolayerComponentSkin_VGroup3:VGroup;
      
      private var _1786423784_AbstractUIInfolayerComponentSkin_VGroup4:VGroup;
      
      private var _1290911217backgroundGroup:VGroup;
      
      private var _809612678contentGroup:Group;
      
      private var _1221270899header:HeaderComponent;
      
      private var _1977189542headerIcon:BriskImageDynaLib;
      
      private var _104356713topInformation:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:AbstractUIInfolayerComponent;
      
      public function AbstractUIInfolayerComponentSkin()
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
         if(!(_loc4_ && _loc1_))
         {
            §§push(null);
            if(!(_loc4_ && _loc2_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc1_))
                     {
                        addr0058:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc1_)
                           {
                              addr0072:
                              §§pop().§§slot[5] = null;
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || _loc1_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc4_)
                                          {
                                             super();
                                             if(!_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   addr00e6:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      §§pop().§§slot[1] = this._AbstractUIInfolayerComponentSkin_bindingsSetup();
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr010e:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     addr014c:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr0171:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_skin_AbstractUIInfolayerComponentSkinWatcherSetupUtil");
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr019c:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01b2:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return AbstractUIInfolayerComponentSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01cf:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             addr01fe:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                this.percentHeight = 100;
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr0237:
                                                                                                   this.percentWidth = 100;
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      this.mxmlContent = [this._AbstractUIInfolayerComponentSkin_VGroup1_i(),this._AbstractUIInfolayerComponentSkin_VGroup4_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib18_i()];
                                                                                                      if(!(_loc4_ && Boolean(this)))
                                                                                                      {
                                                                                                         this.currentState = "normal";
                                                                                                         if(_loc3_ || _loc1_)
                                                                                                         {
                                                                                                            addr028d:
                                                                                                            states = [new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"indicator_top",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_HGroup1",
                                                                                                                  "name":"height",
                                                                                                                  "value":28
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",
                                                                                                                  "name":"includeInLayout",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",
                                                                                                                  "name":"visible",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
                                                                                                                  "name":"paddingTop",
                                                                                                                  "value":25
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"indicator_bottom",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_HGroup3",
                                                                                                                  "name":"height",
                                                                                                                  "value":28
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",
                                                                                                                  "name":"includeInLayout",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",
                                                                                                                  "name":"visible",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
                                                                                                                  "name":"paddingBottom",
                                                                                                                  "value":25
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"indicator_right",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_HGroup1",
                                                                                                                  "name":"paddingRight",
                                                                                                                  "value":13
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_VGroup3",
                                                                                                                  "name":"width",
                                                                                                                  "value":25
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",
                                                                                                                  "name":"includeInLayout",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",
                                                                                                                  "name":"visible",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_HGroup3",
                                                                                                                  "name":"paddingRight",
                                                                                                                  "value":13
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
                                                                                                                  "name":"paddingRight",
                                                                                                                  "value":23
                                                                                                               })]
                                                                                                            }),new State({
                                                                                                               "name":"indicator_left",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_HGroup1",
                                                                                                                  "name":"paddingLeft",
                                                                                                                  "value":16
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_VGroup2",
                                                                                                                  "name":"width",
                                                                                                                  "value":28
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",
                                                                                                                  "name":"includeInLayout",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",
                                                                                                                  "name":"visible",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_HGroup3",
                                                                                                                  "name":"paddingLeft",
                                                                                                                  "value":16
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
                                                                                                                  "name":"paddingLeft",
                                                                                                                  "value":23
                                                                                                               })]
                                                                                                            })];
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr04e5:
                                                                                                               i = 0;
                                                                                                               addr04e3:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      var _temp_24:*;
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
                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc4_)
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
                                                                                                      while(var _temp_24:* = §§pop(), §§pop().§§slot[4] = _temp_24, _loc3_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr0540:
                                                                                                   }
                                                                                                   §§goto(addr04e3);
                                                                                                }
                                                                                                §§goto(addr028d);
                                                                                             }
                                                                                             §§goto(addr04e3);
                                                                                          }
                                                                                          §§goto(addr0540);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01fe);
                                                                                 }
                                                                                 §§goto(addr04e5);
                                                                              }
                                                                              §§goto(addr028d);
                                                                           }
                                                                           §§goto(addr019c);
                                                                        }
                                                                        §§goto(addr0237);
                                                                     }
                                                                  }
                                                                  §§goto(addr01b2);
                                                               }
                                                               §§goto(addr04e5);
                                                            }
                                                            §§goto(addr01b2);
                                                         }
                                                         §§goto(addr019c);
                                                      }
                                                      §§goto(addr01fe);
                                                   }
                                                   §§goto(addr04e5);
                                                }
                                                §§goto(addr0237);
                                             }
                                             §§goto(addr00e6);
                                          }
                                          §§goto(addr010e);
                                       }
                                       §§goto(addr04e3);
                                    }
                                    §§goto(addr01fe);
                                 }
                              }
                              §§goto(addr0540);
                           }
                           §§goto(addr0171);
                        }
                        §§goto(addr014c);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr019c);
               }
               §§goto(addr01cf);
            }
            §§goto(addr0058);
         }
         §§goto(addr0171);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || AbstractUIInfolayerComponentSkin)
         {
            AbstractUIInfolayerComponentSkin._watcherSetupUtil = param1;
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
            if(_loc3_ || _loc2_)
            {
               §§goto(addr003e);
            }
            §§goto(addr004c);
         }
         addr003e:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               addr004c:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function _AbstractUIInfolayerComponentSkin_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_HGroup1_i(),this._AbstractUIInfolayerComponentSkin_HGroup2_c(),this._AbstractUIInfolayerComponentSkin_HGroup3_i()];
                     addr0055:
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0084:
                        _loc1_.id = "backgroundGroup";
                        if(_loc3_)
                        {
                           §§goto(addr008f);
                        }
                        §§goto(addr00a3);
                     }
                     addr008f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00a3:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr00c2);
                           }
                           §§goto(addr00d4);
                        }
                     }
                     addr00c2:
                     this.backgroundGroup = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00d4:
                        BindingManager.executeBindings(this,"backgroundGroup",this.backgroundGroup);
                     }
                     §§goto(addr00e1);
                  }
                  addr00e1:
                  return _loc1_;
               }
               §§goto(addr00c2);
            }
            §§goto(addr0084);
         }
         §§goto(addr0055);
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup1_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr00ca);
            }
            addr003b:
            _loc1_.height = 12;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "bottom";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib1_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib2_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib3_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib4_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib5_i()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_HGroup1";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00ca:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr00db);
                              }
                           }
                           §§goto(addr00e5);
                        }
                     }
                  }
               }
               addr00db:
               this._AbstractUIInfolayerComponentSkin_HGroup1 = _loc1_;
               if(_loc3_)
               {
                  addr00e5:
                  BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_HGroup1",this._AbstractUIInfolayerComponentSkin_HGroup1);
               }
               §§goto(addr00f2);
            }
            addr00f2:
            return _loc1_;
         }
         §§goto(addr00ca);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.rotation = -90;
            if(!_loc3_)
            {
               _loc1_.width = 12;
               if(_loc2_)
               {
                  _loc1_.height = 12;
                  if(!_loc3_)
                  {
                     _loc1_.bottom = 0;
                     addr003f:
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0060);
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr006b);
            }
            addr0060:
            _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib1";
            if(_loc2_)
            {
               addr006b:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0082:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr008b);
                     }
                     §§goto(addr009e);
                  }
               }
            }
            addr008b:
            this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib1 = _loc1_;
            if(!(_loc3_ && Boolean(this)))
            {
               addr009e:
               BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib1",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib1);
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 12;
               if(!_loc3_)
               {
                  _loc1_.bottom = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib2";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr008e:
                                 this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib2 = _loc1_;
                                 if(_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib2",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib2);
                                 }
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr008e);
               }
               addr00a7:
               return _loc1_;
            }
         }
         §§goto(addr008e);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               _loc1_.visible = false;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.width = 28;
                  if(_loc3_)
                  {
                     addr0058:
                     _loc1_.height = 28;
                     if(_loc3_)
                     {
                        addr0062:
                        _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0081:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr009f);
                                 }
                                 §§goto(addr00b1);
                              }
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0058);
            }
            addr009f:
            this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib3 = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr00b1:
               BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib3);
            }
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.height = 12;
               if(!_loc3_)
               {
                  _loc1_.bottom = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0061:
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib4";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0093:
                                 this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib4 = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr009d:
                                    BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib4",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib4);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr009d);
                           }
                           addr00aa:
                           return _loc1_;
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr009d);
               }
            }
            §§goto(addr0061);
         }
         §§goto(addr0093);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.rotation = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 12;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.height = 12;
                  if(!_loc3_)
                  {
                     addr005a:
                     _loc1_.bottom = 0;
                     if(!_loc3_)
                     {
                        _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib5";
                        if(_loc2_ || Boolean(this))
                        {
                           addr0078:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00ab:
                                    this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib5 = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00b6:
                                       BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib5",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib5);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr005a);
            }
            §§goto(addr0078);
         }
         §§goto(addr00b6);
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.gap = 0;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_VGroup2_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib9_i(),this._AbstractUIInfolayerComponentSkin_VGroup3_i()];
                     addr0062:
                     if(_loc3_ || _loc3_)
                     {
                        addr0093:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr00a7:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr00a7);
                  }
                  addr00ab:
                  return _loc1_;
               }
               §§goto(addr00a7);
            }
            §§goto(addr0093);
         }
         §§goto(addr0062);
      }
      
      private function _AbstractUIInfolayerComponentSkin_VGroup2_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 12;
               if(!_loc2_)
               {
                  _loc1_.gap = 0;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "right";
                     addr0045:
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib6_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib7_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib8_i()];
                        if(_loc3_ || _loc2_)
                        {
                           addr007f:
                           _loc1_.id = "_AbstractUIInfolayerComponentSkin_VGroup2";
                           if(_loc3_)
                           {
                              addr0096:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00ab);
                                    }
                                    §§goto(addr00b5);
                                 }
                              }
                           }
                        }
                        addr00ab:
                        this._AbstractUIInfolayerComponentSkin_VGroup2 = _loc1_;
                        if(_loc3_)
                        {
                           addr00b5:
                           BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_VGroup2",this._AbstractUIInfolayerComponentSkin_VGroup2);
                        }
                        return _loc1_;
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00b5);
            }
            §§goto(addr0096);
         }
         §§goto(addr0045);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.rotation = -90;
            if(_loc2_)
            {
               _loc1_.width = 12;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib6";
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0098:
                                 this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib6 = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib6",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib6);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr0098);
                     }
                  }
                  §§goto(addr008f);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr008f);
         }
         §§goto(addr00aa);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.rotation = -90;
            if(!_loc3_)
            {
               _loc1_.width = 28;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.height = 28;
                  if(_loc2_)
                  {
                     _loc1_.includeInLayout = false;
                     if(!_loc3_)
                     {
                        addr0062:
                        _loc1_.visible = false;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0073:
                           _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7";
                           if(_loc2_)
                           {
                              §§goto(addr007e);
                           }
                           §§goto(addr0092);
                        }
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0092:
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00c0);
                           }
                        }
                        addr00ae:
                        this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib7 = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr00c0:
                           BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib7);
                        }
                        §§goto(addr00cd);
                     }
                     addr00cd:
                     return _loc1_;
                  }
               }
               §§goto(addr0062);
            }
            §§goto(addr00c0);
         }
         §§goto(addr0073);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.rotation = -90;
            if(!_loc2_)
            {
               §§goto(addr002d);
            }
            §§goto(addr0089);
         }
         addr002d:
         _loc1_.width = 12;
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib8";
               if(!_loc2_)
               {
                  addr0058:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr0089:
                           this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib8 = _loc1_;
                           if(_loc3_)
                           {
                              addr0093:
                              BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib8",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib8);
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00a0);
            }
            §§goto(addr0058);
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib9";
                  if(_loc2_)
                  {
                     addr005c:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0068:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0086:
                              this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib9 = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib9",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib9);
                              }
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0068);
            }
            §§goto(addr005c);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_VGroup3_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.width = 12;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalAlign = "left";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006e:
                        _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib10_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib11_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib12_i()];
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.id = "_AbstractUIInfolayerComponentSkin_VGroup3";
                           if(!_loc2_)
                           {
                              addr009d:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00c5:
                                       this._AbstractUIInfolayerComponentSkin_VGroup3 = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00cf:
                                          BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_VGroup3",this._AbstractUIInfolayerComponentSkin_VGroup3);
                                       }
                                    }
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr006e);
            }
         }
         addr00dc:
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.rotation = 90;
            if(!_loc3_)
            {
               _loc1_.width = 12;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     addr005a:
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib10";
                     if(!_loc3_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr007c);
                           }
                           §§goto(addr0090);
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr007c);
            }
            §§goto(addr005a);
         }
         addr007c:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr0085:
            this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib10 = _loc1_;
            if(_loc2_)
            {
               addr0090:
               BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib10",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib10);
            }
         }
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.rotation = 90;
            if(!_loc2_)
            {
               _loc1_.width = 28;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0045);
               }
               §§goto(addr0097);
            }
         }
         addr0045:
         _loc1_.height = 28;
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.visible = false;
               if(!_loc2_)
               {
                  §§goto(addr0074);
               }
               §§goto(addr00a0);
            }
            §§goto(addr00b2);
         }
         addr0074:
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0097:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr00a0);
                  }
               }
               §§goto(addr00b2);
            }
            addr00a0:
            this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib11 = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr00b2:
               BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib11);
            }
            §§goto(addr00bf);
         }
         addr00bf:
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.rotation = 90;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 12;
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib12";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr0086);
                           }
                           §§goto(addr00a1);
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0086);
            }
            §§goto(addr00a1);
         }
         addr0086:
         _loc1_.document = this;
         if(_loc2_)
         {
            addr008f:
            this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib12 = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr00a1:
               BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib12",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib12);
            }
         }
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup3_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.height = 12;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib13_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib14_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib15_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib16_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib17_i()];
                     if(_loc2_ || Boolean(this))
                     {
                        addr008a:
                        _loc1_.id = "_AbstractUIInfolayerComponentSkin_HGroup3";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           §§goto(addr009d);
                        }
                        §§goto(addr00b4);
                     }
                     addr009d:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00b4:
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              §§goto(addr00c5);
                           }
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00c5);
                  }
               }
               §§goto(addr008a);
            }
            addr00c5:
            this._AbstractUIInfolayerComponentSkin_HGroup3 = _loc1_;
            if(_loc2_)
            {
               addr00cf:
               BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_HGroup3",this._AbstractUIInfolayerComponentSkin_HGroup3);
            }
            return _loc1_;
         }
         §§goto(addr009d);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.rotation = 180;
            if(_loc3_)
            {
               _loc1_.width = 12;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.height = 12;
                  if(_loc3_)
                  {
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib13";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr007c);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00ab);
                  }
                  addr007c:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0098:
                     this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib13 = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr00ab:
                        BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib13",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib13);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr00ab);
            }
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib14_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.rotation = 180;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.height = 12;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib14";
                     if(!_loc2_)
                     {
                        addr005e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr007d:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr008e:
                                 this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib14 = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr0099:
                                    BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib14",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib14);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr005e);
            }
            §§goto(addr0099);
         }
         §§goto(addr007d);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib15_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.rotation = 180;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 28;
               if(!_loc2_)
               {
                  _loc1_.height = 28;
                  if(!_loc2_)
                  {
                     addr0048:
                     _loc1_.bottom = 0;
                     if(_loc3_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc3_)
                        {
                           addr0068:
                           _loc1_.visible = false;
                           if(!_loc2_)
                           {
                              _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15";
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0084:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00a4:
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00ad:
                                          this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib15 = _loc1_;
                                          if(_loc3_)
                                          {
                                             addr00b7:
                                             BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib15);
                                          }
                                       }
                                       §§goto(addr00c4);
                                    }
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00b7);
                           }
                        }
                        addr00c4:
                        return _loc1_;
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0068);
            }
            §§goto(addr0048);
         }
         §§goto(addr00a4);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.rotation = 180;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.height = 12;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.bottom = 0;
                     if(!_loc2_)
                     {
                        _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib16";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0093:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009c:
                                    this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib16 = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00a7:
                                       BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib16",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib16);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr00a7);
            }
            §§goto(addr0093);
         }
         §§goto(addr009c);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib17_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.rotation = 90;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 12;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.height = 12;
                  if(_loc3_ || _loc2_)
                  {
                     addr0069:
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib17";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0095:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr009e:
                                 this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib17 = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00a9:
                                    BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib17",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib17);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr009e);
                     }
                  }
                  §§goto(addr0095);
               }
               §§goto(addr00b7);
            }
            §§goto(addr0069);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_VGroup4_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0039);
            }
            §§goto(addr00c2);
         }
         addr0039:
         _loc1_.percentWidth = 100;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.paddingTop = 8;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.paddingLeft = 8;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.paddingRight = 8;
                  if(!_loc3_)
                  {
                     _loc1_.paddingBottom = 13;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_HGroup4_i(),this._AbstractUIInfolayerComponentSkin_HeaderComponent1_i(),this._AbstractUIInfolayerComponentSkin_Group1_i()];
                        if(_loc2_)
                        {
                           _loc1_.id = "_AbstractUIInfolayerComponentSkin_VGroup4";
                           if(_loc2_ || Boolean(this))
                           {
                              addr00c2:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00e1:
                                    _loc1_.document = this;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr00fc);
                                 }
                              }
                           }
                           addr00f2:
                           this._AbstractUIInfolayerComponentSkin_VGroup4 = _loc1_;
                           if(_loc2_)
                           {
                              addr00fc:
                              BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_VGroup4",this._AbstractUIInfolayerComponentSkin_VGroup4);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr0109);
                  }
               }
               §§goto(addr00e1);
            }
            §§goto(addr00fc);
         }
         addr0109:
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup4_i() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004f:
                  _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_LocaLabel1_i()];
                  if(!_loc3_)
                  {
                     addr005f:
                     _loc1_.id = "_AbstractUIInfolayerComponentSkin_HGroup4";
                     if(!_loc3_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0093:
                                 this._AbstractUIInfolayerComponentSkin_HGroup4 = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a6:
                                    BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_HGroup4",this._AbstractUIInfolayerComponentSkin_HGroup4);
                                 }
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr005f);
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _AbstractUIInfolayerComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               _loc1_.includeInLayout = false;
               if(!_loc2_)
               {
                  _loc1_.maxWidth = 120;
                  if(_loc3_)
                  {
                     _loc1_.styleName = "expansionBlue";
                     if(_loc3_)
                     {
                        _loc1_.percentHeight = 100;
                        if(!_loc2_)
                        {
                           addr0067:
                           _loc1_.id = "topInformation";
                           if(_loc3_ || Boolean(this))
                           {
                              addr007a:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr0093:
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr009c:
                                       this.topInformation = _loc1_;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00ae:
                                          BindingManager.executeBindings(this,"topInformation",this.topInformation);
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
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0067);
            }
            §§goto(addr007a);
         }
         §§goto(addr0093);
      }
      
      private function _AbstractUIInfolayerComponentSkin_HeaderComponent1_i() : HeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HeaderComponent = new HeaderComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.id = "header";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0069);
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               addr0069:
               _loc1_.document = this;
               if(!(_loc3_ && _loc3_))
               {
                  addr0084:
                  this.header = _loc1_;
                  if(_loc2_ || _loc3_)
                  {
                     BindingManager.executeBindings(this,"header",this.header);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0084);
      }
      
      private function _AbstractUIInfolayerComponentSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.id = "contentGroup";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0067:
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              addr0084:
                              this.contentGroup = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0096);
            }
            §§goto(addr0067);
         }
         §§goto(addr0096);
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib18_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.left = -5;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_info";
               if(_loc3_)
               {
                  §§goto(addr0053);
               }
            }
            §§goto(addr0071);
         }
         addr0053:
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         if(_loc3_ || Boolean(this))
         {
            _loc1_.id = "headerIcon";
            if(!_loc2_)
            {
               addr0071:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr009c);
                     }
                     §§goto(addr00a6);
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr00a6);
         }
         addr009c:
         this.headerIcon = _loc1_;
         if(_loc3_)
         {
            addr00a6:
            BindingManager.executeBindings(this,"headerIcon",this.headerIcon);
         }
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc1_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc1_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                        {
                           return briskCorner;
                        },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib1.briskDynaVo");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                    {
                                       return briskOuterMiddle;
                                    },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib2.briskDynaVo");
                                    if(!_loc2_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc2_)
                                       {
                                          addr00b0:
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(2);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                {
                                                   return briskIndicator;
                                                },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3.briskDynaVo");
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc2_)
                                                   {
                                                      addr00f4:
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         §§push(3);
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                            {
                                                               return briskOuterMiddle;
                                                            },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib4.briskDynaVo");
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!(_loc2_ && _loc3_))
                                                                  {
                                                                     addr013f:
                                                                     §§push(4);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                        {
                                                                           return briskCorner;
                                                                        },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib5.briskDynaVo");
                                                                        if(_loc3_)
                                                                        {
                                                                           addr0165:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 §§push(5);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                    {
                                                                                       return briskOuterMiddle;
                                                                                    },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib6.briskDynaVo");
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().§§slot[1]);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(6);
                                                                                             if(_loc3_ || Boolean(this))
                                                                                             {
                                                                                                §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                {
                                                                                                   return briskIndicator;
                                                                                                },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7.briskDynaVo");
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(7);
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            addr0212:
                                                                                                            §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                            {
                                                                                                               return briskOuterMiddle;
                                                                                                            },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib8.briskDynaVo");
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr0230:
                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(8);
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr025a:
                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                        {
                                                                                                                           return briskMiddle;
                                                                                                                        },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib9.briskDynaVo");
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc2_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                              if(_loc3_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(9);
                                                                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                    {
                                                                                                                                       return briskOuterMiddle;
                                                                                                                                    },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib10.briskDynaVo");
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr02c4:
                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                          if(_loc3_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             §§push(10);
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                addr02da:
                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                                {
                                                                                                                                                   return briskIndicator;
                                                                                                                                                },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11.briskDynaVo");
                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(_loc3_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                      if(_loc3_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr0317:
                                                                                                                                                         §§push(11);
                                                                                                                                                         if(_loc3_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr0326:
                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                                            {
                                                                                                                                                               return briskOuterMiddle;
                                                                                                                                                            },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib12.briskDynaVo");
                                                                                                                                                            if(_loc3_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr0345:
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               if(!(_loc2_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  addr0354:
                                                                                                                                                                  §§push(§§pop().§§slot[1]);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr035b:
                                                                                                                                                                     §§push(12);
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0362:
                                                                                                                                                                        §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                                                        {
                                                                                                                                                                           return briskCorner;
                                                                                                                                                                        },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib13.briskDynaVo");
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0379:
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().§§slot[1]);
                                                                                                                                                                              if(!(_loc2_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0397:
                                                                                                                                                                                 §§push(13);
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr039e:
                                                                                                                                                                                    §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                                                                    {
                                                                                                                                                                                       return briskOuterMiddle;
                                                                                                                                                                                    },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib14.briskDynaVo");
                                                                                                                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03bd:
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03c4:
                                                                                                                                                                                          §§push(§§pop().§§slot[1]);
                                                                                                                                                                                          if(_loc3_ || Boolean(this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03d3:
                                                                                                                                                                                             §§push(14);
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03da:
                                                                                                                                                                                                §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                                                                                {
                                                                                                                                                                                                   return briskIndicator;
                                                                                                                                                                                                },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15.briskDynaVo");
                                                                                                                                                                                                if(_loc3_ || Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03f9:
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0417:
                                                                                                                                                                                                         §§push(15);
                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return briskOuterMiddle;
                                                                                                                                                                                                            },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib16.briskDynaVo");
                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0435:
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr043c);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04d5);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0469);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04c1);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr047f);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04d5);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr04d3);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04c1);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr047f);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr043c:
                                                                                                                                                                                       §§push(§§pop().§§slot[1]);
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0443:
                                                                                                                                                                                          §§push(16);
                                                                                                                                                                                          if(!(_loc2_ && _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0452:
                                                                                                                                                                                             §§pop()[§§pop()] = new Binding(this,function():BriskDynaVo
                                                                                                                                                                                             {
                                                                                                                                                                                                return briskCorner;
                                                                                                                                                                                             },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib17.briskDynaVo");
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0469:
                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().§§slot[1]);
                                                                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr047f:
                                                                                                                                                                                                      §§push(17);
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop()[§§pop()] = new Binding(this,function():Boolean
                                                                                                                                                                                                         {
                                                                                                                                                                                                            return topInformation.includeInLayout + "}";
                                                                                                                                                                                                         },null,"_AbstractUIInfolayerComponentSkin_HGroup4.includeInLayout");
                                                                                                                                                                                                         if(_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr04a9:
                                                                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr04d7);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr04d5);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04d3);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04c1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr04bf);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr04d5);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04a9);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr04c1);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr04d7:
                                                                                                                                                                                       §§goto(addr04b8);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0469);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03da);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04bf);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04b8);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr03f9);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03da);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0417);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03c4);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0469);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr039e);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03d3);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04d5);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04a9);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0452);
                                                                                                                                          }
                                                                                                                                          §§goto(addr035b);
                                                                                                                                       }
                                                                                                                                       addr04b8:
                                                                                                                                       §§push(§§pop().§§slot[1]);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr04c1:
                                                                                                                                          §§pop()[18] = new Binding(this,function():Number
                                                                                                                                          {
                                                                                                                                             return header.y + header.height / 2 - headerIcon.height / 1.5;
                                                                                                                                          },null,"headerIcon.y");
                                                                                                                                          addr04d5:
                                                                                                                                          addr04d3:
                                                                                                                                          §§push(result);
                                                                                                                                          addr04bf:
                                                                                                                                       }
                                                                                                                                       return §§pop();
                                                                                                                                    }
                                                                                                                                    §§goto(addr0435);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0362);
                                                                                                                              }
                                                                                                                              §§goto(addr04bf);
                                                                                                                           }
                                                                                                                           §§goto(addr0354);
                                                                                                                        }
                                                                                                                        §§goto(addr0435);
                                                                                                                     }
                                                                                                                     §§goto(addr0326);
                                                                                                                  }
                                                                                                                  §§goto(addr03d3);
                                                                                                               }
                                                                                                               §§goto(addr04d5);
                                                                                                            }
                                                                                                            §§goto(addr0435);
                                                                                                         }
                                                                                                         §§goto(addr0362);
                                                                                                      }
                                                                                                      §§goto(addr0443);
                                                                                                   }
                                                                                                   §§goto(addr02c4);
                                                                                                }
                                                                                                §§goto(addr0379);
                                                                                             }
                                                                                             §§goto(addr0326);
                                                                                          }
                                                                                          §§goto(addr0397);
                                                                                       }
                                                                                       §§goto(addr043c);
                                                                                    }
                                                                                    §§goto(addr03f9);
                                                                                 }
                                                                                 §§goto(addr039e);
                                                                              }
                                                                              §§goto(addr04d7);
                                                                           }
                                                                           §§goto(addr043c);
                                                                        }
                                                                        §§goto(addr0345);
                                                                     }
                                                                     §§goto(addr04c1);
                                                                  }
                                                                  §§goto(addr035b);
                                                               }
                                                               §§goto(addr0230);
                                                            }
                                                            §§goto(addr03bd);
                                                         }
                                                         §§goto(addr025a);
                                                      }
                                                      §§goto(addr0317);
                                                   }
                                                   §§goto(addr0354);
                                                }
                                                §§goto(addr0165);
                                             }
                                             §§goto(addr02da);
                                          }
                                          §§goto(addr0397);
                                       }
                                       §§goto(addr02c4);
                                    }
                                    §§goto(addr04d3);
                                 }
                                 §§goto(addr02da);
                              }
                              §§goto(addr013f);
                           }
                           §§goto(addr02c4);
                        }
                        §§goto(addr0469);
                     }
                     §§goto(addr0212);
                  }
                  §§goto(addr04bf);
               }
               §§goto(addr00b0);
            }
            §§goto(addr0469);
         }
         §§goto(addr00f4);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib11() : BriskImageDynaLib
      {
         return this._1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib11(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11 = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0067);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib15() : BriskImageDynaLib
      {
         return this._1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib15(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0053:
                  this._1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3 = param1;
                  addr0046:
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib7() : BriskImageDynaLib
      {
         return this._1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib7(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr007c:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_HGroup1() : HGroup
      {
         return this._1326573433_AbstractUIInfolayerComponentSkin_HGroup1;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_HGroup1(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1326573433_AbstractUIInfolayerComponentSkin_HGroup1;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1326573433_AbstractUIInfolayerComponentSkin_HGroup1 = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_HGroup1",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007f);
               }
            }
         }
         addr008e:
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_HGroup3() : HGroup
      {
         return this._1326573431_AbstractUIInfolayerComponentSkin_HGroup3;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_HGroup3(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1326573431_AbstractUIInfolayerComponentSkin_HGroup3;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003d:
                  this._1326573431_AbstractUIInfolayerComponentSkin_HGroup3 = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_HGroup3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_VGroup2() : VGroup
      {
         return this._1786423786_AbstractUIInfolayerComponentSkin_VGroup2;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_VGroup2(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1786423786_AbstractUIInfolayerComponentSkin_VGroup2;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1786423786_AbstractUIInfolayerComponentSkin_VGroup2 = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_VGroup2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_VGroup3() : VGroup
      {
         return this._1786423785_AbstractUIInfolayerComponentSkin_VGroup3;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_VGroup3(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1786423785_AbstractUIInfolayerComponentSkin_VGroup3;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1786423785_AbstractUIInfolayerComponentSkin_VGroup3 = param1;
                  if(!_loc4_)
                  {
                     addr0044:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_VGroup3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0044);
            }
            addr0063:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_VGroup4() : VGroup
      {
         return this._1786423784_AbstractUIInfolayerComponentSkin_VGroup4;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_VGroup4(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1786423784_AbstractUIInfolayerComponentSkin_VGroup4;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1786423784_AbstractUIInfolayerComponentSkin_VGroup4 = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_VGroup4",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundGroup() : VGroup
      {
         return this._1290911217backgroundGroup;
      }
      
      public function set backgroundGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1290911217backgroundGroup;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1290911217backgroundGroup = param1;
                  if(!_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005e);
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._809612678contentGroup;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._809612678contentGroup = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : HeaderComponent
      {
         return this._1221270899header;
      }
      
      public function set header(param1:HeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1221270899header = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0066);
            }
            addr008d:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerIcon() : BriskImageDynaLib
      {
         return this._1977189542headerIcon;
      }
      
      public function set headerIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1977189542headerIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1977189542headerIcon = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get topInformation() : LocaLabel
      {
         return this._104356713topInformation;
      }
      
      public function set topInformation(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._104356713topInformation;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._104356713topInformation = param1;
                  addr0041:
                  if(!_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0070);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topInformation",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : AbstractUIInfolayerComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:AbstractUIInfolayerComponent) : void
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
                  addr0038:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0069);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
            addr0078:
            return;
         }
         §§goto(addr0038);
      }
   }
}

