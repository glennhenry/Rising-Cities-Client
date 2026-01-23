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
   
   public class GridSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function GridSkin()
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
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr003f:
                     §§push(null);
                     if(_loc4_)
                     {
                        addr0046:
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              addr0060:
                              §§pop().§§slot[5] = null;
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          addr008c:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr009f:
                                             super();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._GridSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            addr00df:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  addr00f2:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr00fd:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr011a:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_GridSkinWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr013c:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return GridSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       addr015a:
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0185:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr01b4:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr01e3:
                                                                                                this.minWidth = 112;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr01ee:
                                                                                                   this.blendMode = "normal";
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      this.mxmlContent = [this._GridSkin_HGroup1_c()];
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr020b:
                                                                                                         this.currentState = "normal";
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr0217:
                                                                                                            this._GridSkin_Animate1_i();
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               this.addEventListener("creationComplete",this.___GridSkin_SparkSkin1_creationComplete);
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  addr0243:
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
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     addr0286:
                                                                                                                     i = 0;
                                                                                                                     addr0284:
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
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                           Binding(bindings[i]).execute();
                                                                                                                           if(!(_loc4_ || _loc3_))
                                                                                                                           {
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(uint(§§pop() + 1));
                                                                                                                              if(!(_loc4_ || _loc1_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                              {
                                                                                                                                 var _temp_25:* = §§pop();
                                                                                                                                 §§pop().§§slot[4] = _temp_25;
                                                                                                                                 if(_loc4_ || _loc2_)
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
                                                                                                               addr0304:
                                                                                                            }
                                                                                                            §§goto(addr0243);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0284);
                                                                                                }
                                                                                                §§goto(addr0217);
                                                                                             }
                                                                                             §§goto(addr0284);
                                                                                          }
                                                                                          §§goto(addr0304);
                                                                                       }
                                                                                       §§goto(addr01e3);
                                                                                    }
                                                                                    §§goto(addr0304);
                                                                                 }
                                                                                 §§goto(addr0286);
                                                                              }
                                                                              §§goto(addr0185);
                                                                           }
                                                                           §§goto(addr0286);
                                                                        }
                                                                        §§goto(addr0185);
                                                                     }
                                                                     §§goto(addr015a);
                                                                  }
                                                                  §§goto(addr0243);
                                                               }
                                                               §§goto(addr013c);
                                                            }
                                                            §§goto(addr0284);
                                                         }
                                                         §§goto(addr011a);
                                                      }
                                                      §§goto(addr0185);
                                                   }
                                                   §§goto(addr00df);
                                                }
                                                §§goto(addr01ee);
                                             }
                                             §§goto(addr00fd);
                                          }
                                          §§goto(addr0217);
                                       }
                                       §§goto(addr020b);
                                    }
                                    §§goto(addr01b4);
                                 }
                                 §§goto(addr008c);
                              }
                              §§goto(addr01ee);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr011a);
               }
               §§goto(addr01b4);
            }
            §§goto(addr0046);
         }
         §§goto(addr003f);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            GridSkin._watcherSetupUtil = param1;
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
            if(!(_loc2_ && _loc2_))
            {
               addr0041:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0041);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      public function scrollToPosition(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Number = Number(this.dataGroup.layout.getHorizontalScrollPositionDelta(param1));
         if(!_loc3_)
         {
            §§push(_loc2_ == 0);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && Boolean(param1)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr005c:
                        §§pop();
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr0095);
                     }
                  }
                  addr007e:
                  if(!this.scrollAnimation.isPlaying)
                  {
                     if(_loc4_)
                     {
                        this.motionPath.valueBy = _loc2_;
                        if(!_loc3_)
                        {
                           addr0095:
                           this.scrollAnimation.play();
                        }
                     }
                  }
                  §§goto(addr009d);
               }
            }
            §§goto(addr005c);
         }
         addr009d:
      }
      
      private function scrollAnimation_effectStart() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.dataGroup.mouseChildren = false;
         }
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.dataGroup.mouseChildren = true;
            if(!_loc2_)
            {
               addr0022:
               this.checkScroll();
            }
            return;
         }
         §§goto(addr0022);
      }
      
      private function creationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(!_loc1_)
            {
               addr0033:
               this.scrollToPosition(NavigationUnit.HOME);
               if(!(_loc1_ && _loc1_))
               {
                  this.checkScroll();
               }
            }
            return;
         }
         §§goto(addr0033);
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Vector.<int> = this.dataGroup.getItemIndicesInView();
         var _loc3_:Object = this.dataGroup.getElementAt(0);
         var _loc4_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(!_loc7_)
         {
            if(this.dataGroup.numElements > 10)
            {
               if(_loc6_ || Boolean(param1))
               {
                  if(_loc3_)
                  {
                     if(!_loc7_)
                     {
                        addr006d:
                        §§push(this.scrollLeftButton);
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           §§push(!this.dataGroup.scrollRect.containsRect(_loc3_.getBounds(this.dataGroup)));
                           if(!(_loc7_ && Boolean(this)))
                           {
                              §§pop().visible = §§pop();
                              if(_loc6_)
                              {
                                 addr00b8:
                                 if(_loc4_)
                                 {
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       §§push(this.scrollRightButton);
                                       if(_loc6_ || Boolean(param1))
                                       {
                                          §§push(!this.dataGroup.scrollRect.containsRect(_loc4_.getBounds(this.dataGroup)));
                                          if(!_loc7_)
                                          {
                                             §§pop().visible = §§pop();
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr011e:
                                             §§pop().visible = §§pop();
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                             }
                                          }
                                          §§goto(addr0146);
                                       }
                                       else
                                       {
                                          addr011d:
                                          §§push(true);
                                       }
                                       §§goto(addr011e);
                                    }
                                    §§goto(addr0146);
                                 }
                                 else
                                 {
                                    §§push(this.scrollRightButton);
                                 }
                                 §§goto(addr011d);
                              }
                           }
                           else
                           {
                              addr0144:
                              §§pop().visible = §§pop();
                           }
                           §§goto(addr0146);
                        }
                        else
                        {
                           addr0136:
                           §§push(this.scrollRightButton.visible = false);
                        }
                        §§goto(addr0144);
                     }
                     §§goto(addr0146);
                  }
                  §§goto(addr00b8);
               }
               addr0146:
               return;
            }
            §§push(this.scrollLeftButton);
            §§goto(addr0136);
         }
         §§goto(addr006d);
      }
      
      private function _GridSkin_Animate1_i() : Animate
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Animate = new Animate();
         if(_loc2_)
         {
            _loc1_.duration = 500;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr0035);
            }
            §§goto(addr006e);
         }
         addr0035:
         §§push(_loc1_);
         var _temp_2:* = new <MotionPath>[this._GridSkin_SimpleMotionPath1_i()];
         §§pop().motionPaths = new <MotionPath>[this._GridSkin_SimpleMotionPath1_i()];
         if(_loc2_ || Boolean(this))
         {
            addr006e:
            _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr00ab);
               }
               §§goto(addr00b5);
            }
            addr00ab:
            this.scrollAnimation = _loc1_;
            if(_loc2_)
            {
               addr00b5:
               BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
            }
            §§goto(addr00c2);
         }
         addr00c2:
         return _loc1_;
      }
      
      private function _GridSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(_loc2_)
            {
               this.motionPath = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr004b:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
            }
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.scrollAnimation_effectStart();
         }
      }
      
      public function __scrollAnimation_effectEnd(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.scrollAnimation_effectEnd();
         }
      }
      
      private function _GridSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc3_))
               {
                  addr004b:
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0097);
               }
               addr005d:
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._GridSkin_VGroup1_c(),this._GridSkin_DataGroup1_i(),this._GridSkin_VGroup2_c()];
                  if(_loc3_ || _loc2_)
                  {
                     addr0097:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00a3:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00a3);
               }
               addr00a7:
               return _loc1_;
            }
            §§goto(addr0097);
         }
         §§goto(addr004b);
      }
      
      private function _GridSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     _loc1_.width = 41;
                     if(!_loc3_)
                     {
                        addr006a:
                        _loc1_.left = -5;
                        if(!_loc3_)
                        {
                           addr0074:
                           _loc1_.mxmlContent = [this._GridSkin_DynamicImageButton1_i()];
                           if(_loc2_)
                           {
                              addr0084:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr0090:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr0094);
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr006a);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _GridSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "listLeft";
            if(_loc2_)
            {
               _loc1_.addEventListener("click",this.__scrollLeftButton_click);
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "scrollLeftButton";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0060:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0091:
                              this.scrollLeftButton = _loc1_;
                              if(_loc2_)
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0080);
            }
            §§goto(addr0060);
         }
         addr00a8:
         return _loc1_;
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _GridSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.layout = this._GridSkin_TileLayout1_c();
                     if(!_loc2_)
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.id = "dataGroup";
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr009a:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr00cc:
                                       this.dataGroup = _loc1_;
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00de:
                                          BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                       }
                                    }
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00cc);
                           }
                           addr00eb:
                           return _loc1_;
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr00de);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr00cc);
            }
            §§goto(addr0052);
         }
         §§goto(addr009a);
      }
      
      private function _GridSkin_TileLayout1_c() : TileLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TileLayout = new TileLayout();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.useVirtualLayout = false;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.verticalGap = 8;
               if(!_loc2_)
               {
                  _loc1_.horizontalGap = 8;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.requestedRowCount = 2;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.columnWidth = 120;
                        addr007a:
                        if(!_loc2_)
                        {
                           addr0092:
                           _loc1_.orientation = "columns";
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.rowHeight = 150;
                              if(!_loc2_)
                              {
                                 addr00b2:
                                 _loc1_.clipAndEnableScrolling = true;
                              }
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00b2);
                     }
                     addr00b7:
                     return _loc1_;
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0092);
            }
         }
         §§goto(addr00b2);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.checkScroll();
         }
      }
      
      private function _GridSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 41;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     addr005c:
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._GridSkin_DynamicImageButton2_i()];
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a7:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr00a7);
                  }
                  addr00ab:
                  return _loc1_;
               }
            }
         }
         §§goto(addr005c);
      }
      
      private function _GridSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "listRight";
            if(_loc2_)
            {
               _loc1_.addEventListener("click",this.__scrollRightButton_click);
               if(!_loc3_)
               {
                  _loc1_.id = "scrollRightButton";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0085:
                              this.scrollRightButton = _loc1_;
                              if(_loc2_)
                              {
                                 addr008f:
                                 BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr008f);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0085);
                  }
               }
            }
            §§goto(addr008f);
         }
         addr009c:
         return _loc1_;
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
         }
      }
      
      public function ___GridSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationComplete();
         }
      }
      
      private function _GridSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_ || _loc1_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipScrollLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"scrollLeftButton.toolTip");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr009b);
               }
               addr0094:
               §§push(§§pop().§§slot[1]);
               if(!_loc2_)
               {
                  addr009d:
                  §§pop()[1] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("tooltipScrollRight");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"scrollRightButton.toolTip");
                  addr00b0:
                  addr00ae:
                  §§push(result);
                  addr009b:
               }
               return §§pop();
            }
            §§goto(addr00ae);
         }
         §§goto(addr00b0);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0048:
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007e);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr007e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr008d);
            }
            addr008d:
            return;
         }
         §§goto(addr0048);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._721040133motionPath = param1;
                  if(!_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0053);
            }
         }
         addr0072:
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
                  if(!_loc4_)
                  {
                     addr003f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005d);
               }
               §§goto(addr003f);
            }
            addr005d:
            return;
         }
         §§goto(addr004e);
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
               if(!(_loc3_ && _loc3_))
               {
                  this._75450170scrollLeftButton = param1;
                  addr0046:
                  if(_loc4_ || _loc3_)
                  {
                     addr0063:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0063);
            }
            addr0082:
            return;
         }
         §§goto(addr0046);
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr003e:
                  this._1993162593scrollRightButton = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr003e);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
         }
         addr007b:
      }
   }
}

