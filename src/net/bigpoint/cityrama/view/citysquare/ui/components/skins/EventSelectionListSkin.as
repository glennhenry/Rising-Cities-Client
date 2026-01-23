package net.bigpoint.cityrama.view.citysquare.ui.components.skins
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
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.CustomHScrollBar;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.ItemviewHbarSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class EventSelectionListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function EventSelectionListSkin()
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
         if(!(_loc4_ && _loc3_))
         {
            §§push(null);
            if(_loc3_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr0045:
                     §§push(null);
                     if(_loc3_ || _loc2_)
                     {
                        addr0053:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc1_)
                           {
                              addr006d:
                              §§pop().§§slot[5] = null;
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc1_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr00c6:
                                             super();
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr00d6:
                                                mx_internal::_document = this;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr00f1:
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§pop().§§slot[1] = this._EventSelectionListSkin_bindingsSetup();
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc3_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  addr0141:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr014c:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           addr016e:
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_citysquare_ui_components_skins_EventSelectionListSkinWatcherSetupUtil");
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    addr01a1:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr01bf:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return EventSelectionListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01dd:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr0232:
                                                                                                this.mxmlContent = [this._EventSelectionListSkin_DataGroup1_i(),this._EventSelectionListSkin_CustomHScrollBar1_i()];
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr0248:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0254:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr0283:
                                                                                                         i = 0;
                                                                                                         addr0281:
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
                                                                                                               if(_loc4_ && _loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc3_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     var _temp_26:* = §§pop();
                                                                                                                     §§pop().§§slot[4] = _temp_26;
                                                                                                                     if(!_loc4_)
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
                                                                                                   addr02e8:
                                                                                                }
                                                                                                §§goto(addr0281);
                                                                                             }
                                                                                             §§goto(addr0254);
                                                                                          }
                                                                                          §§goto(addr02e8);
                                                                                       }
                                                                                       §§goto(addr0281);
                                                                                    }
                                                                                    §§goto(addr02e8);
                                                                                 }
                                                                                 §§goto(addr0283);
                                                                              }
                                                                              §§goto(addr01dd);
                                                                           }
                                                                           §§goto(addr01a1);
                                                                        }
                                                                        §§goto(addr01dd);
                                                                     }
                                                                  }
                                                                  §§goto(addr01bf);
                                                               }
                                                               §§goto(addr0283);
                                                            }
                                                            §§goto(addr0248);
                                                         }
                                                         §§goto(addr0141);
                                                      }
                                                      §§goto(addr016e);
                                                   }
                                                   §§goto(addr0283);
                                                }
                                                §§goto(addr02e8);
                                             }
                                          }
                                          §§goto(addr00f1);
                                       }
                                    }
                                    §§goto(addr0232);
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr01dd);
                           }
                           §§goto(addr0283);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr0283);
               }
               §§goto(addr014c);
            }
            §§goto(addr0053);
         }
         §§goto(addr0045);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || EventSelectionListSkin)
         {
            EventSelectionListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               §§goto(addr0037);
            }
            §§goto(addr004b);
         }
         addr0037:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc2_)
            {
               return;
            }
         }
         else
         {
            addr004b:
            this.__moduleFactoryInitialized = true;
         }
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
         if(!_loc3_)
         {
            §§push(this.hscrollerBar);
            if(!_loc3_)
            {
               §§pop().scrollpositionChanged();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.hscrollerBar);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(!_loc3_)
                        {
                           §§push(this.hscrollerBar);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§pop().decrementButton.toolTip = LocaUtils.getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                              if(!_loc3_)
                              {
                                 addr008b:
                                 §§push(this.hscrollerBar);
                                 if(!_loc3_)
                                 {
                                    addr00a1:
                                    if(!§§pop().incrementButton.toolTip)
                                    {
                                       if(_loc2_ || Boolean(this))
                                       {
                                          addr00bb:
                                          this.hscrollerBar.incrementButton.toolTip = LocaUtils.getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                                       }
                                    }
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00a1);
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr008b);
            }
            §§goto(addr00bb);
         }
         addr00d5:
      }
      
      private function _EventSelectionListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.left = 41;
            if(_loc2_)
            {
               _loc1_.right = 41;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     §§goto(addr0040);
                  }
                  §§goto(addr0075);
               }
               addr0040:
               _loc1_.focusEnabled = false;
               if(!_loc3_)
               {
                  _loc1_.layout = this._EventSelectionListSkin_HorizontalLayout1_c();
                  if(_loc2_)
                  {
                     addr0065:
                     _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                     if(!_loc3_)
                     {
                        addr0075:
                        _loc1_.id = "dataGroup";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00b2:
                                    this.dataGroup = _loc1_;
                                    if(!_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                 }
                              }
                              §§goto(addr00c9);
                           }
                        }
                        §§goto(addr00b2);
                     }
                  }
               }
               addr00c9:
               return _loc1_;
            }
            §§goto(addr0065);
         }
         §§goto(addr0075);
      }
      
      private function _EventSelectionListSkin_HorizontalLayout1_c() : HorizontalLayout
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
               addr002b:
               _loc1_.requestedColumnCount = 3;
               if(!_loc3_)
               {
                  _loc1_.requestedMaxColumnCount = 3;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.columnWidth = 205;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0073:
                        _loc1_.gap = 4;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0085:
                           _loc1_.clipAndEnableScrolling = true;
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0085);
                  }
                  addr008a:
                  return _loc1_;
               }
            }
            §§goto(addr0073);
         }
         §§goto(addr002b);
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
      
      private function _EventSelectionListSkin_CustomHScrollBar1_i() : CustomHScrollBar
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
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006a:
                     _loc1_.id = "hscrollerBar";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0095:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a6:
                                 this.hscrollerBar = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00b0:
                                    BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0095);
                  }
               }
               §§goto(addr00a6);
            }
            §§goto(addr00b0);
         }
         §§goto(addr006a);
      }
      
      private function _EventSelectionListSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(_loc3_ || _loc2_)
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     §§goto(addr004f);
                  }
                  §§goto(addr0066);
               }
               addr004f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr004f);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1684366319hscrollerBar = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr0050);
               }
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0078);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
   }
}

