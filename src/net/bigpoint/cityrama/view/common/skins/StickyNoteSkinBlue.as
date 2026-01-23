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
   import mx.graphics.BitmapFill;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import spark.components.Group;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class StickyNoteSkinBlue extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _StickyNoteSkinBlue_BitmapFill1:BitmapFill;
      
      public var _StickyNoteSkinBlue_Graphic1:Graphic;
      
      public var _StickyNoteSkinBlue_Rect1:Rect;
      
      private var _1682557459bottomTape:Group;
      
      private var _809612678contentGroup:Group;
      
      private var _3314090lala:BriskMCDynaLib;
      
      private var _1718414793leftTape:Group;
      
      private var _1569129122rightTape:Group;
      
      private var _1139886057topTape:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function StickyNoteSkinBlue()
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
            if(_loc4_ || Boolean(this))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§push(null);
                     if(_loc4_ || _loc3_)
                     {
                        addr005f:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc1_))
                           {
                              addr0078:
                              §§pop().§§slot[5] = null;
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    addr0094:
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             super();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr00ce:
                                                mx_internal::_document = this;
                                                if(!_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      addr00f0:
                                                      §§pop().§§slot[1] = this._StickyNoteSkinBlue_bindingsSetup();
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr0108:
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr013d:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr0160:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0168:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_StickyNoteSkinBlueWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr017b:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr0182:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0198:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return StickyNoteSkinBlue[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                addr0208:
                                                                                                this.mxmlContent = [this._StickyNoteSkinBlue_Group1_c(),this._StickyNoteSkinBlue_Group3_i(),this._StickyNoteSkinBlue_Group4_i(),this._StickyNoteSkinBlue_Group5_i(),this._StickyNoteSkinBlue_Group6_i(),this._StickyNoteSkinBlue_Group7_i()];
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0237:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0243:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         addr027b:
                                                                                                         i = 0;
                                                                                                         addr0279:
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
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!(_loc4_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     var _temp_29:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_29;
                                                                                                                     if(!_loc3_)
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
                                                                                                   addr02f2:
                                                                                                }
                                                                                                §§goto(addr0279);
                                                                                             }
                                                                                             §§goto(addr0237);
                                                                                          }
                                                                                          §§goto(addr0208);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0243);
                                                                                 }
                                                                                 §§goto(addr027b);
                                                                              }
                                                                              §§goto(addr0237);
                                                                           }
                                                                           §§goto(addr0182);
                                                                        }
                                                                        §§goto(addr017b);
                                                                     }
                                                                     §§goto(addr0198);
                                                                  }
                                                                  §§goto(addr0279);
                                                               }
                                                               §§goto(addr0182);
                                                            }
                                                            §§goto(addr013d);
                                                         }
                                                         §§goto(addr0168);
                                                      }
                                                      §§goto(addr017b);
                                                   }
                                                   §§goto(addr0182);
                                                }
                                                §§goto(addr017b);
                                             }
                                             §§goto(addr0237);
                                          }
                                          §§goto(addr0243);
                                       }
                                       §§goto(addr02f2);
                                    }
                                    §§goto(addr017b);
                                 }
                                 §§goto(addr0160);
                              }
                              §§goto(addr0094);
                           }
                           §§goto(addr0182);
                        }
                        §§goto(addr0108);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr00f0);
               }
               §§goto(addr00ce);
            }
            §§goto(addr005f);
         }
         §§goto(addr0182);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            StickyNoteSkinBlue._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr005b);
                  }
               }
               §§goto(addr0061);
            }
            addr005b:
            return;
         }
         addr0061:
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function _StickyNoteSkinBlue_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = null;
         _loc1_ = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.bottom = 5;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.right = 5;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 5;
                  if(_loc2_)
                  {
                     _loc1_.left = 5;
                     if(!_loc3_)
                     {
                        addr007c:
                        _loc1_.mxmlContent = [this._StickyNoteSkinBlue_Group2_c(),this._StickyNoteSkinBlue_Graphic1_i()];
                        if(!_loc3_)
                        {
                           addr0092:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a6:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0092);
            }
            §§goto(addr007c);
         }
         addr00aa:
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.filters = [this._StickyNoteSkinBlue_DropShadowFilter1_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib1_i()];
                     addr0062:
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr009b:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr009b);
                  }
               }
               addr009f:
               return _loc1_;
            }
         }
         §§goto(addr0062);
      }
      
      private function _StickyNoteSkinBlue_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(_loc2_)
         {
            _loc1_.angle = 90;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.alpha = 0.7;
               if(!_loc3_)
               {
                  _loc1_.blurX = 7;
                  if(!_loc3_)
                  {
                     addr0064:
                     _loc1_.blurY = 4;
                     if(_loc2_)
                     {
                        addr006f:
                        _loc1_.strength = 0.9;
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0064);
            }
            addr0075:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaMCSourceName = "postit_bg_blue";
               if(!_loc3_)
               {
                  addr003f:
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr005e:
                        _loc1_.id = "lala";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr0089:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr009a:
                                    this.lala = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00a4:
                                       BindingManager.executeBindings(this,"lala",this.lala);
                                    }
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00a4);
                           }
                        }
                        §§goto(addr009a);
                     }
                     addr00b1:
                     return _loc1_;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr005e);
            }
            §§goto(addr009a);
         }
         §§goto(addr003f);
      }
      
      private function _StickyNoteSkinBlue_Graphic1_i() : Graphic
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Graphic = new Graphic();
         if(_loc2_ || _loc2_)
         {
            _loc1_.blendMode = "multiply";
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._StickyNoteSkinBlue_Rect1_i()];
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "_StickyNoteSkinBlue_Graphic1";
                  if(!_loc3_)
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0088);
                        }
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0067);
            }
            addr0088:
            _loc1_.document = this;
            if(_loc2_ || Boolean(this))
            {
               addr0099:
               this._StickyNoteSkinBlue_Graphic1 = _loc1_;
               if(!_loc3_)
               {
                  BindingManager.executeBindings(this,"_StickyNoteSkinBlue_Graphic1",this._StickyNoteSkinBlue_Graphic1);
               }
            }
            §§goto(addr00b2);
         }
         addr00b2:
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Rect1_i() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.fill = this._StickyNoteSkinBlue_BitmapFill1_i();
            if(!_loc2_)
            {
               _loc1_.initialized(this,"_StickyNoteSkinBlue_Rect1");
               if(!_loc2_)
               {
                  this._StickyNoteSkinBlue_Rect1 = _loc1_;
                  if(!_loc2_)
                  {
                     addr0058:
                     BindingManager.executeBindings(this,"_StickyNoteSkinBlue_Rect1",this._StickyNoteSkinBlue_Rect1);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0058);
      }
      
      private function _StickyNoteSkinBlue_BitmapFill1_i() : BitmapFill
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BitmapFill = new BitmapFill();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.alpha = 0.8;
            if(_loc2_)
            {
               _loc1_.fillMode = "repeat";
               if(!_loc3_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr007c);
            }
            addr0051:
            _loc1_.scaleX = 2;
            if(_loc2_)
            {
               addr005c:
               _loc1_.scaleY = 2;
               if(!(_loc3_ && _loc2_))
               {
                  addr007c:
                  this._StickyNoteSkinBlue_BitmapFill1 = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr008e:
                     BindingManager.executeBindings(this,"_StickyNoteSkinBlue_BitmapFill1",this._StickyNoteSkinBlue_BitmapFill1);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr008e);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _StickyNoteSkinBlue_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.left = 15;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.right = 15;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 28;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.bottom = 20;
                     if(_loc2_)
                     {
                        _loc1_.minWidth = 0;
                        if(_loc2_)
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr00ad);
               }
               addr0076:
               _loc1_.minHeight = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0089:
                  _loc1_.id = "contentGroup";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00ad:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr00b6);
                           }
                           §§goto(addr00c0);
                        }
                     }
                  }
               }
               addr00b6:
               this.contentGroup = _loc1_;
               if(_loc2_)
               {
                  addr00c0:
                  BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
               }
               §§goto(addr00cd);
            }
            addr00cd:
            return _loc1_;
         }
         §§goto(addr00c0);
      }
      
      private function _StickyNoteSkinBlue_Group4_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.left = 30;
               if(_loc3_)
               {
                  addr003d:
                  _loc1_.right = 30;
                  if(!_loc2_)
                  {
                     _loc1_.visible = false;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib2_c()];
                        if(!_loc2_)
                        {
                           addr006c:
                           _loc1_.id = "topTape";
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr0097:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§goto(addr00a8);
                                    }
                                    §§goto(addr00b2);
                                 }
                              }
                              addr00a8:
                              this.topTape = _loc1_;
                              if(_loc3_)
                              {
                                 addr00b2:
                                 BindingManager.executeBindings(this,"topTape",this.topTape);
                              }
                              §§goto(addr00bf);
                           }
                        }
                        addr00bf:
                        return _loc1_;
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00b2);
               }
            }
            §§goto(addr006c);
         }
         §§goto(addr003d);
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               addr0037:
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0076:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr006a);
            }
            §§goto(addr0076);
         }
         §§goto(addr0037);
      }
      
      private function _StickyNoteSkinBlue_Group5_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.bottom = 0;
            if(!_loc2_)
            {
               _loc1_.left = 30;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.right = 30;
                  if(_loc3_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00a2);
            }
            §§goto(addr00b3);
         }
         addr005c:
         _loc1_.visible = false;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib3_c()];
            if(_loc3_)
            {
               addr0075:
               _loc1_.id = "bottomTape";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00a2:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00b3);
                        }
                        §§goto(addr00bd);
                     }
                  }
                  addr00b3:
                  this.bottomTape = _loc1_;
                  if(_loc3_)
                  {
                     addr00bd:
                     BindingManager.executeBindings(this,"bottomTape",this.bottomTape);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr00a2);
            }
            §§goto(addr00bd);
         }
         addr00ca:
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_bottom";
               if(_loc3_)
               {
                  addr004d:
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008e);
                     }
                  }
               }
               §§goto(addr008a);
            }
            §§goto(addr004d);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group6_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.left = 0;
               if(!_loc2_)
               {
                  _loc1_.visible = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib4_c()];
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "leftTape";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b3:
                                    this.leftTape = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"leftTape",this.leftTape);
                                    }
                                 }
                                 §§goto(addr00ca);
                              }
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00bd);
                     }
                     addr00ca:
                     return _loc1_;
                  }
               }
               §§goto(addr00bd);
            }
            §§goto(addr00b3);
         }
         §§goto(addr00bd);
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib4_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.dynaMCSourceName = "stickytape_left";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  addr0052:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008a);
                  }
               }
               §§goto(addr0086);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _StickyNoteSkinBlue_Group7_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.right = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr004c:
                  _loc1_.visible = false;
                  if(!_loc2_)
                  {
                     addr0060:
                     _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib5_c()];
                     if(_loc3_)
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0060);
            }
            addr0070:
            _loc1_.id = "rightTape";
            if(_loc3_ || _loc3_)
            {
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr00b3);
                     }
                  }
                  §§goto(addr00c5);
               }
               addr00b3:
               this.rightTape = _loc1_;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr00c5:
                  BindingManager.executeBindings(this,"rightTape",this.rightTape);
               }
               §§goto(addr00d2);
            }
            addr00d2:
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib5_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_right";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     addr005d:
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr005d);
            }
            §§goto(addr008f);
         }
         §§goto(addr005d);
      }
      
      private function _StickyNoteSkinBlue_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc1_)
            {
               §§push(§§newactivation());
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Number
                        {
                           return lala.width - 5;
                        },null,"_StickyNoteSkinBlue_Graphic1.width");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(1);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Number
                                    {
                                       return lala.height - 5;
                                    },null,"_StickyNoteSkinBlue_Graphic1.height");
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(2);
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():Number
                                                {
                                                   return lala.width - 5;
                                                },null,"_StickyNoteSkinBlue_Rect1.width");
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!_loc2_)
                                                      {
                                                         addr00ff:
                                                         §§push(3);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():Number
                                                            {
                                                               return lala.height - 5;
                                                            },null,"_StickyNoteSkinBlue_Rect1.height");
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               addr0139:
                                                               §§push(§§newactivation());
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     §§push(4);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        addr015e:
                                                                        §§pop()[§§pop()] = new Binding(this,function():Object
                                                                        {
                                                                           return new Bitmap(new testingkax());
                                                                        },null,"_StickyNoteSkinBlue_BitmapFill1.source");
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr0174);
                                                                        }
                                                                        §§goto(addr01e2);
                                                                     }
                                                                     §§goto(addr01c4);
                                                                  }
                                                                  §§goto(addr018a);
                                                               }
                                                               §§goto(addr025c);
                                                            }
                                                            §§goto(addr01e2);
                                                         }
                                                         §§goto(addr0191);
                                                      }
                                                      §§goto(addr0200);
                                                   }
                                                   §§goto(addr0183);
                                                }
                                                addr0174:
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr0183:
                                                   §§push(§§pop().§§slot[1]);
                                                   if(_loc3_)
                                                   {
                                                      addr018a:
                                                      §§push(5);
                                                      if(_loc3_)
                                                      {
                                                         addr0191:
                                                         §§pop()[§§pop()] = new Binding(this,function():Object
                                                         {
                                                            return leftTape.getStyle("tapeTop") is Number ? leftTape.getStyle("tapeTop") : 5;
                                                         },null,"leftTape.top");
                                                         if(_loc3_)
                                                         {
                                                            addr01a7:
                                                            §§push(§§newactivation());
                                                            if(_loc3_)
                                                            {
                                                               addr01ae:
                                                               §§push(§§pop().§§slot[1]);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(6);
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     addr01c4:
                                                                     §§pop()[§§pop()] = new Binding(this,function():Object
                                                                     {
                                                                        return leftTape.getStyle("tapeBottom") is Number ? leftTape.getStyle("tapeBottom") : 5;
                                                                     },null,"leftTape.bottom");
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        addr01e2:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr01f1:
                                                                           §§push(§§pop().§§slot[1]);
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              addr0200:
                                                                              §§push(7);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr0207:
                                                                                 §§pop()[§§pop()] = new Binding(this,function():Object
                                                                                 {
                                                                                    return rightTape.getStyle("tapeTop") is Number ? rightTape.getStyle("tapeTop") : 5;
                                                                                 },null,"rightTape.top");
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    addr0231:
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc2_ && _loc1_))
                                                                                    {
                                                                                       §§goto(addr025e);
                                                                                    }
                                                                                    §§goto(addr025c);
                                                                                 }
                                                                                 §§goto(addr025a);
                                                                              }
                                                                              §§goto(addr0249);
                                                                           }
                                                                           §§goto(addr0247);
                                                                        }
                                                                        §§goto(addr025c);
                                                                     }
                                                                     §§goto(addr0231);
                                                                  }
                                                                  §§goto(addr0207);
                                                               }
                                                               addr025e:
                                                               §§goto(addr0240);
                                                            }
                                                            §§goto(addr01f1);
                                                         }
                                                         §§goto(addr025a);
                                                      }
                                                      §§goto(addr0249);
                                                   }
                                                   §§goto(addr0247);
                                                }
                                                §§goto(addr0240);
                                             }
                                             §§goto(addr0249);
                                          }
                                          §§goto(addr025e);
                                       }
                                       §§goto(addr01ae);
                                    }
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr015e);
                              }
                              §§goto(addr00ff);
                           }
                           §§goto(addr0240);
                        }
                        §§goto(addr025a);
                     }
                     §§goto(addr01c4);
                  }
                  §§goto(addr0247);
               }
               addr0240:
               §§push(§§pop().§§slot[1]);
               if(_loc3_)
               {
                  addr0249:
                  §§pop()[8] = new Binding(this,function():Object
                  {
                     return rightTape.getStyle("tapeBottom") is Number ? rightTape.getStyle("tapeBottom") : 5;
                  },null,"rightTape.bottom");
                  addr025c:
                  addr025a:
                  §§push(result);
                  addr0247:
               }
               return §§pop();
            }
            §§goto(addr0139);
         }
         §§goto(addr01f1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomTape() : Group
      {
         return this._1682557459bottomTape;
      }
      
      public function set bottomTape(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1682557459bottomTape;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1682557459bottomTape = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomTape",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0059);
            }
         }
         addr0080:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._809612678contentGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get lala() : BriskMCDynaLib
      {
         return this._3314090lala;
      }
      
      public function set lala(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3314090lala;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._3314090lala = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lala",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0054);
            }
         }
         addr0072:
      }
      
      [Bindable(event="propertyChange")]
      public function get leftTape() : Group
      {
         return this._1718414793leftTape;
      }
      
      public function set leftTape(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1718414793leftTape;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1718414793leftTape = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTape",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get rightTape() : Group
      {
         return this._1569129122rightTape;
      }
      
      public function set rightTape(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1569129122rightTape;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0037:
                  this._1569129122rightTape = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightTape",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get topTape() : Group
      {
         return this._1139886057topTape;
      }
      
      public function set topTape(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1139886057topTape;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1139886057topTape = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topTape",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0067);
            }
            addr0086:
            return;
         }
         §§goto(addr0067);
      }
   }
}

