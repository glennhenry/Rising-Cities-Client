package net.bigpoint.cityrama.view.residentialBook.ui.skins
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
   
   public class ImprovementInventoryLayerSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function ImprovementInventoryLayerSkin()
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
         if(!_loc4_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc3_)
                           {
                              addr0067:
                              §§pop().§§slot[5] = null;
                              addr0066:
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             super();
                                             if(_loc3_ || _loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._ImprovementInventoryLayerSkin_bindingsSetup();
                                                      if(_loc3_)
                                                      {
                                                         addr00f9:
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            addr0101:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               addr010d:
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr011d:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr0144:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr015f:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_skins_ImprovementInventoryLayerSkinWatcherSetupUtil");
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 addr017b:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr0183:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr019a:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ImprovementInventoryLayerSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          addr01c0:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01e6:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr020c:
                                                                                                this.mxmlContent = [this._ImprovementInventoryLayerSkin_DataGroup1_i(),this._ImprovementInventoryLayerSkin_CustomHScrollBar1_i()];
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr0222:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr022f:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr025f:
                                                                                                         i = 0;
                                                                                                         addr025d:
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
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc3_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                     {
                                                                                                                        var _temp_23:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_23;
                                                                                                                        if(_loc3_ || _loc1_)
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
                                                                                                      addr02cb:
                                                                                                   }
                                                                                                   §§goto(addr025d);
                                                                                                }
                                                                                                §§goto(addr02cb);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr022f);
                                                                                       }
                                                                                       §§goto(addr025d);
                                                                                    }
                                                                                    §§goto(addr020c);
                                                                                 }
                                                                                 §§goto(addr025f);
                                                                              }
                                                                              §§goto(addr01c0);
                                                                           }
                                                                           §§goto(addr0183);
                                                                        }
                                                                        §§goto(addr01e6);
                                                                     }
                                                                     §§goto(addr019a);
                                                                  }
                                                                  §§goto(addr025d);
                                                               }
                                                               §§goto(addr025f);
                                                            }
                                                            §§goto(addr025d);
                                                         }
                                                         §§goto(addr015f);
                                                      }
                                                      §§goto(addr017b);
                                                   }
                                                   §§goto(addr011d);
                                                }
                                                §§goto(addr00f9);
                                             }
                                             §§goto(addr017b);
                                          }
                                          §§goto(addr010d);
                                       }
                                       §§goto(addr0144);
                                    }
                                    §§goto(addr0222);
                                 }
                                 §§goto(addr019a);
                              }
                              §§goto(addr020c);
                           }
                           §§goto(addr0101);
                        }
                        §§goto(addr01e6);
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr025f);
               }
               §§goto(addr0144);
            }
            §§goto(addr0067);
         }
         §§goto(addr0066);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            ImprovementInventoryLayerSkin._watcherSetupUtil = param1;
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
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               else
               {
                  addr004e:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
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
            if(!(_loc3_ && _loc3_))
            {
               §§pop().scrollpositionChanged();
               if(_loc2_ || _loc2_)
               {
                  §§push(this.hscrollerBar);
                  if(!_loc3_)
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§goto(addr0065);
                        }
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00c0);
               }
               addr0065:
               §§push(this.hscrollerBar);
               if(_loc2_)
               {
                  §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                  if(_loc2_ || Boolean(param1))
                  {
                     addr00a5:
                     §§push(this.hscrollerBar);
                     if(!_loc3_)
                     {
                        §§goto(addr00ae);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00bc);
               }
               addr00ae:
               if(!§§pop().incrementButton.toolTip)
               {
                  if(!_loc3_)
                  {
                     addr00c0:
                     this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                     addr00bc:
                  }
               }
               return;
            }
            §§goto(addr00c0);
         }
         §§goto(addr00bc);
      }
      
      private function _ImprovementInventoryLayerSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.left = 41;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.right = 41;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr006d:
                     _loc1_.percentWidth = 100;
                     if(_loc2_)
                     {
                        _loc1_.focusEnabled = false;
                        if(!_loc3_)
                        {
                           _loc1_.layout = this._ImprovementInventoryLayerSkin_HorizontalLayout1_c();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0098:
                              _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                              if(!_loc3_)
                              {
                                 _loc1_.id = "dataGroup";
                                 if(!_loc3_)
                                 {
                                    addr00b3:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00cb:
                                          _loc1_.document = this;
                                          if(!_loc3_)
                                          {
                                             addr00d4:
                                             this.dataGroup = _loc1_;
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr00e6:
                                                BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                             }
                                          }
                                       }
                                       §§goto(addr00f3);
                                    }
                                    §§goto(addr00d4);
                                 }
                                 addr00f3:
                                 return _loc1_;
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr006d);
            }
         }
         §§goto(addr00cb);
      }
      
      private function _ImprovementInventoryLayerSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.useVirtualLayout = true;
            if(_loc2_)
            {
               _loc1_.requestedColumnCount = 8;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.requestedMaxColumnCount = 8;
                  if(!_loc3_)
                  {
                     _loc1_.gap = -3;
                     addr0060:
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.clipAndEnableScrolling = false;
                        if(_loc2_ || _loc3_)
                        {
                           addr0090:
                           _loc1_.columnWidth = 82;
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0090);
                  }
                  addr0096:
                  return _loc1_;
               }
               §§goto(addr0090);
            }
         }
         §§goto(addr0060);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _ImprovementInventoryLayerSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.top = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0063:
                     _loc1_.showScroller = true;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0075:
                        _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                        if(_loc2_)
                        {
                           _loc1_.id = "hscrollerBar";
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00af:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       §§goto(addr00b8);
                                    }
                                    §§goto(addr00c2);
                                 }
                              }
                              addr00b8:
                              this.hscrollerBar = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00c2:
                                 BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                              }
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr0075);
               }
               addr00cf:
               return _loc1_;
            }
            §§goto(addr0063);
         }
         §§goto(addr00b8);
      }
      
      private function _ImprovementInventoryLayerSkin_bindingsSetup() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(!(_loc3_ && _loc3_))
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
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
         }
         addr0074:
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
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1684366319hscrollerBar = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

