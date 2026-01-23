package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.skins
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.CustomHScrollBar;
   import net.bigpoint.cityrama.view.common.components.NonScrollingDataGroup;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.ItemviewHbarSkin;
   import spark.components.List;
   import spark.layouts.TileLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ImprovementStoreRewardSkinClass extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:NonScrollingDataGroup;
      
      private var _1684366319hscrollerBar:CustomHScrollBar;
      
      private var _1167261832tileLayout:TileLayout;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function ImprovementStoreRewardSkinClass()
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
            if(_loc4_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        addr004e:
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || _loc2_)
                           {
                              addr0070:
                              §§pop().§§slot[5] = null;
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr00a8:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          addr00b3:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_)
                                          {
                                             super();
                                             if(_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_)
                                                {
                                                   addr00db:
                                                   §§push(§§newactivation());
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr00eb:
                                                      §§pop().§§slot[1] = this._ImprovementStoreRewardSkinClass_bindingsSetup();
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         addr0103:
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr014d:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              addr016a:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_skins_ImprovementStoreRewardSkinClassWatcherSetupUtil");
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr017e:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0186:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       addr01a5:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ImprovementStoreRewardSkinClass[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr01f1:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr0220:
                                                                                                this.mxmlContent = [this._ImprovementStoreRewardSkinClass_NonScrollingDataGroup1_i(),this._ImprovementStoreRewardSkinClass_CustomHScrollBar1_i()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0236:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!(_loc3_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr024a:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc4_ || _loc1_)
                                                                                                      {
                                                                                                         addr0282:
                                                                                                         i = 0;
                                                                                                         addr0280:
                                                                                                      }
                                                                                                   }
                                                                                                   var _temp_21:*;
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
                                                                                                               if(_loc3_ && _loc1_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc4_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc3_ && _loc1_))
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
                                                                                                   while(var _temp_21:* = §§pop(), §§pop().§§slot[4] = _temp_21, !_loc3_);
                                                                                                   
                                                                                                   return;
                                                                                                   addr02ef:
                                                                                                }
                                                                                                §§goto(addr024a);
                                                                                             }
                                                                                             §§goto(addr0280);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0220);
                                                                                 }
                                                                                 §§goto(addr0282);
                                                                              }
                                                                              §§goto(addr01f1);
                                                                           }
                                                                           §§goto(addr0282);
                                                                        }
                                                                        §§goto(addr01f1);
                                                                     }
                                                                     §§goto(addr01a5);
                                                                  }
                                                                  §§goto(addr02ef);
                                                               }
                                                               §§goto(addr0186);
                                                            }
                                                            §§goto(addr01f1);
                                                         }
                                                         §§goto(addr0282);
                                                      }
                                                      §§goto(addr017e);
                                                   }
                                                   §§goto(addr0186);
                                                }
                                             }
                                             §§goto(addr017e);
                                          }
                                          §§goto(addr0236);
                                       }
                                       §§goto(addr0220);
                                    }
                                    §§goto(addr014d);
                                 }
                                 §§goto(addr0103);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr016a);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr00eb);
               }
               §§goto(addr00db);
            }
            §§goto(addr004e);
         }
         §§goto(addr016a);
      }
      
      public static function calculateRequestColumnCount(param1:int) : int
      {
         var _loc2_:int = Math.floor(param1 / 6);
         return _loc2_ * 3 + Math.min(param1 - _loc2_ * 6,3);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            ImprovementStoreRewardSkinClass._watcherSetupUtil = param1;
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
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0044);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0050);
            }
            addr0044:
            return;
         }
         addr0050:
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
      
      private function handleUpdateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.hscrollerBar);
            if(_loc2_)
            {
               §§pop().scrollpositionChanged();
               if(_loc2_ || Boolean(this))
               {
                  §§push(this.hscrollerBar);
                  if(_loc2_ || Boolean(this))
                  {
                     addr0043:
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(_loc2_)
                        {
                           §§push(this.hscrollerBar);
                           if(!_loc3_)
                           {
                              §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                              addr005a:
                              if(!_loc3_)
                              {
                                 addr0088:
                                 §§push(this.hscrollerBar);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    addr0099:
                                    if(!§§pop().incrementButton.toolTip)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr00c0);
                                       }
                                    }
                                    §§goto(addr00ec);
                                 }
                                 addr00c0:
                                 this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr0099);
                        }
                        addr00bc:
                        if(_loc2_ || _loc3_)
                        {
                           addr00ec:
                           this.setRequestedColumn();
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr005a);
               }
               addr00f2:
               return;
            }
            §§goto(addr0043);
         }
         §§goto(addr00bc);
      }
      
      private function setRequestedColumn() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:int = int(this.dataGroup.numElements);
         if(_loc2_ || Boolean(this))
         {
            this.tileLayout.requestedColumnCount = calculateRequestColumnCount(_loc1_);
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.hscrollerBar);
            if(_loc4_ || Boolean(this))
            {
               §§push(§§pop());
               if(_loc4_ || Boolean(this))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(this.hscrollerBar);
                              if(!_loc5_)
                              {
                                 §§push(§§pop().incrementButton);
                                 if(!_loc5_)
                                 {
                                    addr007d:
                                    var _temp_5:* = §§pop();
                                    addr007e:
                                    §§push(_temp_5);
                                    if(_temp_5)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr0088);
                                       }
                                    }
                                    §§goto(addr00ad);
                                 }
                                 §§goto(addr0088);
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00f0);
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr007e);
               }
               addr0088:
               §§pop();
               if(_loc4_ || Boolean(param1))
               {
                  §§push(this.hscrollerBar);
                  if(!(_loc5_ && param2))
                  {
                     addr00ad:
                     if(Boolean(§§pop().decrementButton))
                     {
                        if(!_loc5_)
                        {
                           var _temp_9:* = this.hscrollerBar.incrementButton;
                           var _loc3_:*;
                           this.hscrollerBar.decrementButton.enabled = _loc3_ = param1 == "normal";
                           _temp_9.enabled = _loc3_;
                           §§goto(addr00bb);
                        }
                     }
                     §§goto(addr00f0);
                  }
                  addr00bb:
                  §§goto(addr00b7);
               }
               addr00b7:
               if(_loc4_ || _loc3_)
               {
                  addr00f0:
                  super.setCurrentState(param1,param2);
               }
               §§goto(addr00f7);
            }
            §§goto(addr00bb);
         }
         addr00f7:
      }
      
      private function _ImprovementStoreRewardSkinClass_NonScrollingDataGroup1_i() : NonScrollingDataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:NonScrollingDataGroup = new NonScrollingDataGroup();
         if(_loc3_)
         {
            _loc1_.left = 41;
            if(_loc3_)
            {
               _loc1_.right = 41;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     §§goto(addr004a);
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr00cc);
            }
            §§goto(addr00c2);
         }
         addr004a:
         _loc1_.focusEnabled = false;
         if(!_loc2_)
         {
            _loc1_.layout = this._ImprovementStoreRewardSkinClass_TileLayout1_i();
            if(!_loc2_)
            {
               _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "dataGroup";
                  if(_loc3_ || _loc2_)
                  {
                     addr0099:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr00b9:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr00c2:
                              this.dataGroup = _loc1_;
                              if(_loc3_)
                              {
                                 addr00cc:
                                 BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                              }
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr00c2);
            }
            §§goto(addr0099);
         }
         addr00d9:
         return _loc1_;
      }
      
      private function _ImprovementStoreRewardSkinClass_TileLayout1_i() : TileLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TileLayout = new TileLayout();
         if(!_loc2_)
         {
            _loc1_.orientation = "rows";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.requestedRowCount = 2;
               if(_loc3_)
               {
                  _loc1_.requestedColumnCount = 3;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr00a7);
         }
         addr0062:
         _loc1_.horizontalGap = 3;
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalGap = 4;
            if(_loc3_)
            {
               addr0080:
               _loc1_.clipAndEnableScrolling = true;
               if(_loc3_)
               {
                  _loc1_.useVirtualLayout = true;
                  if(_loc3_ || Boolean(this))
                  {
                     addr00a7:
                     this.tileLayout = _loc1_;
                     if(_loc3_ || Boolean(this))
                     {
                        BindingManager.executeBindings(this,"tileLayout",this.tileLayout);
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _ImprovementStoreRewardSkinClass_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(_loc3_)
                  {
                     _loc1_.id = "hscrollerBar";
                     if(!_loc2_)
                     {
                        addr0063:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr008b);
                              }
                              §§goto(addr0095);
                           }
                        }
                        addr008b:
                        this.hscrollerBar = _loc1_;
                        if(_loc3_)
                        {
                           addr0095:
                           BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0095);
                  }
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0063);
         }
         §§goto(addr008b);
      }
      
      private function _ImprovementStoreRewardSkinClass_bindingsSetup() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(!_loc3_)
         {
            _loc1_[0] = new Binding(this,null,null,"hscrollerBar.viewport","dataGroup");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : NonScrollingDataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:NonScrollingDataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0041:
                  this._385593099dataGroup = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
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
      public function get hscrollerBar() : CustomHScrollBar
      {
         return this._1684366319hscrollerBar;
      }
      
      public function set hscrollerBar(param1:CustomHScrollBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684366319hscrollerBar;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0048:
                  this._1684366319hscrollerBar = param1;
                  if(!_loc4_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
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
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get tileLayout() : TileLayout
      {
         return this._1167261832tileLayout;
      }
      
      public function set tileLayout(param1:TileLayout) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1167261832tileLayout;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1167261832tileLayout = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileLayout",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
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
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0061);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
   }
}

