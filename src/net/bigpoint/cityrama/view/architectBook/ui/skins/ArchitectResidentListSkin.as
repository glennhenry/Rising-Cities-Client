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
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
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
   
   public class ArchitectResidentListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function ArchitectResidentListSkin()
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
            if(_loc3_ || _loc1_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc3_ || _loc1_)
                  {
                     addr0044:
                     §§push(null);
                     if(_loc3_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc1_))
                           {
                              addr006d:
                              §§pop().§§slot[5] = null;
                              addr006c:
                              if(_loc3_ || _loc2_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_)
                                    {
                                       addr009d:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr00b1:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_)
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._ArchitectResidentListSkin_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           addr0137:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr013e:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_skins_ArchitectResidentListSkinWatcherSetupUtil");
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr0168:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr018a:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ArchitectResidentListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          addr01af:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr01dd:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr0203:
                                                                                                this.minWidth = 40;
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr020e:
                                                                                                   this.height = 42;
                                                                                                   if(!(_loc4_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr0221:
                                                                                                      this.blendMode = "normal";
                                                                                                      if(_loc3_ || _loc1_)
                                                                                                      {
                                                                                                         addr0235:
                                                                                                         this.mxmlContent = [this._ArchitectResidentListSkin_HGroup1_c()];
                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                         {
                                                                                                            addr024e:
                                                                                                            this.currentState = "normal";
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr025b:
                                                                                                               this._ArchitectResidentListSkin_Animate1_i();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr0267:
                                                                                                                  this.addEventListener("creationComplete",this.___ArchitectResidentListSkin_SparkSkin1_creationComplete);
                                                                                                                  if(_loc3_)
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
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr02bc:
                                                                                                                        i = 0;
                                                                                                                        addr02ba:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _temp_19:*;
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
                                                                                                                              if(!(_loc3_ || _loc2_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§§slot[4]);
                                                                                                                                 if(_loc3_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(uint(§§pop() + 1));
                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc3_)
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
                                                                                                                  while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, _loc3_ || _loc2_);
                                                                                                                  
                                                                                                                  return;
                                                                                                                  addr032f:
                                                                                                               }
                                                                                                               §§goto(addr02ba);
                                                                                                            }
                                                                                                            §§goto(addr032f);
                                                                                                         }
                                                                                                         §§goto(addr0278);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr032f);
                                                                                                }
                                                                                                §§goto(addr025b);
                                                                                             }
                                                                                             §§goto(addr0278);
                                                                                          }
                                                                                          §§goto(addr0221);
                                                                                       }
                                                                                       §§goto(addr0267);
                                                                                    }
                                                                                    §§goto(addr0221);
                                                                                 }
                                                                                 §§goto(addr02bc);
                                                                              }
                                                                              §§goto(addr0203);
                                                                           }
                                                                           §§goto(addr0168);
                                                                        }
                                                                        §§goto(addr020e);
                                                                     }
                                                                     §§goto(addr018a);
                                                                  }
                                                                  §§goto(addr020e);
                                                               }
                                                               §§goto(addr013e);
                                                            }
                                                            §§goto(addr0203);
                                                         }
                                                         §§goto(addr013e);
                                                      }
                                                      §§goto(addr024e);
                                                   }
                                                   §§goto(addr0168);
                                                }
                                                §§goto(addr0221);
                                             }
                                             §§goto(addr024e);
                                          }
                                          §§goto(addr01af);
                                       }
                                       §§goto(addr01dd);
                                    }
                                    §§goto(addr0278);
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr0137);
                           }
                           §§goto(addr0168);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0235);
            }
            §§goto(addr006d);
         }
         §§goto(addr0044);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            ArchitectResidentListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr004a);
            }
            §§goto(addr0060);
         }
         addr004a:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr0060:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
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
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr0055);
                     }
                  }
                  §§goto(addr0076);
               }
            }
            addr0055:
            §§pop();
            if(_loc3_ || Boolean(param1))
            {
               addr0076:
               addr006e:
               if(!this.scrollAnimation.isPlaying)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.motionPath.valueBy = _loc2_;
                     if(!_loc4_)
                     {
                        addr0095:
                        this.scrollAnimation.play();
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0095);
               }
            }
            addr009d:
            return;
         }
         §§goto(addr006e);
      }
      
      private function scrollAnimation_effectStart() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
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
            if(_loc1_ || _loc2_)
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
            if(!_loc1_)
            {
               this.scrollToPosition(NavigationUnit.HOME);
               if(_loc2_)
               {
                  addr0043:
                  this.checkScroll();
               }
               return;
            }
         }
         §§goto(addr0043);
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = this.dataGroup.getElementAt(0);
         var _loc3_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(!_loc6_)
         {
            if(this.dataGroup.numElements >= 1)
            {
               if(_loc5_ || Boolean(this))
               {
                  if(_loc2_)
                  {
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§push(this.leftButton);
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(this.leftButton);
                           if(_loc5_)
                           {
                              §§push(!this.dataGroup.scrollRect.containsRect(_loc2_.getBounds(this.dataGroup)));
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 §§push(_temp_5);
                                 if(_loc5_)
                                 {
                                    var _loc4_:* = §§pop();
                                    if(_loc5_)
                                    {
                                       §§pop().enabled = §§pop();
                                       if(_loc5_ || Boolean(this))
                                       {
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§pop().visible = §§pop();
                                                if(_loc5_)
                                                {
                                                   addr00e1:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc5_ || Boolean(_loc3_))
                                                      {
                                                         addr00f4:
                                                         §§push(this.rightButton);
                                                         if(_loc5_ || Boolean(param1))
                                                         {
                                                            §§push(this.rightButton);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§push(!this.dataGroup.scrollRect.containsRect(_loc3_.getBounds(this.dataGroup)));
                                                               if(!(_loc6_ && Boolean(_loc2_)))
                                                               {
                                                                  var _temp_11:* = §§pop();
                                                                  §§push(_temp_11);
                                                                  §§push(_temp_11);
                                                                  if(!(_loc6_ && Boolean(_loc2_)))
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§pop().enabled = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                           {
                                                                              if(!(_loc6_ && Boolean(_loc2_)))
                                                                              {
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc5_ || Boolean(this))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr01b8:
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc5_ || Boolean(_loc2_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr0214);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01b6:
                                                                           }
                                                                           §§goto(addr01b8);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01b4:
                                                                           §§push(_loc4_);
                                                                        }
                                                                        §§goto(addr01b6);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01b1:
                                                                        §§pop().enabled = §§pop();
                                                                     }
                                                                     §§goto(addr01b4);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01af:
                                                                     _loc4_ = §§pop();
                                                                  }
                                                                  §§goto(addr01b1);
                                                               }
                                                               else
                                                               {
                                                                  addr01ae:
                                                                  var _temp_18:* = §§pop();
                                                                  §§push(_temp_18);
                                                                  §§push(_temp_18);
                                                               }
                                                               §§goto(addr01af);
                                                            }
                                                            else
                                                            {
                                                               addr01ad:
                                                               §§push(true);
                                                            }
                                                            §§goto(addr01ae);
                                                         }
                                                         else
                                                         {
                                                            addr01a9:
                                                            §§push(this.rightButton);
                                                         }
                                                         §§goto(addr01ad);
                                                      }
                                                      §§goto(addr0214);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.rightButton);
                                                   }
                                                   §§goto(addr01a9);
                                                }
                                             }
                                             else
                                             {
                                                addr0212:
                                                §§pop().visible = §§pop();
                                             }
                                             §§goto(addr0214);
                                          }
                                          else
                                          {
                                             addr0210:
                                          }
                                          §§goto(addr0212);
                                       }
                                       else
                                       {
                                          addr020e:
                                          §§push(_loc4_);
                                       }
                                       §§goto(addr0210);
                                    }
                                    else
                                    {
                                       addr020b:
                                       §§pop().enabled = §§pop();
                                    }
                                    §§goto(addr020e);
                                 }
                                 else
                                 {
                                    addr0209:
                                    _loc4_ = §§pop();
                                 }
                                 §§goto(addr020b);
                              }
                              else
                              {
                                 addr0208:
                                 var _temp_19:* = §§pop();
                                 §§push(_temp_19);
                                 §§push(_temp_19);
                              }
                              §§goto(addr0209);
                           }
                           else
                           {
                              §§push(this.rightButton);
                              this.rightButton.visible = _loc4_ = false;
                              addr01d4:
                              §§push(_loc4_);
                              if(!_loc6_)
                              {
                                 _loc4_ = §§pop();
                                 §§push(_loc4_);
                              }
                              §§pop().enabled = §§pop();
                              §§push(_loc4_);
                              if(_loc5_)
                              {
                                 §§goto(addr0208);
                              }
                           }
                           §§goto(addr020b);
                        }
                        else
                        {
                           addr01d0:
                           §§push(this.leftButton);
                        }
                        §§goto(addr01d4);
                     }
                     §§goto(addr0214);
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr00f4);
            }
            else
            {
               §§push(this.leftButton);
            }
            §§goto(addr01d0);
         }
         addr0214:
      }
      
      private function _ArchitectResidentListSkin_Animate1_i() : Animate
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Animate = new Animate();
         if(!_loc2_)
         {
            _loc1_.duration = 500;
            if(!_loc2_)
            {
               §§push(_loc1_);
               var _temp_2:* = new <MotionPath>[this._ArchitectResidentListSkin_SimpleMotionPath1_i()];
               §§pop().motionPaths = new <MotionPath>[this._ArchitectResidentListSkin_SimpleMotionPath1_i()];
               if(!_loc2_)
               {
                  _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
                     if(!(_loc2_ && _loc2_))
                     {
                        this.scrollAnimation = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00a6:
                           BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00a6);
                  }
                  addr00b3:
                  return _loc1_;
               }
            }
         }
         §§goto(addr00a6);
      }
      
      private function _ArchitectResidentListSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_ || _loc2_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(_loc2_ || _loc2_)
            {
               this.motionPath = _loc1_;
               if(_loc2_)
               {
                  addr0058:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
               §§goto(addr0065);
            }
            §§goto(addr0058);
         }
         addr0065:
         return _loc1_;
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
         if(_loc3_)
         {
            this.scrollAnimation_effectEnd();
         }
      }
      
      private function _ArchitectResidentListSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 2;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr0056:
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._ArchitectResidentListSkin_Group1_c(),this._ArchitectResidentListSkin_Group2_i(),this._ArchitectResidentListSkin_Group3_c()];
                        addr0068:
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00ab:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00af);
                        }
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr0056);
            }
            §§goto(addr00ab);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _ArchitectResidentListSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 16;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ArchitectResidentListSkin_DynamicImageButton1_i()];
                  if(!_loc2_)
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr0079:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0079);
         }
         §§goto(addr0065);
      }
      
      private function _ArchitectResidentListSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.visible = false;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0059:
                     _loc1_.styleName = "architectNeedsButtonLeft";
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.addEventListener("click",this.__leftButton_click);
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.id = "leftButton";
                           if(_loc2_)
                           {
                              addr0087:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00a9:
                                       this.leftButton = _loc1_;
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr00bb:
                                          BindingManager.executeBindings(this,"leftButton",this.leftButton);
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr00bb);
                        }
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0087);
            }
            §§goto(addr0059);
         }
         §§goto(addr0064);
      }
      
      public function __leftButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _ArchitectResidentListSkin_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._ArchitectResidentListSkin_BriskImageDynaLib1_c(),this._ArchitectResidentListSkin_DataGroup1_i()];
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "mainGroup";
               if(_loc2_)
               {
                  addr005c:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
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
                  this.mainGroup = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr0097:
                     BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                  }
                  §§goto(addr00a4);
               }
               addr00a4:
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr005c);
      }
      
      private function _ArchitectResidentListSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "options_frame";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popups_optionsPopup";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.horizontalCenter = 0;
                  addr0050:
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr0050);
         }
         addr0086:
         return _loc1_;
      }
      
      private function _ArchitectResidentListSkin_DataGroup1_i() : DataGroup
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
               if(_loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(!_loc3_)
                  {
                     _loc1_.layout = this._ArchitectResidentListSkin_HorizontalLayout1_i();
                     if(_loc2_)
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        addr0057:
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.id = "dataGroup";
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr009b);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00b7);
                           }
                        }
                     }
                  }
                  addr009b:
                  _loc1_.document = this;
                  if(_loc2_ || _loc2_)
                  {
                     addr00b7:
                     this.dataGroup = _loc1_;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00c9:
                        BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                     }
                  }
                  §§goto(addr00d6);
               }
               addr00d6:
               return _loc1_;
            }
            §§goto(addr0057);
         }
         §§goto(addr009b);
      }
      
      private function _ArchitectResidentListSkin_HorizontalLayout1_i() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.useVirtualLayout = true;
            if(!_loc3_)
            {
               _loc1_.clipAndEnableScrolling = true;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.gap = 2;
                  if(!_loc3_)
                  {
                     _loc1_.columnWidth = 40;
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0077:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_ || _loc2_)
                           {
                              _loc1_.requestedColumnCount = 1;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a9:
                                 this.theLayout = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00b3:
                                    BindingManager.executeBindings(this,"theLayout",this.theLayout);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr00b3);
            }
            §§goto(addr0064);
         }
         §§goto(addr00b3);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.checkScroll();
         }
      }
      
      private function _ArchitectResidentListSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.width = 16;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._ArchitectResidentListSkin_DynamicImageButton2_i()];
                  if(_loc3_ || Boolean(this))
                  {
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007b:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007b);
            }
            §§goto(addr006f);
         }
         §§goto(addr007b);
      }
      
      private function _ArchitectResidentListSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.visible = false;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.styleName = "architectNeedsButtonRight";
                     addr004c:
                     if(_loc2_)
                     {
                        _loc1_.addEventListener("click",this.__rightButton_click);
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.id = "rightButton";
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr008d);
                           }
                           §§goto(addr00bf);
                        }
                     }
                     §§goto(addr00a4);
                  }
                  addr008d:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00a4:
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00b5);
                        }
                        §§goto(addr00bf);
                     }
                  }
                  addr00b5:
                  this.rightButton = _loc1_;
                  if(!_loc3_)
                  {
                     addr00bf:
                     BindingManager.executeBindings(this,"rightButton",this.rightButton);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00bf);
            }
            addr00cc:
            return _loc1_;
         }
         §§goto(addr004c);
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
      
      public function ___ArchitectResidentListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.creationComplete();
         }
      }
      
      private function _ArchitectResidentListSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"leftButton.toolTip");
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008c:
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§goto(addr00b1);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr009c);
                  }
                  addr00b1:
                  §§goto(addr0093);
               }
               addr0093:
               §§push(§§pop().§§slot[1]);
               if(!_loc2_)
               {
                  addr009c:
                  §§pop()[1] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("tooltipRight");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"rightButton.toolTip");
                  addr00af:
                  addr00ad:
                  return result;
               }
            }
            §§goto(addr008c);
         }
         §§goto(addr00af);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006f);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1632457241leftButton = param1;
                  if(!_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftButton",_loc2_,param1));
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
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : Group
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._273241018mainGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0036:
                  this._273241018mainGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr004f);
            }
            addr005e:
            return;
         }
         §§goto(addr0036);
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
               if(_loc3_)
               {
                  this._721040133motionPath = param1;
                  addr0036:
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
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
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get rightButton() : DynamicImageButton
      {
         return this._896282514rightButton;
      }
      
      public function set rightButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._896282514rightButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._896282514rightButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0046:
                  this._599151817scrollAnimation = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
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
         §§goto(addr0046);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._929968389theLayout = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theLayout",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr005d);
      }
   }
}

