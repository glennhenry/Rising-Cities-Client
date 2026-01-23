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
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.DataGrid;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.TileLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class GridSkinFriendBook4 extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _721040133motionPath:SimpleMotionPath;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DataGrid;
      
      public function GridSkinFriendBook4()
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
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§push(null);
                     if(_loc4_ || Boolean(this))
                     {
                        addr0045:
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0056:
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr005e:
                              §§pop().§§slot[5] = null;
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || _loc2_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             addr00a7:
                                             super();
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      addr00d9:
                                                      §§pop().§§slot[1] = this._GridSkinFriendBook4_bindingsSetup();
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            addr0100:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr014c:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_GridSkinFriendBook4WatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0167:
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    addr0176:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       addr01a2:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return GridSkinFriendBook4[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01ee:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0214:
                                                                                                this.minWidth = 110;
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   addr0228:
                                                                                                   this.maxWidth = 132;
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0235:
                                                                                                      this.blendMode = "normal";
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr0249:
                                                                                                         this.mxmlContent = [this._GridSkinFriendBook4_HGroup1_c()];
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            addr0261:
                                                                                                            this.currentState = "normal";
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               addr0275:
                                                                                                               this._GridSkinFriendBook4_Animate1_i();
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  addr0288:
                                                                                                                  this.addEventListener("creationComplete",this.___GridSkinFriendBook4_SparkSkin1_creationComplete);
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr02a2:
                                                                                                                     states = [new State({
                                                                                                                        "name":"normal",
                                                                                                                        "overrides":[]
                                                                                                                     }),new State({
                                                                                                                        "name":"disabled",
                                                                                                                        "overrides":[new SetProperty().initializeFromObject({
                                                                                                                           "name":"alpha",
                                                                                                                           "value":0.5
                                                                                                                        })]
                                                                                                                     })];
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr02ee:
                                                                                                                        i = 0;
                                                                                                                        addr02ec:
                                                                                                                     }
                                                                                                                     var _temp_25:*;
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
                                                                                                                                 if(_loc3_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[4]);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(uint(§§pop() + 1));
                                                                                                                                       if(!(_loc4_ || _loc2_))
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
                                                                                                                     while(var _temp_25:* = §§pop(), §§pop().§§slot[4] = _temp_25, !(_loc3_ && Boolean(this)));
                                                                                                                     
                                                                                                                     return;
                                                                                                                     addr035b:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr02ec);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr035b);
                                                                                                      }
                                                                                                      §§goto(addr0275);
                                                                                                   }
                                                                                                   §§goto(addr0249);
                                                                                                }
                                                                                                §§goto(addr0235);
                                                                                             }
                                                                                             §§goto(addr02a2);
                                                                                          }
                                                                                          §§goto(addr0288);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0261);
                                                                                 }
                                                                                 §§goto(addr02ee);
                                                                              }
                                                                              §§goto(addr0249);
                                                                           }
                                                                           §§goto(addr02ee);
                                                                        }
                                                                     }
                                                                     §§goto(addr01a2);
                                                                  }
                                                                  §§goto(addr0167);
                                                               }
                                                               §§goto(addr0176);
                                                            }
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr0176);
                                                      }
                                                      §§goto(addr01a2);
                                                   }
                                                   §§goto(addr0100);
                                                }
                                                §§goto(addr02a2);
                                             }
                                             §§goto(addr0228);
                                          }
                                          §§goto(addr01ee);
                                       }
                                       §§goto(addr0288);
                                    }
                                    §§goto(addr014c);
                                 }
                                 §§goto(addr0214);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr02ec);
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr02ee);
               }
               §§goto(addr0056);
            }
            §§goto(addr0045);
         }
         §§goto(addr00d9);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            GridSkinFriendBook4._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0045);
                  }
               }
               else
               {
                  addr004b:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr004b);
         }
         addr0045:
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
      
      public function scrollToPosition(param1:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Number = Number(this.dataGroup.layout.getHorizontalScrollPositionDelta(param1));
         if(!_loc4_)
         {
            §§push(_loc2_ == 0);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  if(_temp_1)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr0058:
                        §§pop();
                        if(!_loc4_)
                        {
                           §§goto(addr0073);
                        }
                        §§goto(addr0084);
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0058);
            }
            addr0073:
            if(!this.scrollAnimation.isPlaying)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0084:
                  this.motionPath.valueBy = _loc2_;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0099:
                     this.scrollAnimation.play();
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0099);
            }
            §§goto(addr00a1);
         }
         addr00a1:
      }
      
      private function scrollAnimation_effectStart() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.dataGroup.mouseChildren = false;
         }
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.dataGroup.mouseChildren = true;
            if(!(_loc1_ && _loc1_))
            {
               this.checkScroll();
            }
         }
      }
      
      private function creationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(!(_loc1_ && Boolean(this)))
            {
               this.scrollToPosition(NavigationUnit.HOME);
               if(!(_loc1_ && Boolean(this)))
               {
                  this.checkScroll();
               }
            }
         }
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:Rectangle = null;
         var _loc6_:Rectangle = null;
         var _loc2_:Vector.<int> = this.dataGroup.getItemIndicesInView();
         var _loc3_:Object = this.dataGroup.getElementAt(0);
         var _loc4_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(!(_loc8_ && Boolean(param1)))
         {
            if(this.dataGroup.numElements > 10)
            {
               if(!_loc8_)
               {
                  if(_loc3_)
                  {
                     if(_loc9_)
                     {
                        _loc5_ = this.dataGroup.scrollRect;
                        _loc6_ = _loc3_.getBounds(this.dataGroup);
                        if(!(_loc8_ && Boolean(_loc3_)))
                        {
                           this.scrollLeftButton.visible = !this.dataGroup.scrollRect.containsRect(_loc3_.getBounds(this.dataGroup));
                        }
                        addr00cb:
                        if(_loc4_)
                        {
                           if(_loc9_)
                           {
                              addr00d7:
                              §§push(this.scrollRightButton);
                              if(_loc9_ || Boolean(this))
                              {
                                 §§push(!this.dataGroup.scrollRect.containsRect(_loc4_.getBounds(this.dataGroup)));
                                 if(_loc9_ || Boolean(this))
                                 {
                                    §§pop().visible = §§pop();
                                    if(_loc9_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr012c:
                                    §§pop().visible = §§pop();
                                    if(_loc9_)
                                    {
                                    }
                                 }
                                 §§goto(addr014c);
                              }
                              else
                              {
                                 addr012b:
                                 §§push(true);
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr014c);
                        }
                        else
                        {
                           §§push(this.scrollRightButton);
                        }
                        §§goto(addr012b);
                     }
                     §§goto(addr014c);
                  }
                  §§goto(addr00cb);
               }
            }
            else
            {
               this.scrollLeftButton.visible = this.scrollRightButton.visible = false;
            }
            addr014c:
            return;
         }
         §§goto(addr00d7);
      }
      
      private function _GridSkinFriendBook4_Animate1_i() : Animate
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Animate = new Animate();
         if(!_loc3_)
         {
            _loc1_.duration = 500;
            if(_loc2_)
            {
               §§push(_loc1_);
               var _temp_1:* = new <MotionPath>[this._GridSkinFriendBook4_SimpleMotionPath1_i()];
               §§pop().motionPaths = new <MotionPath>[this._GridSkinFriendBook4_SimpleMotionPath1_i()];
               if(_loc2_)
               {
                  _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
                     if(!_loc3_)
                     {
                        §§goto(addr0095);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr00a7);
            }
         }
         addr0095:
         this.scrollAnimation = _loc1_;
         if(!(_loc3_ && _loc2_))
         {
            addr00a7:
            BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
         }
         return _loc1_;
      }
      
      private function _GridSkinFriendBook4_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_ || _loc2_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(_loc2_)
            {
               §§goto(addr0041);
            }
            §§goto(addr004b);
         }
         addr0041:
         this.motionPath = _loc1_;
         if(!_loc3_)
         {
            addr004b:
            BindingManager.executeBindings(this,"motionPath",this.motionPath);
         }
         return _loc1_;
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
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
      
      private function _GridSkinFriendBook4_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = -2;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc2_)
                     {
                        addr0065:
                        _loc1_.percentHeight = 100;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._GridSkinFriendBook4_VGroup1_c(),this._GridSkinFriendBook4_DataGroup1_i(),this._GridSkinFriendBook4_VGroup2_c()];
                           §§goto(addr006f);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0065);
               }
            }
            addr006f:
            if(!_loc2_)
            {
               addr0095:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr00a9:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00ad);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _GridSkinFriendBook4_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "right";
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr005c:
                     _loc1_.width = 41;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.left = -5;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.mxmlContent = [this._GridSkinFriendBook4_DynamicImageButton1_i()];
                           if(_loc2_ || Boolean(this))
                           {
                              addr00a3:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00a3);
                  }
               }
               §§goto(addr00af);
            }
            §§goto(addr005c);
         }
         §§goto(addr00af);
      }
      
      private function _GridSkinFriendBook4_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.styleName = "listLeft";
            if(_loc3_ || _loc3_)
            {
               _loc1_.addEventListener("click",this.__scrollLeftButton_click);
               addr0033:
               if(!_loc2_)
               {
                  _loc1_.id = "scrollLeftButton";
                  if(!_loc2_)
                  {
                     addr005a:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0066:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0082);
                           }
                           §§goto(addr0094);
                        }
                     }
                     addr0082:
                     this.scrollLeftButton = _loc1_;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0094:
                        BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
                     }
                     §§goto(addr00a1);
                  }
                  addr00a1:
                  return _loc1_;
               }
               §§goto(addr0066);
            }
            §§goto(addr005a);
         }
         §§goto(addr0033);
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _GridSkinFriendBook4_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.focusEnabled = false;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.layout = this._GridSkinFriendBook4_TileLayout1_c();
                     if(!_loc3_)
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr00be);
                     }
                  }
                  addr0083:
                  _loc1_.id = "dataGroup";
                  if(_loc2_ || _loc2_)
                  {
                     addr0096:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr00ad);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00be);
                  }
                  addr00ad:
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(this))
                  {
                     addr00be:
                     this.dataGroup = _loc1_;
                     if(_loc2_)
                     {
                        addr00c8:
                        BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                     }
                  }
                  §§goto(addr00d5);
               }
               §§goto(addr00be);
            }
            addr00d5:
            return _loc1_;
         }
         §§goto(addr0096);
      }
      
      private function _GridSkinFriendBook4_TileLayout1_c() : TileLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TileLayout = new TileLayout();
         if(_loc2_)
         {
            _loc1_.useVirtualLayout = false;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalGap = 8;
               if(_loc2_)
               {
                  _loc1_.horizontalGap = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0095);
            }
            §§goto(addr0089);
         }
         addr0056:
         _loc1_.requestedRowCount = 2;
         if(_loc2_ || Boolean(this))
         {
            _loc1_.requestedColumnCount = 4;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0089:
               _loc1_.columnWidth = 132;
               if(!_loc3_)
               {
                  addr0095:
                  _loc1_.orientation = "columns";
                  if(!_loc3_)
                  {
                     addr00a1:
                     _loc1_.rowHeight = 160;
                     if(!_loc3_)
                     {
                        addr00ad:
                        _loc1_.clipAndEnableScrolling = true;
                     }
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00ad);
            }
         }
         addr00b2:
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.checkScroll();
         }
      }
      
      private function _GridSkinFriendBook4_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               _loc1_.width = 41;
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0051:
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._GridSkinFriendBook4_DynamicImageButton2_i()];
                        §§goto(addr0064);
                     }
                     §§goto(addr009e);
                  }
                  addr0064:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr009e:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00a2);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0064);
         }
         §§goto(addr0051);
      }
      
      private function _GridSkinFriendBook4_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.styleName = "listRight";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.addEventListener("click",this.__scrollRightButton_click);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0056:
                  _loc1_.id = "scrollRightButton";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0069:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr008a);
                        }
                     }
                     §§goto(addr0093);
                  }
                  addr008a:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr0093:
                     this.scrollRightButton = _loc1_;
                     if(_loc3_)
                     {
                        BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
                     }
                  }
                  §§goto(addr00aa);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr0056);
         }
         §§goto(addr0069);
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
         }
      }
      
      public function ___GridSkinFriendBook4_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationComplete();
         }
      }
      
      private function _GridSkinFriendBook4_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || Boolean(this))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipScrollLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"scrollLeftButton.toolTip");
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§goto(addr00bb);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr00a6);
                  }
                  addr00bb:
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr00a6:
                     §§pop()[1] = new Binding(this,function():String
                     {
                        var _loc1_:* = getStyle("tooltipScrollRight");
                        return _loc1_ == undefined ? null : String(_loc1_);
                     },null,"scrollRightButton.toolTip");
                     addr00b9:
                     addr00b7:
                     return result;
                  }
               }
               §§goto(addr00b9);
            }
            §§goto(addr00b7);
         }
         §§goto(addr00b9);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._385593099dataGroup = param1;
                  addr0041:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get motionPath() : SimpleMotionPath
      {
         return this._721040133motionPath;
      }
      
      public function set motionPath(param1:SimpleMotionPath) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._721040133motionPath;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._721040133motionPath = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
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
                  if(_loc3_)
                  {
                     addr0040:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0040);
            }
         }
         addr005e:
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeftButton() : DynamicImageButton
      {
         return this._75450170scrollLeftButton;
      }
      
      public function set scrollLeftButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._75450170scrollLeftButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._75450170scrollLeftButton = param1;
                  addr003f:
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0058);
            }
            addr007e:
            return;
         }
         §§goto(addr003f);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1993162593scrollRightButton = param1;
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0055);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DataGrid
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DataGrid) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr0053);
      }
   }
}

