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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class PaperPopupBlueSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1906413305backButton:DynamicImageButton;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _644749632iconNormal:BriskImageDynaLib;
      
      private var _1731308137iconOverlay:BriskImageDynaLib;
      
      private var _104976386moveArea:Group;
      
      private var _1952801373overlayBar:HGroup;
      
      private var _216916822sideMenu:Group;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:PaperPopupWindow;
      
      public function PaperPopupBlueSkin()
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
         if(!_loc3_)
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              addr0062:
                              §§pop().§§slot[5] = null;
                              if(_loc4_)
                              {
                                 addr006c:
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       addr008a:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          addr0095:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             super();
                                             if(_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_)
                                                {
                                                   addr00bd:
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§pop().§§slot[1] = this._PaperPopupBlueSkin_bindingsSetup();
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr00eb:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0110:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr0126:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_PaperPopupBlueSkinWatcherSetupUtil");
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr0151:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return PaperPopupBlueSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       addr016f:
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0195:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_ || _loc1_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr01ea:
                                                                                                this.width = 785;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr01f5:
                                                                                                   this.height = 430;
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0200:
                                                                                                      this.mxmlContent = [this._PaperPopupBlueSkin_Group1_i(),this._PaperPopupBlueSkin_Group2_c()];
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         addr021f:
                                                                                                         this.currentState = "normal";
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr022c:
                                                                                                            this.addEventListener("creationComplete",this.___PaperPopupBlueSkin_SparkSkin1_creationComplete);
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               addr0246:
                                                                                                               states = [new State({
                                                                                                                  "name":"normal",
                                                                                                                  "overrides":[]
                                                                                                               }),new State({
                                                                                                                  "name":"disabled",
                                                                                                                  "overrides":[]
                                                                                                               }),new State({
                                                                                                                  "name":"inactive",
                                                                                                                  "overrides":[]
                                                                                                               }),new State({
                                                                                                                  "name":"disabledWithControlBar",
                                                                                                                  "overrides":[]
                                                                                                               }),new State({
                                                                                                                  "name":"normalWithControlBar",
                                                                                                                  "overrides":[]
                                                                                                               }),new State({
                                                                                                                  "name":"inactiveWithControlBar",
                                                                                                                  "overrides":[]
                                                                                                               })];
                                                                                                               if(_loc4_ || _loc1_)
                                                                                                               {
                                                                                                                  addr02c2:
                                                                                                                  i = 0;
                                                                                                                  addr02c0:
                                                                                                               }
                                                                                                               var _temp_16:*;
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
                                                                                                                           if(_loc3_ && _loc2_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop() + 1));
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !(_loc3_ && _loc3_));
                                                                                                               
                                                                                                               return;
                                                                                                               addr0325:
                                                                                                            }
                                                                                                            §§goto(addr02c0);
                                                                                                         }
                                                                                                         §§goto(addr0325);
                                                                                                      }
                                                                                                      §§goto(addr0246);
                                                                                                   }
                                                                                                   §§goto(addr021f);
                                                                                                }
                                                                                                §§goto(addr022c);
                                                                                             }
                                                                                             §§goto(addr0246);
                                                                                          }
                                                                                          §§goto(addr01f5);
                                                                                       }
                                                                                       §§goto(addr01ea);
                                                                                    }
                                                                                    §§goto(addr0200);
                                                                                 }
                                                                                 §§goto(addr02c2);
                                                                              }
                                                                              §§goto(addr016f);
                                                                           }
                                                                           §§goto(addr02c2);
                                                                        }
                                                                        §§goto(addr021f);
                                                                     }
                                                                     §§goto(addr016f);
                                                                  }
                                                                  §§goto(addr01ea);
                                                               }
                                                               §§goto(addr0151);
                                                            }
                                                            §§goto(addr0246);
                                                         }
                                                         §§goto(addr02c2);
                                                      }
                                                      §§goto(addr022c);
                                                   }
                                                   §§goto(addr02c2);
                                                }
                                                §§goto(addr0325);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr016f);
                                       }
                                       §§goto(addr0195);
                                    }
                                    §§goto(addr0095);
                                 }
                                 §§goto(addr008a);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr02c2);
                        }
                        §§goto(addr0110);
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr00eb);
               }
               §§goto(addr006c);
            }
            §§goto(addr0062);
         }
         §§goto(addr0151);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            PaperPopupBlueSkin._watcherSetupUtil = param1;
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
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               else
               {
                  addr005c:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr005c);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function init() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:uint = 0;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            TweenMax.to(this.overlayBar,0.01,{"tint":311002});
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0046:
               TweenMax.to(this.iconOverlay,0.01,{"tint":6340310});
               if(_loc3_ || Boolean(_loc1_))
               {
                  TweenMax.to(this.titleDisplay,0.01,{"glowFilter":{
                     "color":6340310,
                     "alpha":1,
                     "blurX":2,
                     "blurY":2,
                     "strength":10,
                     "quality":3
                  }});
                  if(_loc3_ || _loc2_)
                  {
                     if(getStyle("glowColor"))
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00ca:
                           _loc1_ = uint(getStyle("glowColor"));
                           if(!_loc2_)
                           {
                              TweenMax.to(this,1,{"glowFilter":{
                                 "color":_loc1_,
                                 "alpha":1,
                                 "blurX":29,
                                 "blurY":29,
                                 "strength":1.8
                              }});
                              addr00db:
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr011c:
                                 invalidateDisplayList();
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr011c);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00db);
            }
            §§goto(addr011c);
         }
         §§goto(addr0046);
      }
      
      private function _PaperPopupBlueSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = 765;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.width = 80;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0057);
               }
               §§goto(addr0077);
            }
            addr0057:
            _loc1_.top = 20;
            if(_loc2_)
            {
               _loc1_.bottom = 18;
               if(!_loc3_)
               {
                  _loc1_.id = "sideMenu";
                  if(_loc2_)
                  {
                     addr0077:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0099);
                        }
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0077);
            }
            addr0099:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr00a2:
               this.sideMenu = _loc1_;
               if(_loc2_)
               {
                  addr00ac:
                  BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
               }
            }
            return _loc1_;
         }
         §§goto(addr00ac);
      }
      
      private function _PaperPopupBlueSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._PaperPopupBlueSkin_Group3_c(),this._PaperPopupBlueSkin_Group5_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0071:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr0071);
      }
      
      private function _PaperPopupBlueSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 785;
            if(!_loc2_)
            {
               _loc1_.height = 427;
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr0053);
               }
            }
            §§goto(addr0066);
         }
         addr0053:
         _loc1_.bottom = 0;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib1_c(),this._PaperPopupBlueSkin_Group4_i(),this._PaperPopupBlueSkin_DynamicImageButton1_i(),this._PaperPopupBlueSkin_DynamicImageButton2_i()];
            addr0066:
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00b0:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00b4);
            }
            §§goto(addr00b0);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_bg";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0092:
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
         §§goto(addr0092);
      }
      
      private function _PaperPopupBlueSkin_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.left = 25;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.right = 25;
               if(_loc3_ || _loc2_)
               {
                  addr0050:
                  _loc1_.top = 20;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0078);
            }
            §§goto(addr0050);
         }
         addr0062:
         _loc1_.bottom = 18;
         if(!_loc2_)
         {
            _loc1_.id = "contentGroup";
            if(!_loc2_)
            {
               addr0078:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr0099:
                        this.contentGroup = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00ab:
                           BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0099);
            }
            §§goto(addr00ab);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "back";
            if(!_loc2_)
            {
               _loc1_.top = 15;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.left = 20;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.id = "backButton";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00aa:
                                    this.backButton = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00bc:
                                       BindingManager.executeBindings(this,"backButton",this.backButton);
                                    }
                                    §§goto(addr00c9);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0080);
               }
               addr00c9:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr00bc);
      }
      
      private function _PaperPopupBlueSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "close";
            if(!_loc3_)
            {
               _loc1_.top = 15;
               if(_loc2_)
               {
                  _loc1_.right = 20;
                  if(!_loc3_)
                  {
                     _loc1_.id = "closeButton";
                     if(_loc2_ || _loc2_)
                     {
                        addr005b:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0067:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr0085);
                              }
                              §§goto(addr0097);
                           }
                        }
                        addr0085:
                        this.closeButton = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr0097:
                           BindingManager.executeBindings(this,"closeButton",this.closeButton);
                        }
                        §§goto(addr00a4);
                     }
                     addr00a4:
                     return _loc1_;
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0097);
            }
            §§goto(addr0085);
         }
         §§goto(addr0067);
      }
      
      private function _PaperPopupBlueSkin_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._PaperPopupBlueSkin_HGroup1_c(),this._PaperPopupBlueSkin_HGroup2_i(),this._PaperPopupBlueSkin_HGroup3_c()];
                  §§goto(addr0031);
               }
               §§goto(addr0057);
            }
            addr0031:
            if(_loc2_)
            {
               addr0057:
               _loc1_.id = "moveArea";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0084:
                           this.moveArea = _loc1_;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0096:
                              BindingManager.executeBindings(this,"moveArea",this.moveArea);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0096);
            }
            §§goto(addr00a3);
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  addr0050:
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib2_c(),this._PaperPopupBlueSkin_BriskImageDynaLib3_c(),this._PaperPopupBlueSkin_BriskImageDynaLib4_c(),this._PaperPopupBlueSkin_BriskImageDynaLib5_c(),this._PaperPopupBlueSkin_BriskImageDynaLib6_c()];
                     if(_loc2_)
                     {
                        addr008f:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr0050);
         }
         addr009f:
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "layer_clip_left";
               if(!_loc2_)
               {
                  addr0049:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0059);
            }
            §§goto(addr0049);
         }
         addr0059:
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  §§goto(addr0052);
               }
               §§goto(addr0089);
            }
            addr0052:
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.minWidth = 150;
               if(!_loc3_)
               {
                  §§goto(addr007d);
               }
               §§goto(addr0089);
            }
            addr007d:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0089:
                  _loc1_.document = this;
               }
            }
            §§goto(addr008d);
         }
         addr008d:
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_middle";
               if(!(_loc2_ && _loc3_))
               {
                  addr0056:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0056);
         }
         §§goto(addr006a);
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.minWidth = 150;
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr008c:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr008c);
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_right";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006e);
               }
               §§goto(addr006a);
            }
            addr006e:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _PaperPopupBlueSkin_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mouseEnabled = false;
               if(!_loc2_)
               {
                  _loc1_.mouseChildren = false;
                  if(_loc3_)
                  {
                     §§goto(addr004c);
                  }
                  §§goto(addr00f6);
               }
               addr004c:
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.blendMode = "overlay";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.percentWidth = 100;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib7_c(),this._PaperPopupBlueSkin_BriskImageDynaLib8_c(),this._PaperPopupBlueSkin_BriskImageDynaLib9_c(),this._PaperPopupBlueSkin_BriskImageDynaLib10_c(),this._PaperPopupBlueSkin_BriskImageDynaLib11_c()];
                        if(!_loc2_)
                        {
                           §§goto(addr00b8);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr0100);
               }
               addr00b8:
               _loc1_.id = "overlayBar";
               if(_loc3_ || _loc2_)
               {
                  addr00cb:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00e5:
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr00f6:
                           this.overlayBar = _loc1_;
                           if(_loc3_)
                           {
                              addr0100:
                              BindingManager.executeBindings(this,"overlayBar",this.overlayBar);
                           }
                           §§goto(addr010d);
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr010d);
                  }
                  §§goto(addr00f6);
               }
               addr010d:
               return _loc1_;
            }
            §§goto(addr00e5);
         }
         §§goto(addr0100);
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr004b);
            }
            §§goto(addr005e);
         }
         addr004b:
         _loc1_.dynaBmpSourceName = "layer_clip_left";
         if(!(_loc3_ && _loc2_))
         {
            addr005e:
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
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.minWidth = 150;
                     if(!_loc3_)
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0081);
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_middle";
               if(!(_loc2_ && _loc2_))
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
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr006f:
                     _loc1_.minWidth = 150;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr008f);
                  }
                  addr0093:
                  return _loc1_;
               }
            }
         }
         §§goto(addr006f);
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_right";
               if(_loc2_)
               {
                  addr005b:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0067:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005b);
         }
         §§goto(addr0067);
      }
      
      private function _PaperPopupBlueSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.mouseEnabled = false;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mouseChildren = false;
                  if(!_loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc2_)
                     {
                        _loc1_.percentHeight = 100;
                        addr004e:
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.paddingBottom = 6;
                           if(!_loc2_)
                           {
                              addr0075:
                              _loc1_.paddingLeft = 30;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0088:
                                 _loc1_.paddingRight = 30;
                                 if(!_loc2_)
                                 {
                                    _loc1_.verticalAlign = "bottom";
                                    if(!_loc2_)
                                    {
                                       addr00a8:
                                       _loc1_.mxmlContent = [this._PaperPopupBlueSkin_Group6_c(),this._PaperPopupBlueSkin_LocaLabel1_i()];
                                       if(_loc3_)
                                       {
                                          addr00be:
                                          if(!_loc1_.document)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr00ca:
                                                _loc1_.document = this;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr00ce);
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr0088);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr00ca);
               }
               addr00ce:
               return _loc1_;
            }
            §§goto(addr004e);
         }
         §§goto(addr0088);
      }
      
      private function _PaperPopupBlueSkin_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib12_i(),this._PaperPopupBlueSkin_BriskImageDynaLib13_i()];
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0054:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0054);
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "iconNormal";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr007f);
                  }
                  addr0076:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr007f:
                     this.iconNormal = _loc1_;
                     if(_loc2_ || _loc3_)
                     {
                        addr0091:
                        BindingManager.executeBindings(this,"iconNormal",this.iconNormal);
                     }
                  }
                  §§goto(addr009e);
               }
               addr009e:
               return _loc1_;
            }
            §§goto(addr0091);
         }
         §§goto(addr007f);
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.blendMode = "overlay";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.top = 0;
               if(_loc3_)
               {
                  addr0052:
                  _loc1_.left = 0;
                  if(!_loc2_)
                  {
                     _loc1_.id = "iconOverlay";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0098:
                                 this.iconOverlay = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"iconOverlay",this.iconOverlay);
                                 }
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr006f);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr006f);
      }
      
      private function _PaperPopupBlueSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.text = "";
            if(_loc3_ || _loc2_)
            {
               _loc1_.minWidth = 150;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "paperTitle";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.setStyle("verticalAlign","bottom");
                     if(!_loc2_)
                     {
                        §§goto(addr007d);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00c7);
               }
            }
            addr007d:
            _loc1_.setStyle("paddingBottom",4);
            if(_loc3_ || _loc3_)
            {
               addr0093:
               _loc1_.id = "titleDisplay";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00a6:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00c7:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr00d0);
                        }
                        §§goto(addr00e2);
                     }
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00c7);
            }
            addr00d0:
            this.titleDisplay = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr00e2:
               BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
            }
            return _loc1_;
         }
         §§goto(addr0093);
      }
      
      public function ___PaperPopupBlueSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.init();
         }
      }
      
      private function _PaperPopupBlueSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("dynaLibName");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"iconNormal.dynaLibName");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!_loc2_)
                              {
                                 §§push(1);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr0094:
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = getStyle("icon");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"iconNormal.dynaBmpSourceName");
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_ || _loc1_)
                                       {
                                          addr00c1:
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr00d0:
                                             §§push(2);
                                             if(_loc3_)
                                             {
                                                addr00d7:
                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                {
                                                   var _loc1_:* = getStyle("dynaLibName");
                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                },null,"iconOverlay.dynaLibName");
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr0103:
                                                   §§push(§§newactivation());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§goto(addr0112);
                                                   }
                                                   §§goto(addr012e);
                                                }
                                                §§goto(addr012c);
                                             }
                                             §§goto(addr011b);
                                          }
                                          §§goto(addr0119);
                                       }
                                       addr0112:
                                       §§push(§§pop().§§slot[1]);
                                       if(_loc3_)
                                       {
                                          addr011b:
                                          §§pop()[3] = new Binding(this,function():String
                                          {
                                             var _loc1_:* = getStyle("icon");
                                             return _loc1_ == undefined ? null : String(_loc1_);
                                          },null,"iconOverlay.dynaBmpSourceName");
                                          addr012e:
                                          addr012c:
                                          §§push(result);
                                          addr0119:
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr0103);
                                 }
                                 §§goto(addr00d7);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr012e);
                        }
                        §§goto(addr012c);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0119);
               }
               §§goto(addr00c1);
            }
            §§goto(addr0103);
         }
         §§goto(addr00c1);
      }
      
      [Bindable(event="propertyChange")]
      public function get backButton() : DynamicImageButton
      {
         return this._1906413305backButton;
      }
      
      public function set backButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1906413305backButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1906413305backButton = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._312699062closeButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._312699062closeButton = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._809612678contentGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconNormal() : BriskImageDynaLib
      {
         return this._644749632iconNormal;
      }
      
      public function set iconNormal(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._644749632iconNormal;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._644749632iconNormal = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconNormal",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOverlay() : BriskImageDynaLib
      {
         return this._1731308137iconOverlay;
      }
      
      public function set iconOverlay(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1731308137iconOverlay;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1731308137iconOverlay = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOverlay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._104976386moveArea;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._104976386moveArea = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
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
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayBar() : HGroup
      {
         return this._1952801373overlayBar;
      }
      
      public function set overlayBar(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1952801373overlayBar;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1952801373overlayBar = param1;
                  addr003f:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayBar",_loc2_,param1));
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
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get sideMenu() : Group
      {
         return this._216916822sideMenu;
      }
      
      public function set sideMenu(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._216916822sideMenu;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._216916822sideMenu = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : LocaLabel
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1893287094titleDisplay;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1893287094titleDisplay = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr005f);
            }
         }
         addr0086:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PaperPopupWindow) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0040);
      }
   }
}

