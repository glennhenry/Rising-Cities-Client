package net.bigpoint.cityrama.view.architectBook.ui.skins
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
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ArchitectNeedsSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _1632457241leftButton:DynamicImageButton;
      
      private var _721040133motionPath:SimpleMotionPath;
      
      private var _896282514rightButton:DynamicImageButton;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _929968389theLayout:HorizontalLayout;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function ArchitectNeedsSkin()
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
            if(!(_loc4_ && _loc3_))
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     §§push(null);
                     if(_loc3_ || _loc1_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0066:
                              §§pop().§§slot[5] = null;
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       addr008f:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_ || _loc1_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      §§pop().§§slot[1] = this._ArchitectNeedsSkin_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         addr00f7:
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               addr010b:
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0125:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           addr013b:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr014a:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_skins_ArchitectNeedsSkinWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr0171:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr0187:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ArchitectNeedsSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_ || _loc1_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr01f8:
                                                                                                this.minWidth = 112;
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0204:
                                                                                                   this.blendMode = "normal";
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      this.mxmlContent = [this._ArchitectNeedsSkin_HGroup1_c()];
                                                                                                      if(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                         this.currentState = "normal";
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr023d:
                                                                                                            this._ArchitectNeedsSkin_Animate1_i();
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr0248:
                                                                                                               this.addEventListener("creationComplete",this.___ArchitectNeedsSkin_SparkSkin1_creationComplete);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr0259:
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
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr029c:
                                                                                                                     i = 0;
                                                                                                                     addr029a:
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
                                                                                                                           if(!(_loc3_ || Boolean(this)))
                                                                                                                           {
                                                                                                                              break loop2;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(uint(§§pop() + 1));
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 var _temp_20:* = §§pop();
                                                                                                                                 §§pop().§§slot[4] = _temp_20;
                                                                                                                                 if(_loc3_)
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
                                                                                                               addr02fe:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0259);
                                                                                                      }
                                                                                                      §§goto(addr023d);
                                                                                                   }
                                                                                                   §§goto(addr0248);
                                                                                                }
                                                                                                §§goto(addr023d);
                                                                                             }
                                                                                             §§goto(addr0259);
                                                                                          }
                                                                                          §§goto(addr029a);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr023d);
                                                                                 }
                                                                                 §§goto(addr029c);
                                                                              }
                                                                              §§goto(addr023d);
                                                                           }
                                                                           §§goto(addr0171);
                                                                        }
                                                                        §§goto(addr01f8);
                                                                     }
                                                                     §§goto(addr0187);
                                                                  }
                                                                  §§goto(addr01f8);
                                                               }
                                                               §§goto(addr029c);
                                                            }
                                                            §§goto(addr0204);
                                                         }
                                                         §§goto(addr014a);
                                                      }
                                                      §§goto(addr010b);
                                                   }
                                                   §§goto(addr014a);
                                                }
                                                §§goto(addr0259);
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr013b);
                                       }
                                       §§goto(addr0125);
                                    }
                                    §§goto(addr0187);
                                 }
                                 §§goto(addr0248);
                              }
                              §§goto(addr008f);
                           }
                           §§goto(addr029c);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr0171);
               }
               §§goto(addr02fe);
            }
            §§goto(addr0066);
         }
         §§goto(addr014a);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            ArchitectNeedsSkin._watcherSetupUtil = param1;
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
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0042);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr004e);
            }
            addr0042:
            return;
         }
         addr004e:
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
      
      public function scrollToPosition(param1:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Number = Number(this.dataGroup.layout.getHorizontalScrollPositionDelta(param1));
         if(!_loc4_)
         {
            §§push(_loc2_ == 0);
            if(!(_loc4_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc3_ || Boolean(this))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§goto(addr0069);
                     }
                  }
               }
               §§goto(addr008d);
            }
            addr0069:
            §§pop();
            if(!(_loc4_ && _loc3_))
            {
               addr008d:
               if(!this.scrollAnimation.isPlaying)
               {
                  if(!_loc4_)
                  {
                     this.motionPath.valueBy = _loc2_;
                     if(_loc3_)
                     {
                        this.scrollAnimation.play();
                     }
                  }
               }
            }
            §§goto(addr00ac);
         }
         addr00ac:
      }
      
      private function scrollAnimation_effectStart() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.dataGroup.mouseChildren = false;
         }
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.dataGroup.mouseChildren = true;
            if(_loc2_)
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
         if(_loc2_ || _loc2_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(_loc2_)
            {
               this.scrollToPosition(NavigationUnit.HOME);
               if(!_loc1_)
               {
                  this.checkScroll();
               }
            }
         }
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:Object = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Rectangle = null;
         var _loc2_:Vector.<int> = this.dataGroup.getItemIndicesInView();
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            if(_loc2_.length > 0)
            {
               if(!_loc7_)
               {
                  addr004e:
                  _loc3_ = this.dataGroup.getElementAt(_loc2_[0]);
                  _loc4_ = new Rectangle(0,0,_loc3_.width + this.theLayout.gap,_loc3_.height);
                  _loc5_ = new Rectangle(_loc4_.width * (this.dataGroup.numElements - 1) - this.theLayout.gap,0,_loc4_.width,_loc4_.height);
                  if(!_loc7_)
                  {
                     if(this.dataGroup.numElements > 3)
                     {
                        if(_loc8_ || Boolean(this))
                        {
                           §§push(this.leftButton);
                           if(_loc8_)
                           {
                              §§push(!this.dataGroup.scrollRect.containsRect(_loc4_));
                              if(!_loc7_)
                              {
                                 §§pop().visible = §§pop();
                                 if(_loc8_)
                                 {
                                    this.rightButton.visible = !this.dataGroup.scrollRect.containsRect(_loc5_);
                                    if(_loc8_ || Boolean(this))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 addr0141:
                                 §§pop().visible = §§pop();
                              }
                              §§goto(addr015b);
                           }
                           else
                           {
                              addr0133:
                              §§push(this.rightButton.visible = false);
                           }
                           §§goto(addr0141);
                        }
                        §§goto(addr015b);
                     }
                     else
                     {
                        §§push(this.leftButton);
                     }
                     §§goto(addr0133);
                  }
               }
            }
            else
            {
               this.leftButton.visible = this.rightButton.visible = false;
            }
            addr015b:
            return;
         }
         §§goto(addr004e);
      }
      
      private function _ArchitectNeedsSkin_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(_loc3_ || _loc2_)
         {
            _loc1_.duration = 500;
            if(!_loc2_)
            {
               _loc1_.motionPaths = new <MotionPath>[this._ArchitectNeedsSkin_SimpleMotionPath1_i()];
               if(_loc3_)
               {
                  §§goto(addr0067);
               }
               §§goto(addr008e);
            }
            addr0067:
            _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
            if(!(_loc2_ && _loc3_))
            {
               addr008e:
               _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
               if(_loc3_)
               {
                  §§goto(addr009e);
               }
               §§goto(addr00a8);
            }
            §§goto(addr009e);
         }
         addr009e:
         this.scrollAnimation = _loc1_;
         if(!_loc2_)
         {
            addr00a8:
            BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
         }
         return _loc1_;
      }
      
      private function _ArchitectNeedsSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_ || _loc3_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(_loc2_ || _loc3_)
            {
               this.motionPath = _loc1_;
               if(_loc2_)
               {
                  addr0055:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
               §§goto(addr0062);
            }
            §§goto(addr0055);
         }
         addr0062:
         return _loc1_;
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.scrollAnimation_effectStart();
         }
      }
      
      public function __scrollAnimation_effectEnd(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.scrollAnimation_effectEnd();
         }
      }
      
      private function _ArchitectNeedsSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 2;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr006b);
               }
            }
            addr0059:
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._ArchitectNeedsSkin_Group1_c(),this._ArchitectNeedsSkin_DataGroup1_i(),this._ArchitectNeedsSkin_Group2_c()];
               addr006b:
               if(!(_loc3_ && _loc2_))
               {
                  addr009b:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr009b);
      }
      
      private function _ArchitectNeedsSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 16;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectNeedsSkin_DynamicImageButton1_i()];
                  addr003c:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0074);
               }
            }
            addr0060:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0074:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _ArchitectNeedsSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.visible = false;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr0044:
                  _loc1_.verticalCenter = 2;
                  if(!_loc2_)
                  {
                     _loc1_.styleName = "architectNeedsButtonLeft";
                     if(_loc3_)
                     {
                        addr0065:
                        _loc1_.addEventListener("click",this.__leftButton_click);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.id = "leftButton";
                           if(_loc3_)
                           {
                              addr0088:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr009e:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00a7);
                                    }
                                 }
                                 §§goto(addr00b9);
                              }
                           }
                           addr00a7:
                           this.leftButton = _loc1_;
                           if(_loc3_ || _loc3_)
                           {
                              addr00b9:
                              BindingManager.executeBindings(this,"leftButton",this.leftButton);
                           }
                           return _loc1_;
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0065);
            }
            §§goto(addr0044);
         }
         §§goto(addr00b9);
      }
      
      public function __leftButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _ArchitectNeedsSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.layout = this._ArchitectNeedsSkin_HorizontalLayout1_i();
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0089:
                           _loc1_.id = "dataGroup";
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00bd:
                                       this.dataGroup = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00c7:
                                          BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                       }
                                       §§goto(addr00d4);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr00bd);
                           }
                        }
                        §§goto(addr00c7);
                     }
                     addr00d4:
                     return _loc1_;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00bd);
            }
            §§goto(addr00c7);
         }
         §§goto(addr00bd);
      }
      
      private function _ArchitectNeedsSkin_HorizontalLayout1_i() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc2_ || _loc2_)
         {
            _loc1_.useVirtualLayout = true;
            if(!_loc3_)
            {
               _loc1_.clipAndEnableScrolling = true;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.gap = 3;
                  if(!_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr00a3);
               }
               addr005e:
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0071:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr008e);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr008e);
            }
            addr008e:
            _loc1_.requestedColumnCount = 3;
            if(_loc2_)
            {
               this.theLayout = _loc1_;
               if(!_loc3_)
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"theLayout",this.theLayout);
               }
            }
            return _loc1_;
         }
         §§goto(addr0071);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.checkScroll();
         }
      }
      
      private function _ArchitectNeedsSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 16;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectNeedsSkin_DynamicImageButton2_i()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0078);
               }
               addr0064:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0078:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _ArchitectNeedsSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.visible = false;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.verticalCenter = 2;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0061:
                     _loc1_.styleName = "architectNeedsButtonRight";
                     if(_loc3_)
                     {
                        _loc1_.addEventListener("click",this.__rightButton_click);
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.id = "rightButton";
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00a3:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc3_)
                                    {
                                       §§goto(addr00b8);
                                    }
                                    §§goto(addr00c2);
                                 }
                              }
                              addr00b8:
                              this.rightButton = _loc1_;
                              if(_loc3_)
                              {
                                 addr00c2:
                                 BindingManager.executeBindings(this,"rightButton",this.rightButton);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00c2);
                        }
                        addr00cf:
                        return _loc1_;
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0061);
            }
            §§goto(addr00a3);
         }
         §§goto(addr0061);
      }
      
      public function __rightButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
         }
      }
      
      public function ___ArchitectNeedsSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.creationComplete();
         }
      }
      
      private function _ArchitectNeedsSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || Boolean(this))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"leftButton.toolTip");
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0090:
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              §§goto(addr0097);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00bb);
            }
            §§goto(addr0090);
         }
         addr0097:
         §§push(§§pop().§§slot[1]);
         if(_loc2_ || _loc2_)
         {
            addr00a8:
            §§pop()[1] = new Binding(this,function():String
            {
               var _loc1_:* = getStyle("tooltipRight");
               return _loc1_ == undefined ? null : String(_loc1_);
            },null,"rightButton.toolTip");
            addr00bb:
            addr00b9:
            §§push(result);
            addr00a6:
         }
         return §§pop();
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
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
      public function get leftButton() : DynamicImageButton
      {
         return this._1632457241leftButton;
      }
      
      public function set leftButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1632457241leftButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1632457241leftButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0071);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0071:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftButton",_loc2_,param1));
                  }
               }
               §§goto(addr0080);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._721040133motionPath = param1;
                  if(!_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get rightButton() : DynamicImageButton
      {
         return this._896282514rightButton;
      }
      
      public function set rightButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._896282514rightButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0049:
                  this._896282514rightButton = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0069);
            }
            addr0090:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollAnimation() : Animate
      {
         return this._599151817scrollAnimation;
      }
      
      public function set scrollAnimation(param1:Animate) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._599151817scrollAnimation;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._599151817scrollAnimation = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007a);
            }
         }
         addr0089:
      }
      
      [Bindable(event="propertyChange")]
      public function get theLayout() : HorizontalLayout
      {
         return this._929968389theLayout;
      }
      
      public function set theLayout(param1:HorizontalLayout) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._929968389theLayout;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._929968389theLayout = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theLayout",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0058);
      }
   }
}

