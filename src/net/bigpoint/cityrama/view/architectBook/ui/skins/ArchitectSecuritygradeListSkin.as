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
   import spark.components.List;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ArchitectSecuritygradeListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _1632457241leftButton:DynamicImageButton;
      
      private var _273241018mainGroup:Group;
      
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
      
      public function ArchitectSecuritygradeListSkin()
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
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        addr0045:
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc3_ && _loc1_))
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr005e:
                              §§pop().§§slot[5] = null;
                              addr005d:
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr0087:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || _loc2_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_ || _loc2_)
                                          {
                                             super();
                                             if(_loc4_)
                                             {
                                                addr00b8:
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§pop().§§slot[1] = this._ArchitectSecuritygradeListSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr0101:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr011c:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_skins_ArchitectSecuritygradeListSkinWatcherSetupUtil");
                                                                              if(_loc4_ || _loc1_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    addr0176:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0198:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ArchitectSecuritygradeListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr01be:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             addr01ec:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                addr021a:
                                                                                                this.blendMode = "normal";
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   addr022f:
                                                                                                   this.mxmlContent = [this._ArchitectSecuritygradeListSkin_Group1_c()];
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      this.currentState = "normal";
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         addr0254:
                                                                                                         this._ArchitectSecuritygradeListSkin_Animate1_i();
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            addr0267:
                                                                                                            this.addEventListener("creationComplete",this.___ArchitectSecuritygradeListSkin_SparkSkin1_creationComplete);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr0278:
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
                                                                                                               if(_loc4_ || _loc1_)
                                                                                                               {
                                                                                                                  addr02c4:
                                                                                                                  i = 0;
                                                                                                                  addr02c2:
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
                                                                                                                           if(_loc3_ && _loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().§§slot[4]);
                                                                                                                              if(!(_loc3_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop() + 1));
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 var _temp_33:* = §§pop();
                                                                                                                                 §§pop().§§slot[4] = _temp_33;
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
                                                                                                               addr0338:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02c2);
                                                                                                      }
                                                                                                      §§goto(addr0278);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0267);
                                                                                             }
                                                                                             §§goto(addr0254);
                                                                                          }
                                                                                          §§goto(addr0267);
                                                                                       }
                                                                                       §§goto(addr02c2);
                                                                                    }
                                                                                    §§goto(addr0254);
                                                                                 }
                                                                                 §§goto(addr02c4);
                                                                              }
                                                                              §§goto(addr02c2);
                                                                           }
                                                                           §§goto(addr0176);
                                                                        }
                                                                        §§goto(addr01ec);
                                                                     }
                                                                     §§goto(addr0198);
                                                                  }
                                                                  §§goto(addr01ec);
                                                               }
                                                               §§goto(addr02c4);
                                                            }
                                                            §§goto(addr022f);
                                                         }
                                                         §§goto(addr0176);
                                                      }
                                                      §§goto(addr02c2);
                                                   }
                                                   §§goto(addr02c4);
                                                }
                                                §§goto(addr01be);
                                             }
                                             §§goto(addr0267);
                                          }
                                          §§goto(addr01ec);
                                       }
                                       §§goto(addr021a);
                                    }
                                    §§goto(addr0278);
                                 }
                                 §§goto(addr0338);
                              }
                              §§goto(addr0087);
                           }
                           §§goto(addr011c);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr0101);
               }
               §§goto(addr0087);
            }
            §§goto(addr0045);
         }
         §§goto(addr005d);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            ArchitectSecuritygradeListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_ == 0);
            if(_loc4_ || Boolean(param1))
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        addr0065:
                        §§pop();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr0087);
                        }
                        §§goto(addr00a6);
                     }
                  }
                  addr0087:
                  if(!this.scrollAnimation.isPlaying)
                  {
                     if(_loc4_)
                     {
                        addr0091:
                        this.motionPath.valueBy = _loc2_;
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr00a6:
                           this.scrollAnimation.play();
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr00a6);
                  }
                  addr00ae:
                  return;
               }
            }
            §§goto(addr0065);
         }
         §§goto(addr0091);
      }
      
      private function scrollAnimation_effectStart() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.dataGroup.mouseChildren = false;
         }
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.dataGroup.mouseChildren = true;
            if(_loc1_)
            {
               addr002a:
               this.checkScroll();
            }
            return;
         }
         §§goto(addr002a);
      }
      
      private function creationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(!_loc1_)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = this.dataGroup.getElementAt(0);
         var _loc3_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(_loc6_ || Boolean(param1))
         {
            if(this.dataGroup.numElements > 1)
            {
               if(!_loc5_)
               {
                  if(_loc2_)
                  {
                     if(!_loc5_)
                     {
                        §§push(this.leftButton);
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(this.leftButton);
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              §§push(!this.dataGroup.scrollRect.containsRect(_loc2_.getBounds(this.dataGroup)));
                              if(_loc6_ || Boolean(this))
                              {
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 §§push(_temp_6);
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    var _loc4_:* = §§pop();
                                    if(_loc6_ || Boolean(param1))
                                    {
                                       §§pop().enabled = §§pop();
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             if(_loc6_)
                                             {
                                                §§pop().visible = §§pop();
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   addr010c:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc6_ || Boolean(this))
                                                      {
                                                         addr011f:
                                                         §§push(this.rightButton);
                                                         if(_loc6_ || Boolean(param1))
                                                         {
                                                            §§push(this.rightButton);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(!this.dataGroup.scrollRect.containsRect(_loc3_.getBounds(this.dataGroup)));
                                                               if(!(_loc5_ && Boolean(_loc2_)))
                                                               {
                                                                  var _temp_15:* = §§pop();
                                                                  §§push(_temp_15);
                                                                  §§push(_temp_15);
                                                                  if(_loc6_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(_loc6_ || Boolean(_loc3_))
                                                                     {
                                                                        §§pop().enabled = §§pop();
                                                                        if(_loc6_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr01be:
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr0218);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01bc:
                                                                           }
                                                                           §§goto(addr01be);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01ba:
                                                                           §§push(_loc4_);
                                                                        }
                                                                        §§goto(addr01bc);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01b7:
                                                                        §§pop().enabled = §§pop();
                                                                     }
                                                                     §§goto(addr01ba);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01b5:
                                                                     _loc4_ = §§pop();
                                                                  }
                                                                  §§goto(addr01b7);
                                                               }
                                                               else
                                                               {
                                                                  addr01b4:
                                                                  var _temp_19:* = §§pop();
                                                                  §§push(_temp_19);
                                                                  §§push(_temp_19);
                                                               }
                                                               §§goto(addr01b5);
                                                            }
                                                            else
                                                            {
                                                               addr01b3:
                                                               §§push(true);
                                                            }
                                                            §§goto(addr01b4);
                                                         }
                                                         else
                                                         {
                                                            addr01af:
                                                            §§push(this.rightButton);
                                                         }
                                                         §§goto(addr01b3);
                                                      }
                                                      §§goto(addr0218);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.rightButton);
                                                   }
                                                   §§goto(addr01af);
                                                }
                                                §§goto(addr011f);
                                             }
                                             else
                                             {
                                                addr0216:
                                                §§pop().visible = §§pop();
                                             }
                                             §§goto(addr0218);
                                          }
                                          else
                                          {
                                             addr0214:
                                          }
                                          §§goto(addr0216);
                                       }
                                       else
                                       {
                                          addr0212:
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr0214);
                                    }
                                    else
                                    {
                                       addr020c:
                                       var _temp_20:* = §§pop();
                                       addr020f:
                                       §§pop().enabled = _loc4_ = §§pop();
                                       addr020d:
                                       addr020a:
                                    }
                                    §§goto(addr0212);
                                 }
                                 §§goto(addr020d);
                              }
                              §§goto(addr020c);
                           }
                           else
                           {
                              §§push(this.rightButton);
                              this.rightButton.visible = _loc4_ = false;
                              addr01d2:
                              §§push(_loc4_);
                              if(!_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 §§push(_loc4_);
                              }
                              §§pop().enabled = §§pop();
                              §§push(_loc4_);
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§goto(addr020a);
                              }
                           }
                           §§goto(addr020f);
                        }
                        else
                        {
                           addr01ce:
                           §§push(this.leftButton);
                        }
                        §§goto(addr01d2);
                     }
                     §§goto(addr011f);
                  }
                  §§goto(addr010c);
               }
               §§goto(addr0218);
            }
            else
            {
               §§push(this.leftButton);
            }
            §§goto(addr01ce);
         }
         addr0218:
      }
      
      private function _ArchitectSecuritygradeListSkin_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(!_loc2_)
         {
            _loc1_.duration = 500;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.motionPaths = new <MotionPath>[this._ArchitectSecuritygradeListSkin_SimpleMotionPath1_i()];
               if(!_loc2_)
               {
                  _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
                  addr006a:
                  if(!_loc2_)
                  {
                     addr0086:
                     _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
                     if(_loc3_)
                     {
                        this.scrollAnimation = _loc1_;
                        if(!_loc2_)
                        {
                           addr00a0:
                           BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00a0);
                  }
               }
               addr00ad:
               return _loc1_;
            }
            §§goto(addr0086);
         }
         §§goto(addr006a);
      }
      
      private function _ArchitectSecuritygradeListSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_ || _loc2_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(_loc2_ || _loc3_)
            {
               this.motionPath = _loc1_;
               if(!_loc3_)
               {
                  addr0052:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
            }
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
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
      
      private function _ArchitectSecuritygradeListSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_Group2_c(),this._ArchitectSecuritygradeListSkin_Group3_i(),this._ArchitectSecuritygradeListSkin_Group4_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr007f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0093:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr007f);
         }
         §§goto(addr0093);
      }
      
      private function _ArchitectSecuritygradeListSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 16;
            if(_loc2_)
            {
               _loc1_.top = 8;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.left = 60;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_DynamicImageButton1_i()];
                        addr006d:
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0091:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr0091);
         }
         §§goto(addr006d);
      }
      
      private function _ArchitectSecuritygradeListSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.visible = false;
            if(_loc3_ || _loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.styleName = "architectNeedsButtonLeft";
                  if(_loc3_)
                  {
                     addr0052:
                     _loc1_.addEventListener("click",this.__leftButton_click);
                     if(!_loc2_)
                     {
                        _loc1_.id = "leftButton";
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr009d:
                                    this.leftButton = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00a7:
                                       BindingManager.executeBindings(this,"leftButton",this.leftButton);
                                    }
                                 }
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr009d);
            }
            §§goto(addr0052);
         }
         addr00b4:
         return _loc1_;
      }
      
      public function __leftButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _ArchitectSecuritygradeListSkin_Group3_i() : Group
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
                  _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_DataGroup1_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr009f);
               }
            }
         }
         addr005f:
         _loc1_.id = "mainGroup";
         if(_loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0095:
                     this.mainGroup = _loc1_;
                     if(_loc2_)
                     {
                        addr009f:
                        BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr00ac);
            }
            §§goto(addr0095);
         }
         addr00ac:
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.focusEnabled = false;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.layout = this._ArchitectSecuritygradeListSkin_HorizontalLayout1_i();
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "dataGroup";
                        if(_loc2_ || Boolean(this))
                        {
                           addr0093:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00aa:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00bb:
                                    this.dataGroup = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00c5:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr00bb);
                        }
                        addr00d2:
                        return _loc1_;
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0093);
               }
            }
            §§goto(addr00bb);
         }
         §§goto(addr00c5);
      }
      
      private function _ArchitectSecuritygradeListSkin_HorizontalLayout1_i() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc2_)
         {
            _loc1_.useVirtualLayout = true;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.clipAndEnableScrolling = true;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.verticalAlign = "top";
                  if(_loc3_)
                  {
                     addr005b:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.requestedColumnCount = 1;
                        if(!_loc2_)
                        {
                           §§goto(addr0085);
                        }
                     }
                     §§goto(addr0097);
                  }
                  addr0085:
                  this.theLayout = _loc1_;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0097:
                     BindingManager.executeBindings(this,"theLayout",this.theLayout);
                  }
                  §§goto(addr00a4);
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr005b);
         }
         §§goto(addr0085);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.checkScroll();
         }
      }
      
      private function _ArchitectSecuritygradeListSkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.top = 8;
            if(_loc2_ || _loc2_)
            {
               _loc1_.right = 60;
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr0057);
               }
               §§goto(addr007f);
            }
            §§goto(addr009b);
         }
         addr0057:
         _loc1_.width = 16;
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr007f:
               _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_DynamicImageButton2_i()];
               if(_loc2_)
               {
                  §§goto(addr008f);
               }
               §§goto(addr009b);
            }
            addr008f:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr009b:
                  _loc1_.document = this;
               }
            }
            §§goto(addr009f);
         }
         addr009f:
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeListSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.visible = false;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.styleName = "architectNeedsButtonRight";
                  if(_loc2_)
                  {
                     _loc1_.addEventListener("click",this.__rightButton_click);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "rightButton";
                        if(_loc2_)
                        {
                           addr0077:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr0097:
                                    this.rightButton = _loc1_;
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr00a9:
                                       BindingManager.executeBindings(this,"rightButton",this.rightButton);
                                    }
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr00a9);
                           }
                        }
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr00b6);
            }
            §§goto(addr0077);
         }
         addr00b6:
         return _loc1_;
      }
      
      public function __rightButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
         }
      }
      
      public function ___ArchitectSecuritygradeListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.creationComplete();
         }
      }
      
      private function _ArchitectSecuritygradeListSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || Boolean(this))
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(0);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"leftButton.toolTip");
                        if(!(_loc3_ && _loc1_))
                        {
                           addr0089:
                           §§push(§§newactivation());
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr0098);
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr009f);
               }
               addr0098:
               §§push(§§pop().§§slot[1]);
               if(_loc2_)
               {
                  addr00a1:
                  §§pop()[1] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("tooltipRight");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"rightButton.toolTip");
                  addr00b4:
                  addr00b2:
                  §§push(result);
                  addr009f:
               }
               return §§pop();
            }
            §§goto(addr0089);
         }
         §§goto(addr00b4);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr003f:
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get leftButton() : DynamicImageButton
      {
         return this._1632457241leftButton;
      }
      
      public function set leftButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1632457241leftButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr0041:
                  this._1632457241leftButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftButton",_loc2_,param1));
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
      public function get mainGroup() : Group
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._273241018mainGroup = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0077);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0077:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0086);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._721040133motionPath = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006c);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr0054);
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
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0046:
                  this._896282514rightButton = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr007e);
               }
            }
            addr008d:
            return;
         }
         §§goto(addr0046);
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
               if(_loc4_)
               {
                  addr0039:
                  this._599151817scrollAnimation = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr0053);
               }
            }
            addr0062:
            return;
         }
         §§goto(addr0039);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0047:
                  this._929968389theLayout = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theLayout",_loc2_,param1));
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
         §§goto(addr0047);
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
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
   }
}

