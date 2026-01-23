package net.bigpoint.cityrama.view.friendBook.ui.components
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
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   import spark.filters.GlowFilter;
   
   use namespace mx_internal;
   
   public class FriendTabItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _FriendTabItemRenderer_GlowFilter1:GlowFilter;
      
      private var _662691964_FriendTabItemRenderer_Group2:Group;
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _30353322blendBG:BriskImageDynaLib;
      
      private var _751105858blendIndicator:BriskImageDynaLib;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TabsVo;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FriendTabItemRenderer()
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
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(_loc4_ || Boolean(this))
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
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_ || _loc1_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             super();
                                             if(!_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00c3:
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr00d2:
                                                      §§pop().§§slot[1] = this._FriendTabItemRenderer_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr00e2:
                                                         §§push(§§newactivation());
                                                         if(_loc4_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  addr00fd:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_friendBook_ui_components_FriendTabItemRendererWatcherSetupUtil");
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    addr0161:
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0184:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return FriendTabItemRenderer[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01a1:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr01fe:
                                                                                                this.autoDrawBackground = false;
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   addr0210:
                                                                                                   this.mxmlContent = [this._FriendTabItemRenderer_VGroup1_c(),this._FriendTabItemRenderer_HGroup1_c(),this._FriendTabItemRenderer_BriskImageDynaLib7_i()];
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      addr0235:
                                                                                                      this.currentState = "normal";
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         addr0249:
                                                                                                         states = [new State({
                                                                                                            "name":"normal",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"disabled",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"selected",
                                                                                                            "overrides":[new SetProperty().initializeFromObject({
                                                                                                               "target":"_FriendTabItemRenderer_Group2",
                                                                                                               "name":"includeInLayout",
                                                                                                               "value":true
                                                                                                            }),new SetProperty().initializeFromObject({
                                                                                                               "target":"_FriendTabItemRenderer_Group2",
                                                                                                               "name":"visible",
                                                                                                               "value":true
                                                                                                            })]
                                                                                                         })];
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr02b8:
                                                                                                            i = 0;
                                                                                                            addr02b6:
                                                                                                         }
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
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!(_loc3_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc4_)
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
                                                                                                      addr0313:
                                                                                                   }
                                                                                                   §§goto(addr0249);
                                                                                                }
                                                                                                §§goto(addr0313);
                                                                                             }
                                                                                             §§goto(addr0235);
                                                                                          }
                                                                                          §§goto(addr0210);
                                                                                       }
                                                                                       §§goto(addr0249);
                                                                                    }
                                                                                    §§goto(addr01a1);
                                                                                 }
                                                                                 §§goto(addr02b8);
                                                                              }
                                                                              §§goto(addr02b6);
                                                                           }
                                                                           §§goto(addr0161);
                                                                        }
                                                                        §§goto(addr01fe);
                                                                     }
                                                                     §§goto(addr0184);
                                                                  }
                                                                  §§goto(addr01a1);
                                                               }
                                                               §§goto(addr02b8);
                                                            }
                                                            §§goto(addr0235);
                                                         }
                                                         §§goto(addr02b8);
                                                      }
                                                      §§goto(addr02b6);
                                                   }
                                                   §§goto(addr02b8);
                                                }
                                                §§goto(addr0235);
                                             }
                                             §§goto(addr0184);
                                          }
                                          §§goto(addr00e2);
                                       }
                                       §§goto(addr0249);
                                    }
                                    §§goto(addr0313);
                                 }
                                 §§goto(addr0184);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr0161);
                        }
                        §§goto(addr00e2);
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00c3);
            }
            §§goto(addr0062);
         }
         §§goto(addr00fd);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            FriendTabItemRenderer._watcherSetupUtil = param1;
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
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
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
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(RandomUtilities.isUnEqual(this._data,param1))
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._dataIsDirty = true;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0077);
               }
               addr0061:
               this._data = param1 as TabsVo;
               if(!(_loc2_ && _loc3_))
               {
                  addr0077:
                  invalidateProperties();
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0077);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._dataIsDirty);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc2_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc1_)
                     {
                        addr003f:
                        §§pop();
                        if(!(_loc1_ && _loc1_))
                        {
                           addr0052:
                           addr004d:
                           if(Boolean(this._data))
                           {
                              if(_loc2_)
                              {
                                 labelDisplay.text = this._data.tabLabel;
                                 if(!_loc1_)
                                 {
                                    this.enabled = this._data.enabled;
                                    if(!_loc1_)
                                    {
                                       styleName = this._data.styleName;
                                       if(!_loc1_)
                                       {
                                          this.showBadge = this._data.hasNews;
                                          if(_loc2_ || Boolean(this))
                                          {
                                             this._dataIsDirty = false;
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr00bf:
                                                super.commitProperties();
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr00d1:
                                                   TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
                                                   if(!(_loc1_ && Boolean(this)))
                                                   {
                                                      TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
                                                      addr00f9:
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         addr012b:
                                                         TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
                                                      }
                                                      §§goto(addr014b);
                                                   }
                                                   §§goto(addr012b);
                                                }
                                                §§goto(addr014b);
                                             }
                                             §§goto(addr00f9);
                                          }
                                          §§goto(addr00d1);
                                       }
                                       §§goto(addr00f9);
                                    }
                                    §§goto(addr00d1);
                                 }
                                 addr014b:
                                 return;
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00f9);
                     }
                  }
                  §§goto(addr0052);
               }
               §§goto(addr003f);
            }
            §§goto(addr0052);
         }
         §§goto(addr004d);
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.styleChanged(param1);
            if(_loc3_ || Boolean(param1))
            {
               TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
               if(!(_loc2_ && Boolean(param1)))
               {
                  TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
                  if(_loc3_ || _loc2_)
                  {
                     addr009d:
                     TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr009d);
            }
         }
         addr00bd:
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super.stateChanged(param1,param2,param3);
            if(_loc4_ || Boolean(this))
            {
               TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
               if(_loc4_)
               {
                  TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     addr0093:
                     TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0093);
            }
            addr00b3:
            return;
         }
         §§goto(addr0093);
      }
      
      override protected function getCurrentRendererState() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            if(!enabled)
            {
               if(_loc1_)
               {
                  return "disabled";
               }
            }
         }
         return super.getCurrentRendererState();
      }
      
      public function set showBadge(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            this.badgeImage.includeInLayout = this.badgeImage.visible = param1;
         }
      }
      
      public function get showBadge() : Boolean
      {
         return this.badgeImage.includeInLayout;
      }
      
      override public function set selected(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.selected = param1;
         }
      }
      
      private function _FriendTabItemRenderer_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               addr0030:
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "top";
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._FriendTabItemRenderer_Group1_c(),this._FriendTabItemRenderer_Group2_i()];
                     if(_loc2_)
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr008c);
                  }
                  addr0078:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr008c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr008c);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0030);
      }
      
      private function _FriendTabItemRenderer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._FriendTabItemRenderer_BriskImageDynaLib1_c(),this._FriendTabItemRenderer_BriskImageDynaLib2_i()];
            if(_loc2_ || Boolean(this))
            {
               addr005e:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _FriendTabItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_ || Boolean(this))
            {
               addr0050:
               _loc1_.dynaBmpSourceName = "tabsystem_top_grey";
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
         §§goto(addr0050);
      }
      
      private function _FriendTabItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.blendMode = "overlay";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_FriendBook";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.dynaBmpSourceName = "tabsystem_top_grey";
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "blendBG";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr007a:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr008e);
            }
            §§goto(addr007a);
         }
         addr008e:
         _loc1_.document = this;
         if(_loc2_ || Boolean(this))
         {
            addr00a9:
            this.blendBG = _loc1_;
            if(_loc2_ || _loc2_)
            {
               addr00bb:
               BindingManager.executeBindings(this,"blendBG",this.blendBG);
            }
         }
         return _loc1_;
      }
      
      private function _FriendTabItemRenderer_Group2_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.includeInLayout = false;
            if(!_loc2_)
            {
               addr0027:
               _loc1_.visible = false;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._FriendTabItemRenderer_BriskImageDynaLib3_c(),this._FriendTabItemRenderer_Group3_c()];
                  if(_loc3_)
                  {
                     _loc1_.id = "_FriendTabItemRenderer_Group2";
                     if(_loc3_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr0077);
                  }
                  addr0063:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0077:
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr0093);
                        }
                        §§goto(addr00a5);
                     }
                  }
                  addr0093:
                  this._FriendTabItemRenderer_Group2 = _loc1_;
                  if(_loc3_ || Boolean(this))
                  {
                     addr00a5:
                     BindingManager.executeBindings(this,"_FriendTabItemRenderer_Group2",this._FriendTabItemRenderer_Group2);
                  }
                  return _loc1_;
               }
               §§goto(addr0077);
            }
            §§goto(addr00a5);
         }
         §§goto(addr0027);
      }
      
      private function _FriendTabItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.top = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaLibName = "gui_popups_FriendBook";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.dynaBmpSourceName = "tabsystem_bottom_grey";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTabItemRenderer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 0;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr004f);
            }
            §§goto(addr0079);
         }
         addr004f:
         _loc1_.mxmlContent = [this._FriendTabItemRenderer_BriskImageDynaLib4_c(),this._FriendTabItemRenderer_BriskImageDynaLib5_i()];
         if(_loc3_ || Boolean(this))
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0079:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTabItemRenderer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "tabsystem_indicator_grey";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0057:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0057);
            }
            addr005b:
            return _loc1_;
         }
         §§goto(addr0057);
      }
      
      private function _FriendTabItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.blendMode = "overlay";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_FriendBook";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaBmpSourceName = "tabsystem_indicator_grey";
                  if(_loc2_ || _loc2_)
                  {
                     addr0063:
                     _loc1_.id = "blendIndicator";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr009e:
                                 this.blendIndicator = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00b0:
                                    BindingManager.executeBindings(this,"blendIndicator",this.blendIndicator);
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr009e);
                     }
                  }
               }
            }
            §§goto(addr00b0);
         }
         §§goto(addr0063);
      }
      
      private function _FriendTabItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 183;
            if(_loc2_ || Boolean(this))
            {
               addr003b:
               _loc1_.paddingLeft = 0;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr004e);
               }
               §§goto(addr0059);
            }
            addr004e:
            _loc1_.paddingRight = 0;
            if(!_loc3_)
            {
               addr0059:
               _loc1_.height = 36;
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr0079);
               }
               §§goto(addr00a0);
            }
            addr0079:
            _loc1_.top = 2;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     addr00a0:
                     _loc1_.filters = [this._FriendTabItemRenderer_GlowFilter1_i()];
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._FriendTabItemRenderer_BriskImageDynaLib6_i(),this._FriendTabItemRenderer_LocaLabel1_i()];
                        §§goto(addr00b1);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00ef);
               }
            }
            addr00b1:
            if(!(_loc3_ && _loc3_))
            {
               addr00db:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr00ef:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _FriendTabItemRenderer_GlowFilter1_i() : GlowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GlowFilter = new GlowFilter();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.blurX = 5;
            if(_loc2_)
            {
               _loc1_.blurY = 5;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.strength = 7;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0073:
                     this._FriendTabItemRenderer_GlowFilter1 = _loc1_;
                     if(!_loc3_)
                     {
                        BindingManager.executeBindings(this,"_FriendTabItemRenderer_GlowFilter1",this._FriendTabItemRenderer_GlowFilter1);
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0073);
            }
         }
         addr008c:
         return _loc1_;
      }
      
      private function _FriendTabItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "icon";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0068:
                        this.icon = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           BindingManager.executeBindings(this,"icon",this.icon);
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0068);
      }
      
      private function _FriendTabItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "tabLabel";
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_ || _loc3_)
               {
                  addr0051:
                  _loc1_.id = "labelDisplay";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr007d:
                              labelDisplay = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0091:
                                 BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr009d);
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0091);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _FriendTabItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.top = -5;
            if(_loc2_ || _loc2_)
            {
               _loc1_.right = -5;
               if(_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "symbol_new_small";
                  if(_loc2_)
                  {
                     _loc1_.dynaLibName = "gui_ui_questSide";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006f:
                        _loc1_.includeInLayout = false;
                        if(!_loc3_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00c9);
               }
               addr0078:
               _loc1_.visible = false;
               if(_loc2_ || Boolean(this))
               {
                  addr0089:
                  _loc1_.id = "badgeImage";
                  if(_loc2_)
                  {
                     addr0094:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr00b7:
                              this.badgeImage = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00c9:
                                 BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
                              }
                           }
                           §§goto(addr00d6);
                        }
                     }
                     §§goto(addr00b7);
                  }
               }
               addr00d6:
               return _loc1_;
            }
            §§goto(addr006f);
         }
         §§goto(addr00b7);
      }
      
      private function _FriendTabItemRenderer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || Boolean(this))
                  {
                     §§push(0);
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return getStyle("glowHighlight");
                        },null,"_FriendTabItemRenderer_GlowFilter1.color");
                        if(_loc2_)
                        {
                           addr0076:
                           §§push(§§newactivation());
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0085:
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(1);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = getStyle("iconLibName");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"icon.dynaLibName");
                                    if(!_loc3_)
                                    {
                                       addr00c4:
                                       §§push(§§newactivation());
                                       if(_loc2_)
                                       {
                                          §§goto(addr00e9);
                                       }
                                       §§goto(addr00e7);
                                    }
                                    §§goto(addr00e5);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00d4);
                  }
                  addr00e9:
                  §§goto(addr00cb);
               }
               addr00cb:
               §§push(§§pop().§§slot[1]);
               if(_loc2_)
               {
                  addr00d4:
                  §§pop()[2] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("iconImageName");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"icon.dynaBmpSourceName");
                  addr00e7:
                  addr00e5:
                  §§push(result);
                  addr00d2:
               }
               return §§pop();
            }
            §§goto(addr0076);
         }
         §§goto(addr0085);
      }
      
      [Bindable(event="propertyChange")]
      public function get _FriendTabItemRenderer_Group2() : Group
      {
         return this._662691964_FriendTabItemRenderer_Group2;
      }
      
      public function set _FriendTabItemRenderer_Group2(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._662691964_FriendTabItemRenderer_Group2;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._662691964_FriendTabItemRenderer_Group2 = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0066);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FriendTabItemRenderer_Group2",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1060367224badgeImage;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1060367224badgeImage = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blendBG() : BriskImageDynaLib
      {
         return this._30353322blendBG;
      }
      
      public function set blendBG(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._30353322blendBG;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._30353322blendBG = param1;
                  if(!_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0053);
            }
            addr0072:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get blendIndicator() : BriskImageDynaLib
      {
         return this._751105858blendIndicator;
      }
      
      public function set blendIndicator(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._751105858blendIndicator;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._751105858blendIndicator = param1;
                  if(_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendIndicator",_loc2_,param1));
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
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3226745icon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._3226745icon = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

