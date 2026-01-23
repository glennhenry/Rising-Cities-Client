package net.bigpoint.cityrama.view.residentSelection.ui.skins
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
   import spark.components.DataGrid;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ResidentListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function ResidentListSkin()
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
         if(!(_loc4_ && _loc2_))
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr006a:
                              §§pop().§§slot[5] = null;
                              if(_loc3_ || Boolean(this))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             super();
                                             if(_loc3_)
                                             {
                                                addr00b9:
                                                mx_internal::_document = this;
                                                if(!_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§pop().§§slot[1] = this._ResidentListSkin_bindingsSetup();
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         addr00f3:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  addr011f:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr0146:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentSelection_ui_skins_ResidentListSkinWatcherSetupUtil");
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    addr0161:
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr018c:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ResidentListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr01d1:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr01f7:
                                                                                                this.minWidth = 222;
                                                                                                if(_loc3_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr020b);
                                                                                                }
                                                                                                §§goto(addr022d);
                                                                                             }
                                                                                             §§goto(addr0252);
                                                                                          }
                                                                                          addr020b:
                                                                                          this.minHeight = 337;
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             this.blendMode = "normal";
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr022d:
                                                                                                this.mxmlContent = [this._ResidentListSkin_HGroup1_c()];
                                                                                                if(!(_loc4_ && Boolean(this)))
                                                                                                {
                                                                                                   addr0246:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0252:
                                                                                                      this._ResidentListSkin_Animate1_i();
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr025e:
                                                                                                         this.addEventListener("creationComplete",this.___ResidentListSkin_SparkSkin1_creationComplete);
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            §§goto(addr0278);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr02a5);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr025e);
                                                                                             }
                                                                                             §§goto(addr0246);
                                                                                          }
                                                                                          §§goto(addr0278);
                                                                                       }
                                                                                       §§goto(addr022d);
                                                                                    }
                                                                                    §§goto(addr01f7);
                                                                                 }
                                                                                 §§goto(addr02a7);
                                                                              }
                                                                              §§goto(addr025e);
                                                                           }
                                                                           §§goto(addr0161);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr018c);
                                                               }
                                                               §§goto(addr0146);
                                                            }
                                                            §§goto(addr02a5);
                                                         }
                                                         §§goto(addr02a7);
                                                      }
                                                      §§goto(addr01d1);
                                                   }
                                                   §§goto(addr011f);
                                                }
                                                §§goto(addr022d);
                                             }
                                             §§goto(addr00f3);
                                          }
                                       }
                                       §§goto(addr00b9);
                                    }
                                    addr0278:
                                    states = [new State({
                                       "name":"normal",
                                       "overrides":[]
                                    }),new State({
                                       "name":"disabled",
                                       "overrides":[]
                                    })];
                                    if(_loc3_)
                                    {
                                       addr02a7:
                                       i = 0;
                                       addr02a5:
                                    }
                                    var _temp_17:*;
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
                                                if(_loc4_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().§§slot[4]);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(uint(§§pop() + 1));
                                                      if(_loc4_ && Boolean(this))
                                                      {
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§push(§§newactivation());
                                                   if(!_loc4_)
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
                                    while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, !_loc4_);
                                    
                                    return;
                                 }
                                 §§goto(addr01d1);
                              }
                              §§goto(addr022d);
                           }
                           §§goto(addr011f);
                        }
                        §§goto(addr0246);
                     }
                     §§goto(addr006a);
                  }
                  §§goto(addr0146);
               }
               §§goto(addr018c);
            }
            §§goto(addr006a);
         }
         §§goto(addr011f);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            ResidentListSkin._watcherSetupUtil = param1;
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
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
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
            return;
         }
         §§goto(addr0049);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_ == 0);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_ || Boolean(_loc2_))
               {
                  §§goto(addr0058);
               }
               §§goto(addr0063);
            }
            addr0058:
            var _temp_3:* = §§pop();
            §§push(_temp_3);
            if(_temp_3)
            {
               if(!_loc4_)
               {
                  addr0063:
                  §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr0085);
                  }
                  §§goto(addr009b);
               }
            }
            addr0085:
            §§goto(addr007d);
         }
         addr007d:
         if(!this.scrollAnimation.isPlaying)
         {
            if(_loc3_)
            {
               this.motionPath.valueBy = _loc2_;
               if(_loc3_)
               {
                  addr009b:
                  this.scrollAnimation.play();
               }
               §§goto(addr00a3);
            }
            §§goto(addr009b);
         }
         addr00a3:
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
         if(_loc1_ || _loc1_)
         {
            this.dataGroup.mouseChildren = true;
            if(!_loc2_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.scrollAnimation.target = this.dataGroup.layout;
            if(!_loc2_)
            {
               this.scrollToPosition(NavigationUnit.HOME);
               if(!(_loc2_ && _loc1_))
               {
                  addr005a:
                  this.checkScroll();
                  if(!_loc2_)
                  {
                     addr0064:
                     this.scrollLeftButton.visible = this.scrollLeftButton.enabled = false;
                  }
               }
               return;
            }
            §§goto(addr0064);
         }
         §§goto(addr005a);
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Vector.<int> = this.dataGroup.getItemIndicesInView();
         var _loc3_:Object = this.dataGroup.getElementAt(0);
         var _loc4_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(_loc7_)
         {
            if(this.dataGroup.numElements > 3)
            {
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  if(_loc3_)
                  {
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§push(this.scrollLeftButton);
                        if(_loc7_ || Boolean(this))
                        {
                           §§push(this.scrollLeftButton);
                           if(_loc7_ || Boolean(param1))
                           {
                              §§push(!this.dataGroup.scrollRect.containsRect(_loc3_.getBounds(this.dataGroup)));
                              if(_loc7_)
                              {
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 §§push(_temp_6);
                                 if(_loc7_)
                                 {
                                    var _loc5_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       §§pop().enabled = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§pop().visible = §§pop();
                                                if(_loc7_ || Boolean(_loc3_))
                                                {
                                                   addr00f7:
                                                   if(_loc4_)
                                                   {
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         addr0119:
                                                         §§push(this.scrollRightButton);
                                                         if(_loc7_)
                                                         {
                                                            §§push(this.scrollRightButton);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(!this.dataGroup.scrollRect.containsRect(_loc4_.getBounds(this.dataGroup)));
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  var _temp_11:* = §§pop();
                                                                  §§push(_temp_11);
                                                                  §§push(_temp_11);
                                                                  if(!(_loc6_ && Boolean(_loc2_)))
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(_loc7_ || Boolean(param1))
                                                                     {
                                                                        §§pop().enabled = §§pop();
                                                                        if(_loc7_ || Boolean(this))
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc7_ || Boolean(this))
                                                                           {
                                                                              if(!(_loc6_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc6_ && Boolean(_loc2_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr01c9:
                                                                                 §§pop().visible = §§pop();
                                                                                 if(_loc7_ || Boolean(_loc3_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr022f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01c7:
                                                                           }
                                                                           §§goto(addr01c9);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01c5:
                                                                           §§push(_loc5_);
                                                                        }
                                                                        §§goto(addr01c7);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01c2:
                                                                        §§pop().enabled = §§pop();
                                                                     }
                                                                     §§goto(addr01c5);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr01c0:
                                                                     _loc5_ = §§pop();
                                                                  }
                                                                  §§goto(addr01c2);
                                                               }
                                                               else
                                                               {
                                                                  addr01bf:
                                                                  var _temp_19:* = §§pop();
                                                                  §§push(_temp_19);
                                                                  §§push(_temp_19);
                                                               }
                                                               §§goto(addr01c0);
                                                            }
                                                            else
                                                            {
                                                               addr01be:
                                                               §§push(true);
                                                            }
                                                            §§goto(addr01bf);
                                                         }
                                                         else
                                                         {
                                                            addr01ba:
                                                            §§push(this.scrollRightButton);
                                                         }
                                                         §§goto(addr01be);
                                                      }
                                                      §§goto(addr022f);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.scrollRightButton);
                                                   }
                                                   §§goto(addr01ba);
                                                }
                                                §§goto(addr0119);
                                             }
                                             else
                                             {
                                                addr022d:
                                                §§pop().visible = §§pop();
                                             }
                                             §§goto(addr022f);
                                          }
                                          else
                                          {
                                             addr022b:
                                          }
                                          §§goto(addr022d);
                                       }
                                       else
                                       {
                                          addr0229:
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr022b);
                                    }
                                    else
                                    {
                                       addr0223:
                                       var _temp_20:* = §§pop();
                                       addr0226:
                                       §§pop().enabled = _loc5_ = §§pop();
                                       addr0224:
                                       addr0221:
                                    }
                                    §§goto(addr0229);
                                 }
                                 §§goto(addr0224);
                              }
                              §§goto(addr0223);
                           }
                           else
                           {
                              §§push(this.scrollRightButton);
                              this.scrollRightButton.visible = _loc5_ = false;
                              addr01e5:
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 _loc5_ = §§pop();
                                 §§push(_loc5_);
                              }
                              §§pop().enabled = §§pop();
                              §§push(_loc5_);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr0221);
                              }
                           }
                           §§goto(addr0226);
                        }
                        else
                        {
                           addr01e1:
                           §§push(this.scrollLeftButton);
                        }
                        §§goto(addr01e5);
                     }
                     §§goto(addr022f);
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr022f);
            }
            else
            {
               §§push(this.scrollLeftButton);
            }
            §§goto(addr01e1);
         }
         addr022f:
      }
      
      private function _ResidentListSkin_Animate1_i() : Animate
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
               addr002e:
               §§push(_loc1_);
               var _temp_2:* = new <MotionPath>[this._ResidentListSkin_SimpleMotionPath1_i()];
               §§pop().motionPaths = new <MotionPath>[this._ResidentListSkin_SimpleMotionPath1_i()];
               if(!_loc2_)
               {
                  _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this.scrollAnimation = _loc1_;
                        if(_loc3_)
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
            §§goto(addr00a6);
         }
         §§goto(addr002e);
      }
      
      private function _ResidentListSkin_SimpleMotionPath1_i() : SimpleMotionPath
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         if(_loc2_)
         {
            _loc1_.property = "horizontalScrollPosition";
            if(!_loc3_)
            {
               this.motionPath = _loc1_;
               if(!_loc3_)
               {
                  addr0044:
                  BindingManager.executeBindings(this,"motionPath",this.motionPath);
               }
               §§goto(addr0051);
            }
            §§goto(addr0044);
         }
         addr0051:
         return _loc1_;
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.scrollAnimation_effectStart();
         }
      }
      
      public function __scrollAnimation_effectEnd(param1:EffectEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.scrollAnimation_effectEnd();
         }
      }
      
      private function _ResidentListSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               §§goto(addr0030);
            }
            §§goto(addr0047);
         }
         addr0030:
         _loc1_.percentWidth = 100;
         if(_loc3_)
         {
            addr0047:
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.gap = 0;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ResidentListSkin_VGroup1_c(),this._ResidentListSkin_DataGroup1_i(),this._ResidentListSkin_VGroup2_c()];
                  addr0063:
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0094);
                  }
               }
               §§goto(addr00a0);
            }
            §§goto(addr0063);
         }
         addr0094:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr00a0:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ResidentListSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004e:
                  _loc1_.width = 41;
                  if(!_loc3_)
                  {
                     _loc1_.paddingTop = 100;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.left = 0;
                        if(_loc2_)
                        {
                           addr0082:
                           _loc1_.mxmlContent = [this._ResidentListSkin_DynamicImageButton1_i()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr009e:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00a2);
                           }
                        }
                     }
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0082);
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _ResidentListSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "listLeft";
            if(!_loc3_)
            {
               _loc1_.addEventListener("click",this.__scrollLeftButton_click);
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr0050);
               }
               §§goto(addr005b);
            }
            §§goto(addr009f);
         }
         addr0050:
         _loc1_.id = "scrollLeftButton";
         if(_loc2_)
         {
            addr005b:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr006f);
               }
               §§goto(addr009f);
            }
            §§goto(addr008d);
         }
         addr006f:
         _loc1_.document = this;
         if(!(_loc3_ && _loc3_))
         {
            addr008d:
            this.scrollLeftButton = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr009f:
               BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
            }
         }
         return _loc1_;
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.scrollToPosition(NavigationUnit.PAGE_LEFT);
         }
      }
      
      private function _ResidentListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr006d:
                     _loc1_.layout = this._ResidentListSkin_HorizontalLayout1_c();
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                        if(!_loc3_)
                        {
                           addr0094:
                           _loc1_.id = "dataGroup";
                           if(!_loc3_)
                           {
                              addr009f:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(this))
                                 {
                                    _loc1_.document = this;
                                    if(!_loc3_)
                                    {
                                       addr00c7:
                                       this.dataGroup = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00d1:
                                          BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                       }
                                    }
                                    §§goto(addr00de);
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00c7);
                           }
                        }
                        addr00de:
                        return _loc1_;
                     }
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr0094);
            }
            §§goto(addr009f);
         }
         §§goto(addr006d);
      }
      
      private function _ResidentListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc2_)
         {
            _loc1_.useVirtualLayout = true;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.columnWidth = 222;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0054);
               }
            }
            §§goto(addr0092);
         }
         addr0054:
         _loc1_.clipAndEnableScrolling = true;
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.requestedMaxColumnCount = 3;
            if(_loc3_)
            {
               _loc1_.requestedMinColumnCount = 1;
               if(_loc3_ || _loc2_)
               {
                  addr0092:
                  _loc1_.gap = 2;
               }
               §§goto(addr0097);
            }
            §§goto(addr0092);
         }
         addr0097:
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
      
      private function _ResidentListSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.width = 41;
               if(!(_loc2_ && _loc2_))
               {
                  addr004d:
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.paddingTop = 100;
                     if(_loc3_)
                     {
                        §§goto(addr0075);
                     }
                  }
                  §§goto(addr0099);
               }
               addr0075:
               _loc1_.mxmlContent = [this._ResidentListSkin_DynamicImageButton2_i()];
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0099:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr004d);
         }
         §§goto(addr0099);
      }
      
      private function _ResidentListSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.styleName = "listRight";
            if(!_loc2_)
            {
               _loc1_.addEventListener("click",this.__scrollRightButton_click);
               §§goto(addr0034);
            }
            §§goto(addr0073);
         }
         addr0034:
         if(_loc3_)
         {
            _loc1_.id = "scrollRightButton";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0073:
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr007c);
                     }
                     §§goto(addr008e);
                  }
               }
               addr007c:
               this.scrollRightButton = _loc1_;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr008e:
                  BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
               }
               §§goto(addr009b);
            }
            §§goto(addr008e);
         }
         addr009b:
         return _loc1_;
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
         }
      }
      
      public function ___ResidentListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.creationComplete();
         }
      }
      
      private function _ResidentListSkin_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(_loc2_ || _loc1_)
               {
                  addr004b:
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = getStyle("tooltipScrollLeft");
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"scrollLeftButton.toolTip");
                        if(_loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0091);
               }
               addr008a:
               §§push(§§pop().§§slot[1]);
               if(!_loc3_)
               {
                  addr0093:
                  §§pop()[1] = new Binding(this,function():String
                  {
                     var _loc1_:* = getStyle("tooltipScrollRight");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"scrollRightButton.toolTip");
                  addr00a6:
                  addr00a4:
                  §§push(result);
                  addr0091:
               }
               return §§pop();
            }
            §§goto(addr00a4);
         }
         §§goto(addr004b);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
         }
         addr0086:
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
               if(_loc3_ || _loc3_)
               {
                  this._721040133motionPath = param1;
                  addr0048:
                  if(_loc3_ || _loc3_)
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0068);
            }
            addr0086:
            return;
         }
         §§goto(addr0048);
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
                  this._599151817scrollAnimation = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006a);
               }
            }
            addr0079:
            return;
         }
         §§goto(addr005b);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._75450170scrollLeftButton = param1;
                  if(_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
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
               if(_loc3_)
               {
                  this._1993162593scrollRightButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr005c);
      }
   }
}

