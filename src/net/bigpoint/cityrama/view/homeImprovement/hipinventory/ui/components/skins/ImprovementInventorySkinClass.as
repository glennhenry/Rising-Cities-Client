package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.skins
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
   
   public class ImprovementInventorySkinClass extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function ImprovementInventorySkinClass()
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
            if(_loc4_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§push(null);
                     if(_loc4_ || Boolean(this))
                     {
                        addr004f:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0060:
                              §§pop().§§slot[5] = null;
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             super();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                mx_internal::_document = this;
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._ImprovementInventorySkinClass_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr00e0:
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               addr0103:
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr0125:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           addr013a:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              addr014a:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_components_skins_ImprovementInventorySkinClassWatcherSetupUtil");
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0196:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ImprovementInventorySkinClass[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          addr01bb:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             addr01e9:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0210:
                                                                                                this.mxmlContent = [this._ImprovementInventorySkinClass_DataGroup1_i(),this._ImprovementInventorySkinClass_CustomHScrollBar1_i()];
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr022f:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      addr0244:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         addr027b:
                                                                                                         i = 0;
                                                                                                         addr0279:
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
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc3_ && _loc2_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        var _temp_25:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_25;
                                                                                                                        if(_loc4_)
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
                                                                                                      addr02e2:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0279);
                                                                                             }
                                                                                             §§goto(addr02e2);
                                                                                          }
                                                                                          §§goto(addr0210);
                                                                                       }
                                                                                       §§goto(addr02e2);
                                                                                    }
                                                                                    §§goto(addr0279);
                                                                                 }
                                                                                 §§goto(addr027b);
                                                                              }
                                                                              §§goto(addr0244);
                                                                           }
                                                                           §§goto(addr027b);
                                                                        }
                                                                        §§goto(addr0279);
                                                                     }
                                                                     §§goto(addr0196);
                                                                  }
                                                                  §§goto(addr013a);
                                                               }
                                                               §§goto(addr027b);
                                                            }
                                                            §§goto(addr022f);
                                                         }
                                                         §§goto(addr027b);
                                                      }
                                                      §§goto(addr0279);
                                                   }
                                                   §§goto(addr014a);
                                                }
                                                §§goto(addr0103);
                                             }
                                             §§goto(addr00e0);
                                          }
                                          §§goto(addr01bb);
                                       }
                                       §§goto(addr0125);
                                    }
                                    §§goto(addr01bb);
                                 }
                                 §§goto(addr0279);
                              }
                              §§goto(addr00e0);
                           }
                           §§goto(addr014a);
                        }
                        §§goto(addr01bb);
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr027b);
               }
               §§goto(addr01e9);
            }
            §§goto(addr004f);
         }
         §§goto(addr027b);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            ImprovementInventorySkinClass._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004d:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004d);
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
      
      private function handleUpdateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.hscrollerBar);
            if(_loc2_)
            {
               §§pop().scrollpositionChanged();
               if(_loc2_ || Boolean(param1))
               {
                  §§push(this.hscrollerBar);
                  if(!_loc3_)
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0061:
                           §§push(this.hscrollerBar);
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                              if(_loc2_ || _loc2_)
                              {
                                 addr00ab:
                                 §§push(this.hscrollerBar);
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00c6);
                              }
                              §§goto(addr00c2);
                           }
                           addr00b4:
                           if(!§§pop().incrementButton.toolTip)
                           {
                              if(!_loc3_)
                              {
                                 addr00c6:
                                 this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                                 addr00c2:
                              }
                           }
                           §§goto(addr00e5);
                        }
                        addr00e5:
                        return;
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr0061);
            }
            §§goto(addr00b4);
         }
         §§goto(addr00c2);
      }
      
      private function _ImprovementInventorySkinClass_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.left = 41;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.right = 41;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.focusEnabled = false;
                     if(!_loc3_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00c1);
               }
               addr0066:
               _loc1_.layout = this._ImprovementInventorySkinClass_HorizontalLayout1_c();
               if(!(_loc3_ && _loc3_))
               {
                  addr007d:
                  _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                  if(_loc2_)
                  {
                     _loc1_.id = "dataGroup";
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr00b8);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00d3);
                  }
                  addr00b8:
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr00c1:
                     this.dataGroup = _loc1_;
                     if(_loc2_ || Boolean(this))
                     {
                        addr00d3:
                        BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                     }
                  }
               }
               §§goto(addr00e0);
            }
            addr00e0:
            return _loc1_;
         }
         §§goto(addr00b8);
      }
      
      private function _ImprovementInventorySkinClass_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.useVirtualLayout = true;
            if(_loc3_)
            {
               _loc1_.requestedColumnCount = 1;
               addr0042:
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0063);
               }
               §§goto(addr0075);
            }
            addr0063:
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0075:
               _loc1_.clipAndEnableScrolling = false;
            }
            return _loc1_;
         }
         §§goto(addr0042);
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
      
      private function _ImprovementInventorySkinClass_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(!_loc2_)
                  {
                     _loc1_.id = "hscrollerBar";
                     if(!_loc2_)
                     {
                        addr006e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr008e);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00a9);
                  }
                  addr008e:
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr009f:
                     this.hscrollerBar = _loc1_;
                     if(_loc3_)
                     {
                        addr00a9:
                        BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                     }
                  }
                  §§goto(addr00b6);
               }
               addr00b6:
               return _loc1_;
            }
            §§goto(addr009f);
         }
         §§goto(addr006e);
      }
      
      private function _ImprovementInventorySkinClass_bindingsSetup() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(_loc2_)
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
               if(!_loc3_)
               {
                  addr0036:
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr0036);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1684366319hscrollerBar = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
         }
         addr0086:
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0078);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
         }
         addr0087:
      }
   }
}

