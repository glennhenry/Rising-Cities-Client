package net.bigpoint.cityrama.view.emergencyBook.ui.skins
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
   import net.bigpoint.cityrama.view.miniLayer.components.skins.ItemviewHbarSkin;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class SpecialistSlotListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _1684366319hscrollerBar:CustomHScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function SpecialistSlotListSkin()
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
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     §§push(null);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0055:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0067:
                              §§pop().§§slot[5] = null;
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             addr00ae:
                                             super();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._SpecialistSlotListSkin_bindingsSetup();
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            addr0107:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc3_)
                                                            {
                                                               addr0112:
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  addr011a:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_skins_SpecialistSlotListSkinWatcherSetupUtil");
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr017a:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr018a:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01a0:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return SpecialistSlotListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr01c5:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01eb:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0212:
                                                                                                this.mxmlContent = [this._SpecialistSlotListSkin_DataGroup1_i(),this._SpecialistSlotListSkin_CustomHScrollBar1_i()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0228:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0234:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         addr026b:
                                                                                                         i = 0;
                                                                                                         addr0269:
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
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               Binding(bindings[i]).execute();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || Boolean(this))
                                                                                                                  {
                                                                                                                     var _temp_26:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_26;
                                                                                                                     if(_loc4_ || _loc2_)
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
                                                                                                   addr02db:
                                                                                                }
                                                                                                §§goto(addr0234);
                                                                                             }
                                                                                             §§goto(addr0269);
                                                                                          }
                                                                                          §§goto(addr0228);
                                                                                       }
                                                                                       §§goto(addr0212);
                                                                                    }
                                                                                    §§goto(addr02db);
                                                                                 }
                                                                                 §§goto(addr026b);
                                                                              }
                                                                              §§goto(addr01c5);
                                                                           }
                                                                           §§goto(addr018a);
                                                                        }
                                                                        §§goto(addr017a);
                                                                     }
                                                                     §§goto(addr01a0);
                                                                  }
                                                                  §§goto(addr01eb);
                                                               }
                                                               §§goto(addr018a);
                                                            }
                                                            §§goto(addr0234);
                                                         }
                                                         §§goto(addr018a);
                                                      }
                                                      §§goto(addr01c5);
                                                   }
                                                   §§goto(addr018a);
                                                }
                                                §§goto(addr0228);
                                             }
                                             §§goto(addr0112);
                                          }
                                          §§goto(addr02db);
                                       }
                                    }
                                    §§goto(addr0228);
                                 }
                                 §§goto(addr01c5);
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr0269);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr011a);
               }
               §§goto(addr01c5);
            }
            §§goto(addr0055);
         }
         §§goto(addr026b);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            SpecialistSlotListSkin._watcherSetupUtil = param1;
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
                     §§goto(addr0041);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr004d);
            }
            addr0041:
            return;
         }
         addr004d:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleUpdateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.hscrollerBar);
            if(!_loc2_)
            {
               §§pop().scrollpositionChanged();
               if(_loc3_ || Boolean(param1))
               {
                  §§push(this.hscrollerBar);
                  if(_loc3_ || Boolean(this))
                  {
                     addr004c:
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(!_loc2_)
                        {
                           §§push(this.hscrollerBar);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a3:
                                 §§push(this.hscrollerBar);
                                 if(_loc3_)
                                 {
                                    §§goto(addr00b9);
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00a3);
                  }
                  addr00b9:
                  if(!§§pop().incrementButton.toolTip)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr00d3:
                        this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                        addr00cf:
                     }
                  }
                  §§goto(addr00f2);
               }
               addr00f2:
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr00a3);
      }
      
      private function _SpecialistSlotListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.left = 41;
            if(_loc3_)
            {
               _loc1_.right = 41;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     §§goto(addr004b);
                  }
                  §§goto(addr00d5);
               }
               addr004b:
               _loc1_.focusEnabled = false;
               if(!_loc2_)
               {
                  _loc1_.layout = this._SpecialistSlotListSkin_HorizontalLayout1_c();
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "dataGroup";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00a2:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00c2:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00cb:
                                    this.dataGroup = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00d5:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                 }
                              }
                              §§goto(addr00e2);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00e2);
            }
            addr00e2:
            return _loc1_;
         }
         §§goto(addr00a2);
      }
      
      private function _SpecialistSlotListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc3_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc2_)
            {
               _loc1_.gap = 0;
               if(!_loc3_)
               {
                  _loc1_.clipAndEnableScrolling = false;
               }
            }
         }
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _SpecialistSlotListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.top = -20;
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                     if(_loc3_ || _loc2_)
                     {
                        addr006c:
                        _loc1_.id = "hscrollerBar";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr008f);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr006c);
            }
            §§goto(addr0055);
         }
         addr008f:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0098:
            this.hscrollerBar = _loc1_;
            if(_loc3_)
            {
               addr00a2:
               BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
            }
         }
         return _loc1_;
      }
      
      private function _SpecialistSlotListSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_[0] = new Binding(this,null,null,"hscrollerBar.viewport","dataGroup");
         }
         return _loc1_;
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
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     addr0057:
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get hscrollerBar() : CustomHScrollBar
      {
         return this._1684366319hscrollerBar;
      }
      
      public function set hscrollerBar(param1:CustomHScrollBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684366319hscrollerBar;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1684366319hscrollerBar = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0075);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0055);
            }
            addr007c:
            return;
         }
         §§goto(addr0055);
      }
   }
}

