package net.bigpoint.cityrama.view.miniLayer.components.skins
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
   
   public class CitySquareDepositSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      public static const LOCKED:String = "Locked";
      
      public static const UNLOCKED:String = "UnLocked";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || CitySquareDepositSkin)
      {
         LOCKED = "Locked";
         if(!(_loc2_ && CitySquareDepositSkin))
         {
            UNLOCKED = "UnLocked";
         }
      }
      
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
      
      public function CitySquareDepositSkin()
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
            if(_loc4_ || Boolean(this))
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        addr0050:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              addr0063:
                              §§pop().§§slot[5] = null;
                              addr0062:
                              if(_loc4_ || _loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr0089:
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc1_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             super();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      addr00ee:
                                                      §§pop().§§slot[1] = this._CitySquareDepositSkin_bindingsSetup();
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               addr011a:
                                                               §§push(§§newactivation());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr012a:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              addr015b:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_components_skins_CitySquareDepositSkinWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    addr0189:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_ || _loc1_)
                                                                                    {
                                                                                       addr01a8:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return CitySquareDepositSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01c6:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr01f5:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr0224:
                                                                                                this.mxmlContent = [this._CitySquareDepositSkin_HGroup1_c()];
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   addr023c:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      this._CitySquareDepositSkin_Animate1_i();
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr0254:
                                                                                                         this.addEventListener("creationComplete",this.___CitySquareDepositSkin_SparkSkin1_creationComplete);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr0266:
                                                                                                            states = [new State({
                                                                                                               "name":"normal",
                                                                                                               "overrides":[]
                                                                                                            }),new State({
                                                                                                               "name":"disabled",
                                                                                                               "overrides":[]
                                                                                                            })];
                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr029d:
                                                                                                               i = 0;
                                                                                                               addr029b:
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
                                                                                                                        if(!(_loc4_ || _loc2_))
                                                                                                                        {
                                                                                                                           break loop1;
                                                                                                                        }
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[4]);
                                                                                                                           if(_loc3_ && _loc1_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(uint(§§pop() + 1));
                                                                                                                           if(_loc3_ && _loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              var _temp_29:* = §§pop();
                                                                                                                              §§pop().§§slot[4] = _temp_29;
                                                                                                                              if(_loc4_)
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
                                                                                                            addr0309:
                                                                                                         }
                                                                                                         §§goto(addr029b);
                                                                                                      }
                                                                                                      §§goto(addr0266);
                                                                                                   }
                                                                                                   §§goto(addr029b);
                                                                                                }
                                                                                                §§goto(addr0254);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0266);
                                                                                       }
                                                                                       §§goto(addr0224);
                                                                                    }
                                                                                    §§goto(addr029b);
                                                                                 }
                                                                                 §§goto(addr029d);
                                                                              }
                                                                              §§goto(addr01c6);
                                                                           }
                                                                           §§goto(addr029d);
                                                                        }
                                                                        §§goto(addr0224);
                                                                     }
                                                                     §§goto(addr01a8);
                                                                  }
                                                                  §§goto(addr01f5);
                                                               }
                                                               §§goto(addr015b);
                                                            }
                                                            §§goto(addr0309);
                                                         }
                                                         §§goto(addr0189);
                                                      }
                                                      §§goto(addr0309);
                                                   }
                                                   §§goto(addr012a);
                                                }
                                                §§goto(addr01a8);
                                             }
                                             §§goto(addr011a);
                                          }
                                          §§goto(addr0254);
                                       }
                                       §§goto(addr01f5);
                                    }
                                    §§goto(addr0266);
                                 }
                                 §§goto(addr0224);
                              }
                              §§goto(addr0254);
                           }
                           §§goto(addr00ee);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr015b);
               }
               §§goto(addr023c);
            }
            §§goto(addr0050);
         }
         §§goto(addr0062);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            CitySquareDepositSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0053);
            }
            addr0040:
            return;
         }
         addr0053:
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
      
      private function scrollAnimation_effectStart() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            dispatchEvent(new Event(LOCKED,true));
            if(_loc1_ || _loc2_)
            {
               addr003a:
               this.dataGroup.mouseChildren = false;
            }
            return;
         }
         §§goto(addr003a);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super.updateDisplayList(param1,param2);
            if(_loc3_)
            {
               if(this._scrollPosDirty)
               {
                  if(!(_loc4_ && Boolean(param2)))
                  {
                     this._scrollPosDirty = false;
                     if(_loc3_ || Boolean(param2))
                     {
                        dispatchEvent(new Event(UNLOCKED,true));
                        if(!_loc4_)
                        {
                           §§goto(addr0080);
                        }
                        §§goto(addr0092);
                     }
                  }
                  addr0080:
                  this.checkScroll();
                  if(_loc3_ || Boolean(this))
                  {
                     addr0092:
                     this.dataGroup.mouseChildren = true;
                  }
                  §§goto(addr009a);
               }
               addr009a:
               return;
            }
         }
         §§goto(addr0080);
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._scrollPosDirty = true;
            if(!_loc1_)
            {
               addr0020:
               invalidateDisplayList();
            }
            return;
         }
         §§goto(addr0020);
      }
      
      private function scrollToPosition(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Number = Number(this.dataGroup.layout.getHorizontalScrollPositionDelta(param1));
         if(!_loc3_)
         {
            §§push(_loc2_ == 0);
            if(_loc4_ || _loc3_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0060:
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr006a);
                     }
                  }
                  §§goto(addr0079);
               }
               addr006a:
               §§pop();
               if(_loc4_)
               {
                  addr0079:
                  addr0071:
                  if(!this.scrollAnimation.isPlaying)
                  {
                     if(!_loc3_)
                     {
                        this.motionPath.valueBy = _loc2_;
                        if(_loc4_)
                        {
                           this.scrollAnimation.play();
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0060);
         }
         §§goto(addr0071);
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
         if(_loc6_ || Boolean(_loc1_))
         {
            if(this.dataGroup.numElements > 1)
            {
               if(_loc6_ || Boolean(_loc2_))
               {
                  addr0069:
                  if(_loc1_)
                  {
                     if(_loc6_)
                     {
                        _loc3_ = this.dataGroup.scrollRect;
                        _loc4_ = _loc1_.getBounds(this.dataGroup);
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           this.scrollLeftButton.visible = !_loc3_.containsRect(_loc4_);
                        }
                        addr00b6:
                        if(_loc2_)
                        {
                           if(!(_loc7_ && Boolean(this)))
                           {
                              addr00c9:
                              §§push(this.scrollRightButton);
                              if(!_loc7_)
                              {
                                 §§push(!this.dataGroup.scrollRect.containsRect(_loc2_.getBounds(this.dataGroup)));
                                 if(_loc6_ || Boolean(_loc1_))
                                 {
                                    §§pop().visible = §§pop();
                                    if(_loc7_ && Boolean(_loc1_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr011c:
                                    §§pop().visible = §§pop();
                                    if(_loc7_)
                                    {
                                    }
                                 }
                                 §§goto(addr013c);
                              }
                              else
                              {
                                 addr011b:
                                 §§push(true);
                              }
                              §§goto(addr011c);
                           }
                           §§goto(addr013c);
                        }
                        else
                        {
                           §§push(this.scrollRightButton);
                        }
                        §§goto(addr011b);
                     }
                     §§goto(addr013c);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00c9);
            }
            else
            {
               this.scrollLeftButton.visible = this.scrollRightButton.visible = false;
            }
            addr013c:
            return;
         }
         §§goto(addr0069);
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(!(_loc2_ && _loc2_))
            {
               this.scrollToPosition(NavigationUnit.HOME);
               if(!_loc2_)
               {
                  addr004f:
                  this.checkScroll();
               }
               return;
            }
         }
         §§goto(addr004f);
      }
      
      private function _CitySquareDepositSkin_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(_loc3_)
         {
            _loc1_.duration = 500;
            if(_loc3_)
            {
               _loc1_.motionPaths = new <MotionPath>[this._CitySquareDepositSkin_SimpleMotionPath1_i()];
               addr0030:
               if(!_loc2_)
               {
                  _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
                     if(!_loc2_)
                     {
                        this.scrollAnimation = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           addr00a0:
                           BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00a0);
                  }
                  addr00ad:
                  return _loc1_;
               }
            }
            §§goto(addr00a0);
         }
         §§goto(addr0030);
      }
      
      private function _CitySquareDepositSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(!_loc3_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(!_loc3_)
            {
               this.motionPath = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr004e:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
               §§goto(addr005b);
            }
            §§goto(addr004e);
         }
         addr005b:
         return _loc1_;
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.scrollAnimation_effectStart();
         }
      }
      
      public function __scrollAnimation_effectEnd(param1:EffectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.scrollAnimation_effectEnd();
         }
      }
      
      private function _CitySquareDepositSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0047);
               }
               §§goto(addr008c);
            }
            addr0047:
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._CitySquareDepositSkin_VGroup1_c(),this._CitySquareDepositSkin_DataGroup1_i(),this._CitySquareDepositSkin_VGroup2_c()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr008c:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            §§goto(addr0090);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _CitySquareDepositSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.width = 41;
                  if(!_loc2_)
                  {
                     _loc1_.left = -5;
                     if(!_loc2_)
                     {
                        addr0070:
                        _loc1_.mxmlContent = [this._CitySquareDepositSkin_DynamicImageButton1_i()];
                        if(_loc3_)
                        {
                           §§goto(addr0080);
                        }
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr008c);
         }
         addr0080:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr008c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareDepositSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.styleName = "listLeft";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.__scrollLeftButton_click);
               if(!_loc2_)
               {
                  §§goto(addr004d);
               }
            }
            §§goto(addr0058);
         }
         addr004d:
         _loc1_.id = "scrollLeftButton";
         if(!_loc2_)
         {
            addr0058:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0094);
            }
            addr0082:
            this.scrollLeftButton = _loc1_;
            if(_loc3_ || _loc3_)
            {
               addr0094:
               BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
            }
            §§goto(addr00a1);
         }
         addr00a1:
         return _loc1_;
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _CitySquareDepositSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc2_)
         {
            _loc1_.width = 320;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.focusEnabled = false;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.layout = this._CitySquareDepositSkin_HorizontalLayout1_c();
                     if(!_loc2_)
                     {
                        addr006c:
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.id = "dataGroup";
                           if(_loc3_)
                           {
                              addr008f:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00b8:
                                       this.dataGroup = _loc1_;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00ca:
                                          BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                       }
                                    }
                                 }
                                 §§goto(addr00d7);
                              }
                              §§goto(addr00b8);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00b8);
            }
            §§goto(addr006c);
         }
         addr00d7:
         return _loc1_;
      }
      
      private function _CitySquareDepositSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.useVirtualLayout = true;
            if(_loc2_)
            {
               §§goto(addr0041);
            }
            §§goto(addr005e);
         }
         addr0041:
         _loc1_.gap = 10;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr005e:
            _loc1_.columnWidth = 320;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  addr007d:
                  _loc1_.clipAndEnableScrolling = true;
               }
               §§goto(addr0082);
            }
            §§goto(addr007d);
         }
         addr0082:
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.checkScroll();
         }
      }
      
      private function _CitySquareDepositSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 41;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._CitySquareDepositSkin_DynamicImageButton2_i()];
                     if(_loc2_ || _loc2_)
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr008a);
            }
            §§goto(addr007e);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _CitySquareDepositSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "listRight";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.addEventListener("click",this.__scrollRightButton_click);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "scrollRightButton";
                  if(_loc3_)
                  {
                     addr006a:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0089:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr009a:
                              this.scrollRightButton = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00a4:
                                 BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr009a);
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr0089);
            }
            §§goto(addr006a);
         }
         §§goto(addr00a4);
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
      
      public function ___CitySquareDepositSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.onCreationComplete(param1);
         }
      }
      
      private function _CitySquareDepositSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipScrollLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"scrollLeftButton.toolTip");
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              §§goto(addr007a);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0089);
               }
               addr007a:
               §§push(§§pop().§§slot[1]);
               if(_loc2_ || _loc3_)
               {
                  addr008b:
                  §§pop()[1] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("tooltipScrollRight");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"scrollRightButton.toolTip");
                  addr009e:
                  addr009c:
                  §§push(result);
                  addr0089:
               }
               return §§pop();
            }
            §§goto(addr009c);
         }
         §§goto(addr009e);
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
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
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._599151817scrollAnimation = param1;
                  addr003e:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003e);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._75450170scrollLeftButton = param1;
                  addr003e:
                  if(!_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006e);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRightButton() : DynamicImageButton
      {
         return this._1993162593scrollRightButton;
      }
      
      public function set scrollRightButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1993162593scrollRightButton;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1993162593scrollRightButton = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0063);
            }
         }
         addr0072:
      }
   }
}

