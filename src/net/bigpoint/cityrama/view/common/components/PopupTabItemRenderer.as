package net.bigpoint.cityrama.view.common.components
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
   import net.bigpoint.cityrama.view.common.components.interfaces.IInactiveItemrendererVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   import spark.filters.GlowFilter;
   
   use namespace mx_internal;
   
   public class PopupTabItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _PopupTabItemRenderer_GlowFilter1:GlowFilter;
      
      private var _2096551116_PopupTabItemRenderer_Group2:Group;
      
      private var _1678082975badgeImageLeft:BriskImageDynaLib;
      
      private var _486625668badgeImageRight:BriskImageDynaLib;
      
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
      
      public function PopupTabItemRenderer()
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
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(null);
                     if(_loc4_ || _loc3_)
                     {
                        addr0056:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0068:
                              §§pop().§§slot[5] = null;
                              if(_loc4_ || _loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             super();
                                             if(_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr00d2:
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      addr00d9:
                                                      §§pop().§§slot[1] = this._PopupTabItemRenderer_bindingsSetup();
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr0100:
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr0113:
                                                               §§push(§§newactivation());
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  addr0123:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0143:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_ || _loc1_)
                                                                           {
                                                                              addr0153:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_PopupTabItemRendererWatcherSetupUtil");
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 addr016e:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0176:
                                                                                    var _temp_15:* = §§pop().§§slot[5];
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       addr01a0:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return PopupTabItemRenderer[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          addr01c4:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01ea:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                this.autoDrawBackground = false;
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0223:
                                                                                                   this.mxmlContent = [this._PopupTabItemRenderer_VGroup1_c(),this._PopupTabItemRenderer_HGroup1_c(),this._PopupTabItemRenderer_BriskImageDynaLib7_i(),this._PopupTabItemRenderer_BriskImageDynaLib8_i()];
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0245:
                                                                                                      this.currentState = "normal";
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         addr025a:
                                                                                                         this.addEventListener("click",this.___PopupTabItemRenderer_ItemRenderer1_click);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr026c:
                                                                                                            states = [new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"selected",
                                                                                                               "overrides":[new SetProperty().initializeFromObject({
                                                                                                                  "target":"_PopupTabItemRenderer_Group2",
                                                                                                                  "name":"includeInLayout",
                                                                                                                  "value":true
                                                                                                               }),new SetProperty().initializeFromObject({
                                                                                                                  "target":"_PopupTabItemRenderer_Group2",
                                                                                                                  "name":"visible",
                                                                                                                  "value":true
                                                                                                               })]
                                                                                                            })];
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr02da:
                                                                                                               i = 0;
                                                                                                               addr02d8:
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
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        Binding(bindings[i]).execute();
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[4]);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              var _temp_22:* = §§pop();
                                                                                                                              §§pop().§§slot[4] = _temp_22;
                                                                                                                              if(!(_loc3_ && _loc1_))
                                                                                                                              {
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            return;
                                                                                                            addr0337:
                                                                                                         }
                                                                                                         §§goto(addr02d8);
                                                                                                      }
                                                                                                      §§goto(addr0337);
                                                                                                   }
                                                                                                   §§goto(addr02d8);
                                                                                                }
                                                                                                §§goto(addr026c);
                                                                                             }
                                                                                             §§goto(addr0337);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0223);
                                                                                    }
                                                                                    §§goto(addr0245);
                                                                                 }
                                                                                 §§goto(addr02da);
                                                                              }
                                                                              §§goto(addr026c);
                                                                           }
                                                                           §§goto(addr02da);
                                                                        }
                                                                        §§goto(addr01ea);
                                                                     }
                                                                     §§goto(addr01a0);
                                                                  }
                                                                  §§goto(addr0143);
                                                               }
                                                               §§goto(addr02da);
                                                            }
                                                            §§goto(addr0143);
                                                         }
                                                         §§goto(addr0123);
                                                      }
                                                      §§goto(addr0113);
                                                   }
                                                   §§goto(addr0100);
                                                }
                                                §§goto(addr025a);
                                             }
                                             §§goto(addr00d2);
                                          }
                                          §§goto(addr01a0);
                                       }
                                       §§goto(addr01c4);
                                    }
                                    §§goto(addr025a);
                                 }
                                 §§goto(addr02d8);
                              }
                              §§goto(addr016e);
                           }
                           §§goto(addr0153);
                        }
                        §§goto(addr0245);
                     }
                     §§goto(addr0068);
                  }
                  §§goto(addr0176);
               }
               §§goto(addr0113);
            }
            §§goto(addr0056);
         }
         §§goto(addr00d9);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            PopupTabItemRenderer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
               else
               {
                  addr0052:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0052);
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
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._dataIsDirty = true;
                  if(_loc2_ || _loc3_)
                  {
                     this._data = param1 as TabsVo;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0073:
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0073);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._dataIsDirty);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     toolTip = this._data.tooltip;
                     if(_loc1_ || _loc1_)
                     {
                        labelDisplay.text = this._data.tabLabel;
                        if(_loc1_ || _loc1_)
                        {
                           addr0068:
                           styleName = this._data.styleName;
                           if(_loc1_)
                           {
                              §§push(this._data);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() is IInactiveItemrendererVo);
                                 if(!_loc2_)
                                 {
                                    addr0089:
                                    if(§§pop())
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(this._data);
                                          if(_loc1_)
                                          {
                                             addr00aa:
                                             if((§§pop() as IInactiveItemrendererVo).isLocked)
                                             {
                                                if(_loc1_ || Boolean(this))
                                                {
                                                   styleName = "disabled";
                                                   if(!_loc2_)
                                                   {
                                                      addr00d1:
                                                      this.showBadge = this._data.hasNews;
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr00ed:
                                                         addr00e9:
                                                         if(this._data.icon)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               this.badgeImageLeft.dynaBmpSourceName = this._data.icon;
                                                               if(_loc1_)
                                                               {
                                                                  addr010b:
                                                                  this.showUpsellBadge = true;
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     addr0133:
                                                                     this._dataIsDirty = false;
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§goto(addr0145);
                                                                     }
                                                                  }
                                                                  §§goto(addr0199);
                                                               }
                                                               §§goto(addr0133);
                                                            }
                                                            §§goto(addr0199);
                                                         }
                                                         else
                                                         {
                                                            this.showUpsellBadge = false;
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               §§goto(addr0133);
                                                            }
                                                         }
                                                         §§goto(addr014f);
                                                      }
                                                      §§goto(addr0133);
                                                   }
                                                   §§goto(addr010b);
                                                }
                                                §§goto(addr0133);
                                             }
                                             §§goto(addr00d1);
                                          }
                                          §§goto(addr00ed);
                                       }
                                       §§goto(addr0199);
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00ed);
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr0199);
                     }
                     §§goto(addr014f);
                  }
                  §§goto(addr0133);
               }
               addr0145:
               super.commitProperties();
               if(_loc1_)
               {
                  addr014f:
                  TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
                  if(!_loc2_)
                  {
                     TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
                     §§goto(addr016f);
                  }
                  §§goto(addr0199);
               }
               addr016f:
               if(_loc1_)
               {
                  addr0199:
                  TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
               }
               return;
            }
            §§goto(addr0089);
         }
         §§goto(addr0068);
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.styleChanged(param1);
            if(_loc3_)
            {
               TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
               if(_loc3_ || Boolean(this))
               {
                  TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
                  if(!_loc2_)
                  {
                     addr0086:
                     TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
                  }
                  return;
               }
            }
         }
         §§goto(addr0086);
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param2))
         {
            super.stateChanged(param1,param2,param3);
            if(_loc5_)
            {
               TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
               §§goto(addr0030);
            }
            §§goto(addr0066);
         }
         addr0030:
         if(!(_loc4_ && Boolean(this)))
         {
            TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
            addr0066:
            if(!(_loc4_ && param3))
            {
               TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
            }
         }
      }
      
      override protected function getCurrentRendererState() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(!enabled);
            if(!_loc1_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop();
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(this._data);
                           if(_loc2_)
                           {
                              §§push(§§pop() is IInactiveItemrendererVo);
                              if(_loc2_)
                              {
                                 var _temp_5:* = §§pop();
                                 addr0061:
                                 §§push(_temp_5);
                                 if(_temp_5)
                                 {
                                    if(_loc2_)
                                    {
                                       addr006a:
                                       §§pop();
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          §§goto(addr0093);
                                       }
                                       §§goto(addr00a4);
                                    }
                                    §§goto(addr0092);
                                 }
                                 addr0093:
                                 §§goto(addr0086);
                              }
                              §§goto(addr006a);
                           }
                           addr0086:
                           §§push((this._data as IInactiveItemrendererVo).isLocked);
                           if(!_loc1_)
                           {
                              addr0092:
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 §§goto(addr00a4);
                              }
                           }
                           return super.getCurrentRendererState();
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0061);
            }
            §§goto(addr0092);
         }
         addr00a4:
         return "disabled";
      }
      
      public function set showBadge(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this.badgeImageRight.includeInLayout = this.badgeImageRight.visible = param1;
         }
      }
      
      public function get showBadge() : Boolean
      {
         return this.badgeImageRight.includeInLayout;
      }
      
      public function set showUpsellBadge(param1:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.badgeImageLeft.includeInLayout = this.badgeImageLeft.visible = param1;
         }
      }
      
      public function get showUpsellBadge() : Boolean
      {
         return this.badgeImageLeft.includeInLayout;
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(this._data);
            if(_loc3_)
            {
               §§push(§§pop() is IInactiveItemrendererVo);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr0054:
                        addr004d:
                        if((this._data as IInactiveItemrendererVo).isLocked)
                        {
                           if(!_loc2_)
                           {
                              addr005d:
                              param1.stopImmediatePropagation();
                              if(!_loc2_)
                              {
                                 param1.stopPropagation();
                              }
                           }
                        }
                        §§goto(addr006c);
                     }
                     §§goto(addr005d);
                  }
                  addr006c:
                  return;
               }
               §§goto(addr0054);
            }
            §§goto(addr004d);
         }
         §§goto(addr005d);
      }
      
      private function _PopupTabItemRenderer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "top";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._PopupTabItemRenderer_Group1_c(),this._PopupTabItemRenderer_Group2_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008e);
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr008e);
            }
            §§goto(addr008a);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib1_c(),this._PopupTabItemRenderer_BriskImageDynaLib2_i()];
            if(_loc3_)
            {
               addr0053:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "tab_top";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0070:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.blendMode = "overlay";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(!_loc2_)
               {
                  _loc1_.dynaBmpSourceName = "tab_top";
                  if(_loc3_)
                  {
                     _loc1_.id = "blendBG";
                     if(!_loc2_)
                     {
                        addr0065:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0096:
                                 this.blendBG = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a0:
                                    BindingManager.executeBindings(this,"blendBG",this.blendBG);
                                 }
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0096);
                     }
                     addr00ad:
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0065);
         }
         §§goto(addr00a0);
      }
      
      private function _PopupTabItemRenderer_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.includeInLayout = false;
            if(!_loc3_)
            {
               _loc1_.visible = false;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib3_c(),this._PopupTabItemRenderer_Group3_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "_PopupTabItemRenderer_Group2";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr007c:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0085);
                              }
                              §§goto(addr0097);
                           }
                        }
                        addr0085:
                        this._PopupTabItemRenderer_Group2 = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0097:
                           BindingManager.executeBindings(this,"_PopupTabItemRenderer_Group2",this._PopupTabItemRenderer_Group2);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr007c);
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.dynaBmpSourceName = "tab_bottom";
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0070);
                  }
               }
               §§goto(addr0084);
            }
         }
         addr0070:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc2_))
            {
               addr0084:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 0;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib4_c(),this._PopupTabItemRenderer_BriskImageDynaLib5_i()];
               if(_loc2_ || _loc3_)
               {
                  addr0069:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "tab_indicator";
               addr0048:
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr007c);
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.blendMode = "overlay";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.dynaBmpSourceName = "tab_indicator";
                  if(!_loc2_)
                  {
                     _loc1_.id = "blendIndicator";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0091:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr009a);
                              }
                              §§goto(addr00ac);
                           }
                        }
                     }
                     addr009a:
                     this.blendIndicator = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00ac:
                        BindingManager.executeBindings(this,"blendIndicator",this.blendIndicator);
                     }
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr009a);
            }
            §§goto(addr0091);
         }
         addr00b9:
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.width = 174;
            if(!_loc3_)
            {
               _loc1_.maxWidth = 174;
               if(!_loc3_)
               {
                  _loc1_.paddingLeft = 4;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.paddingRight = 4;
                     if(!_loc3_)
                     {
                        _loc1_.height = 33;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.paddingTop = 5;
                           if(_loc2_)
                           {
                              addr007c:
                              _loc1_.paddingBottom = 2;
                              if(!_loc3_)
                              {
                                 addr0087:
                                 _loc1_.verticalAlign = "middle";
                                 if(_loc2_)
                                 {
                                    addr0092:
                                    _loc1_.horizontalAlign = "center";
                                    if(!_loc3_)
                                    {
                                       _loc1_.filters = [this._PopupTabItemRenderer_GlowFilter1_i()];
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00bb);
                                       }
                                       §§goto(addr00d1);
                                    }
                                 }
                              }
                              §§goto(addr00e5);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00e5);
                     }
                     addr00bb:
                     _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib6_i(),this._PopupTabItemRenderer_LocaLabel1_i()];
                     if(!_loc3_)
                     {
                        addr00d1:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr00e5:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0092);
            }
         }
         §§goto(addr007c);
      }
      
      private function _PopupTabItemRenderer_GlowFilter1_i() : GlowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GlowFilter = new GlowFilter();
         if(!_loc2_)
         {
            _loc1_.blurX = 5;
            if(!_loc2_)
            {
               _loc1_.blurY = 5;
               if(!_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr0067);
            }
         }
         addr0051:
         _loc1_.strength = 7;
         if(!_loc2_)
         {
            this._PopupTabItemRenderer_GlowFilter1 = _loc1_;
            if(_loc3_)
            {
               addr0067:
               BindingManager.executeBindings(this,"_PopupTabItemRenderer_GlowFilter1",this._PopupTabItemRenderer_GlowFilter1);
            }
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.id = "icon";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0083);
               }
            }
            §§goto(addr0071);
         }
         addr0053:
         _loc1_.document = this;
         if(!(_loc2_ && _loc3_))
         {
            addr0071:
            this.icon = _loc1_;
            if(_loc3_ || _loc2_)
            {
               addr0083:
               BindingManager.executeBindings(this,"icon",this.icon);
            }
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "tabLabel";
            if(_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 95;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "labelDisplay";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0071:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr008d:
                                 labelDisplay = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a1:
                                    BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr008d);
                     }
                  }
                  §§goto(addr0071);
               }
            }
            §§goto(addr00a1);
         }
         §§goto(addr008d);
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.top = -5;
            if(_loc3_)
            {
               _loc1_.right = -5;
               if(_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "symbol_new_small";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaLibName = "gui_ui_questSide";
                     if(_loc3_)
                     {
                        addr0051:
                        _loc1_.includeInLayout = false;
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.visible = false;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.id = "badgeImageRight";
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr0092:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00aa);
                                    }
                                    §§goto(addr00c5);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00c5);
                           }
                        }
                        addr00aa:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(this))
                        {
                           addr00bb:
                           this.badgeImageRight = _loc1_;
                           if(_loc3_)
                           {
                              addr00c5:
                              BindingManager.executeBindings(this,"badgeImageRight",this.badgeImageRight);
                           }
                        }
                        §§goto(addr00d2);
                     }
                     addr00d2:
                     return _loc1_;
                  }
                  §§goto(addr0092);
               }
               §§goto(addr00c5);
            }
            §§goto(addr0051);
         }
         §§goto(addr0092);
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.top = -5;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.left = -5;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(_loc3_)
                  {
                     addr005c:
                     _loc1_.includeInLayout = false;
                     if(_loc3_ || _loc2_)
                     {
                        addr006d:
                        _loc1_.visible = false;
                        if(_loc3_)
                        {
                           _loc1_.id = "badgeImageLeft";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0089:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       addr00ad:
                                       this.badgeImageLeft = _loc1_;
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00bf:
                                          BindingManager.executeBindings(this,"badgeImageLeft",this.badgeImageLeft);
                                       }
                                       §§goto(addr00cc);
                                    }
                                    §§goto(addr00bf);
                                 }
                                 addr00cc:
                                 return _loc1_;
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr00bf);
            }
            §§goto(addr005c);
         }
         §§goto(addr006d);
      }
      
      public function ___PopupTabItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.clickHandler(param1);
         }
      }
      
      private function _PopupTabItemRenderer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc2_)
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  addr0040:
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return getStyle("glowHighlight");
                        },null,"_PopupTabItemRenderer_GlowFilter1.color");
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!_loc2_)
                              {
                                 §§push(1);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = getStyle("iconLibName");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"icon.dynaLibName");
                                    if(_loc3_)
                                    {
                                       addr00b6:
                                       §§push(§§newactivation());
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc3_)
                                          {
                                             addr00c6:
                                             §§pop()[2] = new Binding(this,function():String
                                             {
                                                var _loc1_:* = getStyle("iconImageName");
                                                return _loc1_ == undefined ? null : String(_loc1_);
                                             },null,"icon.dynaBmpSourceName");
                                             addr00d8:
                                             addr00d6:
                                             §§push(result);
                                             addr00c4:
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr00d8);
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00c4);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr00d8);
            }
            §§goto(addr00d6);
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get _PopupTabItemRenderer_Group2() : Group
      {
         return this._2096551116_PopupTabItemRenderer_Group2;
      }
      
      public function set _PopupTabItemRenderer_Group2(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2096551116_PopupTabItemRenderer_Group2;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._2096551116_PopupTabItemRenderer_Group2 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PopupTabItemRenderer_Group2",_loc2_,param1));
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
      public function get badgeImageLeft() : BriskImageDynaLib
      {
         return this._1678082975badgeImageLeft;
      }
      
      public function set badgeImageLeft(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1678082975badgeImageLeft;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1678082975badgeImageLeft = param1;
                  addr0038:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImageLeft",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImageRight() : BriskImageDynaLib
      {
         return this._486625668badgeImageRight;
      }
      
      public function set badgeImageRight(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._486625668badgeImageRight;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._486625668badgeImageRight = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImageRight",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr007e);
            }
         }
         addr008d:
      }
      
      [Bindable(event="propertyChange")]
      public function get blendBG() : BriskImageDynaLib
      {
         return this._30353322blendBG;
      }
      
      public function set blendBG(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._30353322blendBG;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0058:
                  this._30353322blendBG = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendBG",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0058);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._751105858blendIndicator = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendIndicator",_loc2_,param1));
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
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._3226745icon;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._3226745icon = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
   }
}

