package net.bigpoint.cityrama.view.rewardLayer.ui.skins
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
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class RewardLayerBigListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      public static const LOCKED:String = "Locked";
      
      public static const UNLOCKED:String = "UnLocked";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         LOCKED = "Locked";
         if(_loc1_ || _loc2_)
         {
            addr002b:
            UNLOCKED = "UnLocked";
         }
         return;
      }
      §§goto(addr002b);
      
      private var _385593099dataGroup:DataGroup;
      
      private var _721040133motionPath:SimpleMotionPath;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _scrollPosDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function RewardLayerBigListSkin()
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
         if(_loc4_)
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc1_))
                           {
                              addr0077:
                              §§pop().§§slot[5] = null;
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_ || _loc1_)
                                          {
                                             super();
                                             if(!_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr00f0:
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§§slot[1] = this._RewardLayerBigListSkin_bindingsSetup();
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            addr0120:
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               addr0133:
                                                               §§push(§§newactivation());
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     addr0155:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr0175:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr017d:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_rewardLayer_ui_skins_RewardLayerBigListSkinWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0190:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0198:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                    {
                                                                                       addr01b6:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return RewardLayerBigListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01d4:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && _loc1_))
                                                                                             {
                                                                                                this.mxmlContent = [this._RewardLayerBigListSkin_HGroup1_c()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0245:
                                                                                                      this._RewardLayerBigListSkin_Animate1_i();
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         addr0259:
                                                                                                         this.addEventListener("creationComplete",this.___RewardLayerBigListSkin_SparkSkin1_creationComplete);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr026b:
                                                                                                            states = [new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[]
                                                                                                            })];
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               addr02a2:
                                                                                                               i = 0;
                                                                                                            }
                                                                                                         }
                                                                                                         var _temp_23:*;
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
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[4]);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc4_ || Boolean(this))
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
                                                                                                         while(var _temp_23:* = §§pop(), §§pop().§§slot[4] = _temp_23, !(_loc3_ && _loc1_));
                                                                                                         
                                                                                                         return;
                                                                                                         addr0318:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr026b);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0245);
                                                                                          }
                                                                                          §§goto(addr026b);
                                                                                       }
                                                                                       §§goto(addr0259);
                                                                                    }
                                                                                    §§goto(addr0318);
                                                                                 }
                                                                                 §§goto(addr02a2);
                                                                              }
                                                                              §§goto(addr026b);
                                                                           }
                                                                           §§goto(addr02a2);
                                                                        }
                                                                        §§goto(addr0318);
                                                                     }
                                                                     §§goto(addr01b6);
                                                                  }
                                                                  §§goto(addr0175);
                                                               }
                                                               §§goto(addr0198);
                                                            }
                                                            §§goto(addr026b);
                                                         }
                                                         §§goto(addr0198);
                                                      }
                                                      §§goto(addr0318);
                                                   }
                                                   §§goto(addr02a2);
                                                }
                                             }
                                             §§goto(addr01d4);
                                          }
                                          §§goto(addr0245);
                                       }
                                       §§goto(addr0190);
                                    }
                                    §§goto(addr01b6);
                                 }
                                 §§goto(addr00f0);
                              }
                              §§goto(addr0133);
                           }
                           §§goto(addr0120);
                        }
                        §§goto(addr0245);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0120);
               }
               §§goto(addr0155);
            }
            §§goto(addr0077);
         }
         §§goto(addr017d);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            RewardLayerBigListSkin._watcherSetupUtil = param1;
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
            if(_loc3_)
            {
               §§goto(addr002d);
            }
            §§goto(addr0049);
         }
         addr002d:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_)
            {
               return;
            }
         }
         else
         {
            addr0049:
            this.__moduleFactoryInitialized = true;
         }
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
      
      private function scrollAnimation_effectStart() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new Event(LOCKED,true));
            if(!_loc1_)
            {
               addr0029:
               this.dataGroup.mouseChildren = false;
            }
            return;
         }
         §§goto(addr0029);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super.updateDisplayList(param1,param2);
            if(_loc4_ || Boolean(param2))
            {
               if(this._scrollPosDirty)
               {
                  if(!_loc3_)
                  {
                     addr0051:
                     this._scrollPosDirty = false;
                     if(_loc4_)
                     {
                        dispatchEvent(new Event(UNLOCKED,true));
                        if(!_loc3_)
                        {
                           this.checkScroll();
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              addr008d:
                              this.dataGroup.mouseChildren = true;
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr008d);
                  }
               }
               addr0095:
               return;
            }
         }
         §§goto(addr0051);
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this._scrollPosDirty = true;
            if(!_loc2_)
            {
               invalidateDisplayList();
            }
         }
      }
      
      private function scrollToPosition(param1:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Number = Number(this.dataGroup.layout.getHorizontalScrollPositionDelta(param1));
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_ == 0);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        addr0063:
                        §§pop();
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           §§goto(addr0085);
                        }
                        §§goto(addr009c);
                     }
                  }
               }
               addr0085:
               if(!this.scrollAnimation.isPlaying)
               {
                  if(!_loc4_)
                  {
                     this.motionPath.valueBy = _loc2_;
                     if(_loc3_)
                     {
                        addr009c:
                        this.scrollAnimation.play();
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr009c);
               }
               addr00a4:
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr009c);
      }
      
      private function checkScroll() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Rectangle = null;
         var _loc4_:Rectangle = null;
         var _loc1_:Object = this.dataGroup.getElementAt(0);
         var _loc2_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(_loc6_ || Boolean(_loc3_))
         {
            if(this.dataGroup.numElements > 3)
            {
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§goto(addr0068);
               }
               §§goto(addr00e9);
            }
            else
            {
               §§push(this.scrollLeftButton);
            }
            §§goto(addr015b);
         }
         addr0068:
         if(_loc1_)
         {
            if(_loc6_ || Boolean(this))
            {
               _loc3_ = this.dataGroup.scrollRect;
               _loc4_ = _loc1_.getBounds(this.dataGroup);
               if(!_loc7_)
               {
                  this.scrollLeftButton.visible = !_loc3_.containsRect(_loc4_);
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     addr00e9:
                     if(_loc2_)
                     {
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           §§push(this.scrollRightButton);
                           if(!(_loc7_ && Boolean(_loc1_)))
                           {
                              §§push(!this.dataGroup.scrollRect.containsRect(_loc2_.getBounds(this.dataGroup)));
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§pop().visible = §§pop();
                                 if(_loc7_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0151:
                                 §§pop().visible = §§pop();
                              }
                              §§goto(addr016b);
                           }
                           else
                           {
                              addr0150:
                              §§push(true);
                           }
                           §§goto(addr0151);
                        }
                        §§goto(addr016b);
                     }
                     else
                     {
                        §§push(this.scrollRightButton);
                     }
                     §§goto(addr0150);
                  }
               }
            }
         }
         else
         {
            §§push(this.scrollLeftButton);
            if(_loc6_ || Boolean(_loc1_))
            {
               §§push(true);
               if(_loc6_)
               {
                  §§pop().visible = §§pop();
                  if(_loc6_)
                  {
                     §§goto(addr00e9);
                  }
               }
               else
               {
                  addr0169:
                  §§pop().visible = §§pop();
               }
               §§goto(addr016b);
            }
            else
            {
               addr015b:
               §§push(this.scrollRightButton.visible = false);
            }
            §§goto(addr0169);
         }
         addr016b:
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(_loc2_)
            {
               this.scrollToPosition(NavigationUnit.HOME);
               if(!(_loc3_ && _loc2_))
               {
                  addr0056:
                  this.checkScroll();
               }
               §§goto(addr005b);
            }
            §§goto(addr0056);
         }
         addr005b:
      }
      
      private function _RewardLayerBigListSkin_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(!_loc2_)
         {
            _loc1_.duration = 50;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.motionPaths = new <MotionPath>[this._RewardLayerBigListSkin_SimpleMotionPath1_i()];
               if(!_loc2_)
               {
                  _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
                     if(_loc3_ || _loc3_)
                     {
                        addr009d:
                        this.scrollAnimation = _loc1_;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00af:
                           BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr00af);
            }
            §§goto(addr009d);
         }
         §§goto(addr00af);
      }
      
      private function _RewardLayerBigListSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(!_loc2_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(_loc3_)
            {
               this.motionPath = _loc1_;
               if(!_loc2_)
               {
                  addr0046:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
               return _loc1_;
            }
         }
         §§goto(addr0046);
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.scrollAnimation_effectStart();
         }
      }
      
      public function __scrollAnimation_effectEnd(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.scrollAnimation_effectEnd();
         }
      }
      
      private function _RewardLayerBigListSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0077);
            }
            addr005b:
            _loc1_.mxmlContent = [this._RewardLayerBigListSkin_VGroup1_c(),this._RewardLayerBigListSkin_DataGroup1_i(),this._RewardLayerBigListSkin_VGroup2_c()];
            if(_loc2_)
            {
               addr0077:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0083:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr0087);
         }
         addr0087:
         return _loc1_;
      }
      
      private function _RewardLayerBigListSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 41;
                  if(!_loc3_)
                  {
                     addr006a:
                     _loc1_.left = -5;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._RewardLayerBigListSkin_DynamicImageButton1_i()];
                        if(!_loc3_)
                        {
                           addr0084:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0090:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0090);
                  }
                  addr0094:
                  return _loc1_;
               }
            }
            §§goto(addr0084);
         }
         §§goto(addr006a);
      }
      
      private function _RewardLayerBigListSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.visible = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.styleName = "listLeft";
               if(!(_loc2_ && _loc3_))
               {
                  addr0055:
                  _loc1_.addEventListener("click",this.__scrollLeftButton_click);
                  if(_loc3_ || _loc3_)
                  {
                     addr006d:
                     _loc1_.id = "scrollLeftButton";
                     if(!_loc2_)
                     {
                        addr0084:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0099:
                                 this.scrollLeftButton = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00a3:
                                    BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
                                 }
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr0084);
               }
               addr00b0:
               return _loc1_;
            }
            §§goto(addr0055);
         }
         §§goto(addr006d);
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _RewardLayerBigListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc2_)
         {
            _loc1_.width = 620;
            if(_loc3_ || Boolean(this))
            {
               addr0037:
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.focusEnabled = false;
                  if(_loc3_)
                  {
                     _loc1_.layout = this._RewardLayerBigListSkin_HorizontalLayout1_c();
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(_loc3_)
                        {
                           addr0086:
                           _loc1_.id = "dataGroup";
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    addr009d:
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr00b8);
                                    }
                                    §§goto(addr00ca);
                                 }
                              }
                              addr00b8:
                              this.dataGroup = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00ca:
                                 BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr009d);
            }
            §§goto(addr00ca);
         }
         §§goto(addr0037);
      }
      
      private function _RewardLayerBigListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 10;
            if(!_loc2_)
            {
               addr0040:
               _loc1_.columnWidth = 200;
               if(!_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.clipAndEnableScrolling = true;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.checkScroll();
         }
      }
      
      private function _RewardLayerBigListSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.width = 41;
               if(!(_loc3_ && _loc2_))
               {
                  addr0059:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._RewardLayerBigListSkin_DynamicImageButton2_i()];
                     if(_loc2_)
                     {
                        addr0088:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0094:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0094);
                  }
               }
               addr0098:
               return _loc1_;
            }
            §§goto(addr0088);
         }
         §§goto(addr0059);
      }
      
      private function _RewardLayerBigListSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               _loc1_.styleName = "listRight";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.addEventListener("click",this.__scrollRightButton_click);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr00a7);
               }
               addr0060:
               _loc1_.id = "scrollRightButton";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0095);
                        }
                        §§goto(addr00a7);
                     }
                  }
               }
               addr0095:
               this.scrollRightButton = _loc1_;
               if(_loc3_ || _loc3_)
               {
                  addr00a7:
                  BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
               }
               §§goto(addr00b4);
            }
         }
         addr00b4:
         return _loc1_;
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
         }
      }
      
      public function ___RewardLayerBigListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onCreationComplete(param1);
         }
      }
      
      private function _RewardLayerBigListSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  addr0039:
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipScrollLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"scrollLeftButton.toolTip");
                        if(!(_loc2_ && _loc1_))
                        {
                           addr008b:
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§goto(addr00b8);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a3);
                  }
                  addr00b8:
                  §§goto(addr0092);
               }
               addr0092:
               §§push(§§pop().§§slot[1]);
               if(!(_loc2_ && _loc1_))
               {
                  addr00a3:
                  §§pop()[1] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("tooltipScrollRight");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"scrollRightButton.toolTip");
                  addr00b6:
                  addr00b4:
                  return result;
               }
            }
            §§goto(addr008b);
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385593099dataGroup;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007d);
            }
            addr008c:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get motionPath() : SimpleMotionPath
      {
         return this._721040133motionPath;
      }
      
      public function set motionPath(param1:SimpleMotionPath) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._721040133motionPath;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._721040133motionPath = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0059);
            }
            addr0080:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollAnimation() : Animate
      {
         return this._599151817scrollAnimation;
      }
      
      public function set scrollAnimation(param1:Animate) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._599151817scrollAnimation;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._599151817scrollAnimation = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
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
      public function get scrollLeftButton() : DynamicImageButton
      {
         return this._75450170scrollLeftButton;
      }
      
      public function set scrollLeftButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._75450170scrollLeftButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._75450170scrollLeftButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRightButton() : DynamicImageButton
      {
         return this._1993162593scrollRightButton;
      }
      
      public function set scrollRightButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1993162593scrollRightButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr004a:
                  this._1993162593scrollRightButton = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0065);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
            addr007f:
            return;
         }
         §§goto(addr0060);
      }
   }
}

