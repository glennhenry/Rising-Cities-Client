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
   
   public class PaperPopupSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function PaperPopupSkin()
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
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(null);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0064:
                              §§pop().§§slot[5] = null;
                              addr0063:
                              if(_loc3_ || _loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_ || _loc1_)
                                          {
                                             super();
                                             if(!_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._PaperPopupSkin_bindingsSetup();
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr00fd:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  addr0119:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr0139:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              addr0148:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_PaperPopupSkinWatcherSetupUtil");
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 addr0164:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return PaperPopupSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       addr0182:
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr01b0:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr0206:
                                                                                                this.width = 785;
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   this.height = 430;
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0225:
                                                                                                      this.mxmlContent = [this._PaperPopupSkin_Group1_i(),this._PaperPopupSkin_Group2_c()];
                                                                                                      if(!(_loc4_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr0244:
                                                                                                         this.currentState = "normal";
                                                                                                         if(!(_loc4_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0259:
                                                                                                            this.addEventListener("initialize",this.___PaperPopupSkin_SparkSkin1_initialize);
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               addr0272:
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
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr02e5:
                                                                                                                  i = 0;
                                                                                                                  addr02e3:
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
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop() + 1));
                                                                                                                                 if(!(_loc3_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 var _temp_28:* = §§pop();
                                                                                                                                 §§pop().§§slot[4] = _temp_28;
                                                                                                                                 if(!(_loc4_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               return;
                                                                                                               addr0351:
                                                                                                            }
                                                                                                            §§goto(addr02e3);
                                                                                                         }
                                                                                                         §§goto(addr0272);
                                                                                                      }
                                                                                                      §§goto(addr02e3);
                                                                                                   }
                                                                                                   §§goto(addr0351);
                                                                                                }
                                                                                                §§goto(addr0244);
                                                                                             }
                                                                                             §§goto(addr0272);
                                                                                          }
                                                                                          §§goto(addr0206);
                                                                                       }
                                                                                       §§goto(addr0351);
                                                                                    }
                                                                                    §§goto(addr0225);
                                                                                 }
                                                                                 §§goto(addr02e5);
                                                                              }
                                                                              §§goto(addr0206);
                                                                           }
                                                                           §§goto(addr02e5);
                                                                        }
                                                                        §§goto(addr0259);
                                                                     }
                                                                     §§goto(addr0182);
                                                                  }
                                                                  §§goto(addr0139);
                                                               }
                                                               §§goto(addr02e5);
                                                            }
                                                            §§goto(addr0351);
                                                         }
                                                         §§goto(addr0148);
                                                      }
                                                      §§goto(addr0225);
                                                   }
                                                   §§goto(addr0119);
                                                }
                                                §§goto(addr0259);
                                             }
                                             §§goto(addr0139);
                                          }
                                          §§goto(addr0182);
                                       }
                                       §§goto(addr01b0);
                                    }
                                    §§goto(addr02e3);
                                 }
                                 §§goto(addr0244);
                              }
                              §§goto(addr0164);
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr0259);
                     }
                     §§goto(addr0064);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0272);
            }
            §§goto(addr0064);
         }
         §§goto(addr0148);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            PaperPopupSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
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
      
      private function init() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:uint = 0;
         var _loc1_:* = 16754688;
         if(!_loc4_)
         {
            if(getStyle("titleColor"))
            {
               if(!_loc4_)
               {
                  §§push(uint(getStyle("titleColor")));
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc1_ = §§pop();
                     if(_loc3_ || Boolean(this))
                     {
                        addr005d:
                        TweenMax.to(this.overlayBar,0.01,{"tint":_loc1_});
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           TweenMax.to(this.iconOverlay,0.01,{"tint":13602319});
                           if(_loc3_)
                           {
                              TweenMax.to(this.titleDisplay,0.01,{"glowFilter":{
                                 "color":15377202,
                                 "alpha":1,
                                 "blurX":2,
                                 "blurY":2,
                                 "strength":10,
                                 "quality":3
                              }});
                              if(!_loc4_)
                              {
                                 addr00dc:
                                 if(getStyle("glowColor"))
                                 {
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr0102:
                                       _loc2_ = uint(getStyle("glowColor"));
                                       if(_loc3_)
                                       {
                                          addr0113:
                                          TweenMax.to(this,1,{"glowFilter":{
                                             "color":_loc2_,
                                             "alpha":1,
                                             "blurX":32,
                                             "blurY":32,
                                             "strength":1.8
                                          }});
                                          if(_loc3_)
                                          {
                                             addr0140:
                                             invalidateDisplayList();
                                          }
                                       }
                                       addr00f7:
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr0140);
                           }
                           §§goto(addr00dc);
                        }
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr0102);
               }
               §§goto(addr0113);
            }
            §§goto(addr005d);
         }
         §§goto(addr00f7);
      }
      
      private function _PaperPopupSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.left = 765;
            if(_loc2_)
            {
               _loc1_.width = 80;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.top = 20;
                  if(_loc2_)
                  {
                     _loc1_.bottom = 18;
                     if(_loc2_)
                     {
                        addr005f:
                        _loc1_.id = "sideMenu";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007f:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0094:
                                    this.sideMenu = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr009e:
                                       BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr0094);
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr005f);
            }
            §§goto(addr007f);
         }
         §§goto(addr0094);
      }
      
      private function _PaperPopupSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr003c:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._PaperPopupSkin_Group3_c(),this._PaperPopupSkin_Group5_i()];
                  if(_loc2_ || _loc3_)
                  {
                     addr006e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0082:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0082);
            }
            §§goto(addr006e);
         }
         §§goto(addr003c);
      }
      
      private function _PaperPopupSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 785;
            if(_loc3_)
            {
               §§goto(addr002a);
            }
            §§goto(addr0049);
         }
         addr002a:
         _loc1_.height = 427;
         if(!(_loc2_ && _loc3_))
         {
            addr0049:
            _loc1_.bottom = 0;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._PaperPopupSkin_BriskImageDynaLib1_c(),this._PaperPopupSkin_Group4_i(),this._PaperPopupSkin_DynamicImageButton1_i(),this._PaperPopupSkin_DynamicImageButton2_i()];
               if(_loc3_)
               {
                  addr0081:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0091);
            }
            §§goto(addr0081);
         }
         addr0091:
         return _loc1_;
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "layer_bg";
               if(!_loc3_)
               {
                  addr0053:
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc3_)
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr0098);
         }
         §§goto(addr0053);
      }
      
      private function _PaperPopupSkin_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 25;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.right = 25;
               if(!_loc2_)
               {
                  _loc1_.top = 20;
                  if(_loc3_)
                  {
                     _loc1_.bottom = 18;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr00a3);
                  }
                  addr006e:
                  _loc1_.id = "contentGroup";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0090:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0099:
                              this.contentGroup = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00a3:
                                 BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
                              }
                           }
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr0099);
                  }
                  addr00b0:
                  return _loc1_;
               }
            }
            §§goto(addr0090);
         }
         §§goto(addr0099);
      }
      
      private function _PaperPopupSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "back";
            if(_loc3_)
            {
               _loc1_.top = 15;
               if(!_loc2_)
               {
                  _loc1_.left = 20;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0058:
                        _loc1_.id = "backButton";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr0085);
                              }
                           }
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0058);
            }
            §§goto(addr00a0);
         }
         addr0085:
         _loc1_.document = this;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr0096:
            this.backButton = _loc1_;
            if(_loc3_)
            {
               addr00a0:
               BindingManager.executeBindings(this,"backButton",this.backButton);
            }
         }
         return _loc1_;
      }
      
      private function _PaperPopupSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "close";
            if(_loc2_)
            {
               _loc1_.top = 15;
               if(!_loc3_)
               {
                  _loc1_.right = 20;
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr009f);
            }
            addr0057:
            _loc1_.id = "closeButton";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0084);
                  }
               }
               §§goto(addr008d);
            }
            addr0084:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr008d:
               this.closeButton = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr009f:
                  BindingManager.executeBindings(this,"closeButton",this.closeButton);
               }
            }
            return _loc1_;
         }
         §§goto(addr009f);
      }
      
      private function _PaperPopupSkin_Group5_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._PaperPopupSkin_HGroup1_c(),this._PaperPopupSkin_HGroup2_i(),this._PaperPopupSkin_HGroup3_c()];
                  if(_loc2_)
                  {
                     _loc1_.id = "moveArea";
                     if(!_loc3_)
                     {
                        addr0077:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0096);
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  addr0096:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr009f:
                     this.moveArea = _loc1_;
                     if(!_loc3_)
                     {
                        BindingManager.executeBindings(this,"moveArea",this.moveArea);
                     }
                  }
               }
               §§goto(addr00b6);
            }
            §§goto(addr0077);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _PaperPopupSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc3_))
               {
                  addr0051:
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._PaperPopupSkin_BriskImageDynaLib2_c(),this._PaperPopupSkin_BriskImageDynaLib3_c(),this._PaperPopupSkin_BriskImageDynaLib4_c(),this._PaperPopupSkin_BriskImageDynaLib5_c(),this._PaperPopupSkin_BriskImageDynaLib6_c()];
                     if(!_loc2_)
                     {
                        addr0096:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr00aa:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr00aa);
            }
            §§goto(addr0051);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_left";
               if(_loc3_)
               {
                  addr0047:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0053:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0057);
               }
               §§goto(addr0053);
            }
            addr0057:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  addr0049:
                  if(!_loc2_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0080);
               }
               addr0060:
               _loc1_.minWidth = 150;
               if(_loc3_ || _loc2_)
               {
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0080:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0049);
         }
         §§goto(addr0074);
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_middle";
               if(!_loc3_)
               {
                  §§goto(addr0040);
               }
               §§goto(addr0054);
            }
            addr0040:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc3_)
               {
                  addr0054:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0058);
         }
         addr0058:
         return _loc1_;
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr0066:
                     _loc1_.minWidth = 150;
                     if(!_loc3_)
                     {
                        §§goto(addr0072);
                     }
                     §§goto(addr007e);
                  }
                  addr0072:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr007e:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0066);
            }
            §§goto(addr007e);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               addr003d:
               _loc1_.dynaBmpSourceName = "layer_clip_right";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0054:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0058);
               }
               §§goto(addr0054);
            }
            addr0058:
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _PaperPopupSkin_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.mouseEnabled = false;
               if(_loc3_)
               {
                  _loc1_.mouseChildren = false;
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.blendMode = "overlay";
                        if(!_loc2_)
                        {
                           _loc1_.percentWidth = 100;
                           addr0063:
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._PaperPopupSkin_BriskImageDynaLib7_c(),this._PaperPopupSkin_BriskImageDynaLib8_c(),this._PaperPopupSkin_BriskImageDynaLib9_c(),this._PaperPopupSkin_BriskImageDynaLib10_c(),this._PaperPopupSkin_BriskImageDynaLib11_c()];
                              if(_loc3_)
                              {
                                 _loc1_.setStyle("color",15973895);
                                 if(_loc3_)
                                 {
                                    addr00af:
                                    _loc1_.id = "overlayBar";
                                    if(_loc3_)
                                    {
                                       if(!_loc1_.document)
                                       {
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§goto(addr00da);
                                          }
                                          §§goto(addr00f5);
                                       }
                                       §§goto(addr00eb);
                                    }
                                    §§goto(addr00da);
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00da);
                           }
                           §§goto(addr00eb);
                        }
                        addr00da:
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00eb:
                           this.overlayBar = _loc1_;
                           if(!_loc2_)
                           {
                              addr00f5:
                              BindingManager.executeBindings(this,"overlayBar",this.overlayBar);
                           }
                        }
                        §§goto(addr0102);
                     }
                     §§goto(addr00af);
                  }
               }
               addr0102:
               return _loc1_;
            }
            §§goto(addr00eb);
         }
         §§goto(addr0063);
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_left";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0056:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0056);
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  §§goto(addr0041);
               }
               §§goto(addr0057);
            }
            §§goto(addr006b);
         }
         addr0041:
         if(!_loc2_)
         {
            addr0057:
            _loc1_.minWidth = 150;
            if(_loc3_ || Boolean(this))
            {
               addr006b:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
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
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0050:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0054);
               }
               §§goto(addr0050);
            }
            addr0054:
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "layer_clip_tile";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  addr0058:
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.minWidth = 150;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008c:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr008c);
            }
         }
         §§goto(addr0058);
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib11_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "layer_clip_right";
               if(!_loc2_)
               {
                  addr0054:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0068:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0068);
            }
            addr006c:
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _PaperPopupSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.mouseEnabled = false;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr004b:
                  _loc1_.mouseChildren = false;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_)
                     {
                        _loc1_.percentHeight = 100;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.paddingBottom = 8;
                           if(!_loc2_)
                           {
                              _loc1_.paddingLeft = 30;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a3:
                                 _loc1_.paddingRight = 30;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.verticalAlign = "bottom";
                                    if(!_loc2_)
                                    {
                                       addr00ce:
                                       _loc1_.mxmlContent = [this._PaperPopupSkin_Group6_c(),this._PaperPopupSkin_LocaLabel1_i()];
                                       if(_loc3_)
                                       {
                                          §§goto(addr00e4);
                                       }
                                    }
                                 }
                                 §§goto(addr00f8);
                              }
                           }
                           §§goto(addr00ce);
                        }
                        addr00e4:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00f8:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr00a3);
                  }
               }
               §§goto(addr00ce);
            }
            §§goto(addr004b);
         }
         §§goto(addr00a3);
      }
      
      private function _PaperPopupSkin_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._PaperPopupSkin_BriskImageDynaLib12_i(),this._PaperPopupSkin_BriskImageDynaLib13_i()];
            if(!_loc2_)
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
      
      private function _PaperPopupSkin_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.left = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.bottom = -2;
               if(_loc3_)
               {
                  _loc1_.id = "iconNormal";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007b:
                              this.iconNormal = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr008d:
                                 BindingManager.executeBindings(this,"iconNormal",this.iconNormal);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr008d);
                        }
                        addr009a:
                        return _loc1_;
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0072);
               }
            }
            §§goto(addr007b);
         }
         §§goto(addr008d);
      }
      
      private function _PaperPopupSkin_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.blendMode = "overlay";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.bottom = -2;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "iconOverlay";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr008e:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr008e);
               }
            }
         }
         addr009a:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr00a3:
            this.iconOverlay = _loc1_;
            if(_loc3_)
            {
               addr00ad:
               BindingManager.executeBindings(this,"iconOverlay",this.iconOverlay);
            }
         }
         return _loc1_;
      }
      
      private function _PaperPopupSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.text = "";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.minWidth = 150;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "paperTitle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.setStyle("verticalAlign","bottom");
                     if(!_loc2_)
                     {
                        addr007c:
                        _loc1_.id = "titleDisplay";
                        if(_loc3_)
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a8:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b9:
                                    this.titleDisplay = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00c3:
                                       BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr00c3);
            }
            §§goto(addr00a8);
         }
         §§goto(addr0087);
      }
      
      public function ___PaperPopupSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.init();
         }
      }
      
      private function _PaperPopupSkin_bindingsSetup() : Array
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
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(0);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("dynaLibName");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"iconNormal.dynaLibName");
                        if(_loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_ || _loc2_)
                           {
                              addr0097:
                              §§push(§§pop().§§slot[1]);
                              if(_loc2_ || _loc3_)
                              {
                                 addr00a6:
                                 §§push(1);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00b5:
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = getStyle("icon");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"iconNormal.dynaBmpSourceName");
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00cb);
                                    }
                                    §§goto(addr011b);
                                 }
                                 §§goto(addr0133);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr0144);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0097);
            }
            addr00cb:
            §§push(§§newactivation());
            if(_loc2_)
            {
               addr00d2:
               §§push(§§pop().§§slot[1]);
               if(_loc2_ || _loc2_)
               {
                  addr00e1:
                  §§push(2);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§pop()[§§pop()] = new Binding(this,function():String
                     {
                        var _loc1_:* = getStyle("dynaLibName");
                        return _loc1_ == undefined ? null : String(_loc1_);
                     },null,"iconOverlay.dynaLibName");
                     if(_loc2_ || _loc1_)
                     {
                        addr011b:
                        §§push(§§newactivation());
                        if(!_loc3_)
                        {
                           §§goto(addr0122);
                        }
                        §§goto(addr0146);
                     }
                     §§goto(addr0144);
                  }
                  §§goto(addr0133);
               }
               §§goto(addr0131);
            }
            addr0122:
            §§push(§§pop().§§slot[1]);
            if(_loc2_ || _loc1_)
            {
               addr0133:
               §§pop()[3] = new Binding(this,function():String
               {
                  var _loc1_:* = getStyle("icon");
                  return _loc1_ == undefined ? null : String(_loc1_);
               },null,"iconOverlay.dynaBmpSourceName");
               addr0146:
               addr0144:
               §§push(result);
               addr0131:
            }
            return §§pop();
         }
         §§goto(addr00d2);
      }
      
      [Bindable(event="propertyChange")]
      public function get backButton() : DynamicImageButton
      {
         return this._1906413305backButton;
      }
      
      public function set backButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1906413305backButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1906413305backButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._312699062closeButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._312699062closeButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._809612678contentGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._809612678contentGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconNormal() : BriskImageDynaLib
      {
         return this._644749632iconNormal;
      }
      
      public function set iconNormal(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._644749632iconNormal;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._644749632iconNormal = param1;
                  if(_loc3_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconNormal",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr004d);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOverlay() : BriskImageDynaLib
      {
         return this._1731308137iconOverlay;
      }
      
      public function set iconOverlay(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1731308137iconOverlay;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1731308137iconOverlay = param1;
                  if(_loc4_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOverlay",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._104976386moveArea;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._104976386moveArea = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayBar() : HGroup
      {
         return this._1952801373overlayBar;
      }
      
      public function set overlayBar(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1952801373overlayBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1952801373overlayBar = param1;
                  addr0037:
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0066);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayBar",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0037);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._216916822sideMenu = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : LocaLabel
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1893287094titleDisplay;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1893287094titleDisplay = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PaperPopupWindow) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
         }
         addr007a:
      }
   }
}

