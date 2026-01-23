package net.bigpoint.cityrama.view.cityTreasury.ui.skins
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
   
   public class CityTreasuryInternalPackListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function CityTreasuryInternalPackListSkin()
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
                     if(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0056:
                              §§pop().§§slot[5] = null;
                              addr0055:
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc1_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_ || _loc1_)
                                    {
                                       addr008e:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc4_)
                                          {
                                             super();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      addr00cf:
                                                      §§pop().§§slot[1] = this._CityTreasuryInternalPackListSkin_bindingsSetup();
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            addr00e6:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              addr0130:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_cityTreasury_ui_skins_CityTreasuryInternalPackListSkinWatcherSetupUtil");
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 addr0156:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || _loc1_)
                                                                                 {
                                                                                    addr0165:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr0183:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return CityTreasuryInternalPackListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr019f:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr01f4:
                                                                                                this.mxmlContent = [this._CityTreasuryInternalPackListSkin_DataGroup1_i(),this._CityTreasuryInternalPackListSkin_CustomHScrollBar1_i()];
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§goto(addr020b);
                                                                                                }
                                                                                                §§goto(addr021f);
                                                                                             }
                                                                                             §§goto(addr024c);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr01f4);
                                                                                    }
                                                                                    §§goto(addr024c);
                                                                                 }
                                                                                 §§goto(addr024e);
                                                                              }
                                                                              §§goto(addr024c);
                                                                           }
                                                                           §§goto(addr0165);
                                                                        }
                                                                        addr020b:
                                                                        this.currentState = "normal";
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr021f:
                                                                           states = [new State({
                                                                              "name":"normal",
                                                                              "overrides":[]
                                                                           }),new State({
                                                                              "name":"disabled",
                                                                              "overrides":[]
                                                                           })];
                                                                           if(_loc3_)
                                                                           {
                                                                              addr024e:
                                                                              i = 0;
                                                                              addr024c:
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
                                                                                    if(!(_loc3_ || _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[4]);
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§push(uint(§§pop() + 1));
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                       §§push(§§newactivation());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          var _temp_21:* = §§pop();
                                                                                          §§pop().§§slot[4] = _temp_21;
                                                                                          if(!(_loc4_ && Boolean(this)))
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
                                                                     }
                                                                     §§goto(addr0183);
                                                                  }
                                                                  §§goto(addr019f);
                                                               }
                                                               §§goto(addr0130);
                                                            }
                                                            §§goto(addr0183);
                                                         }
                                                         §§goto(addr0165);
                                                      }
                                                      §§goto(addr021f);
                                                   }
                                                   §§goto(addr024e);
                                                }
                                             }
                                             §§goto(addr019f);
                                          }
                                          §§goto(addr0156);
                                       }
                                       §§goto(addr019f);
                                    }
                                    §§goto(addr024c);
                                 }
                                 §§goto(addr01f4);
                              }
                              §§goto(addr008e);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0056);
                  }
                  §§goto(addr00e6);
               }
               §§goto(addr021f);
            }
            §§goto(addr0056);
         }
         §§goto(addr0055);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            CityTreasuryInternalPackListSkin._watcherSetupUtil = param1;
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
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0051);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.hscrollerBar);
            if(!(_loc2_ && _loc3_))
            {
               §§pop().scrollpositionChanged();
               if(_loc3_ || Boolean(param1))
               {
                  §§push(this.hscrollerBar);
                  if(!_loc2_)
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(!_loc2_)
                        {
                           §§push(this.hscrollerBar);
                           if(!_loc2_)
                           {
                              §§goto(addr0072);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr00d0);
            }
            addr0072:
            §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
            if(_loc3_ || Boolean(param1))
            {
               addr009e:
               §§push(this.hscrollerBar);
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop().incrementButton.toolTip)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr00d4:
                        this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                        addr00d0:
                     }
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr00d4);
            }
            addr00f3:
            return;
         }
         §§goto(addr009e);
      }
      
      private function _CityTreasuryInternalPackListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.left = 41;
            if(!_loc2_)
            {
               _loc1_.right = 41;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc3_)
                  {
                     addr0049:
                     _loc1_.focusEnabled = false;
                     if(_loc3_)
                     {
                        _loc1_.layout = this._CityTreasuryInternalPackListSkin_HorizontalLayout1_c();
                        if(!_loc2_)
                        {
                           _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                           if(!_loc2_)
                           {
                              addr0080:
                              _loc1_.id = "dataGroup";
                              if(_loc3_ || _loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00b1:
                                       _loc1_.document = this;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§goto(addr00c2);
                                       }
                                    }
                                    §§goto(addr00cc);
                                 }
                                 addr00c2:
                                 this.dataGroup = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00cc:
                                    BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00cc);
                           }
                           addr00d9:
                           return _loc1_;
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0080);
            }
            §§goto(addr0049);
         }
         §§goto(addr00c2);
      }
      
      private function _CityTreasuryInternalPackListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.useVirtualLayout = true;
            if(!_loc2_)
            {
               _loc1_.requestedColumnCount = 1;
               if(!_loc2_)
               {
                  _loc1_.columnWidth = 78;
                  if(_loc3_)
                  {
                     _loc1_.requestedMaxColumnCount = 6;
                     if(_loc3_)
                     {
                        addr006d:
                        _loc1_.gap = 0;
                        if(!_loc2_)
                        {
                           §§goto(addr0077);
                        }
                     }
                     §§goto(addr0081);
                  }
                  addr0077:
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr0081:
                     _loc1_.clipAndEnableScrolling = false;
                  }
                  return _loc1_;
               }
               §§goto(addr0081);
            }
            §§goto(addr006d);
         }
         §§goto(addr0081);
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
      
      private function _CityTreasuryInternalPackListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  addr0039:
                  if(_loc3_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr0065);
               }
               addr0052:
               _loc1_.id = "hscrollerBar";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0065:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr0086:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr008f:
                           this.hscrollerBar = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                           }
                        }
                        §§goto(addr00a6);
                     }
                  }
                  §§goto(addr008f);
               }
               addr00a6:
               return _loc1_;
            }
            §§goto(addr0086);
         }
         §§goto(addr0039);
      }
      
      private function _CityTreasuryInternalPackListSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(_loc3_ || Boolean(this))
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0049:
                  this._1684366319hscrollerBar = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr0049);
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
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  addr003f:
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0056);
            }
            addr007d:
            return;
         }
         §§goto(addr003f);
      }
   }
}

