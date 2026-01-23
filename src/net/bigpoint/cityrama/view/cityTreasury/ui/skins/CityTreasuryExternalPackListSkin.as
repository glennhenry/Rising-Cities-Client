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
   
   public class CityTreasuryExternalPackListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function CityTreasuryExternalPackListSkin()
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
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(null);
                     if(!_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || _loc2_)
                           {
                              addr006e:
                              §§pop().§§slot[5] = null;
                              if(_loc3_ || _loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_ || _loc2_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || _loc1_)
                                       {
                                          addr00b0:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc4_)
                                          {
                                             super();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      §§pop().§§slot[1] = this._CityTreasuryExternalPackListSkin_bindingsSetup();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            addr010f:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               addr011b:
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  addr0122:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     addr012c:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr013a:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0141:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_cityTreasury_ui_skins_CityTreasuryExternalPackListSkinWatcherSetupUtil");
                                                                              if(!(_loc4_ && Boolean(this)))
                                                                              {
                                                                                 addr015d:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr0177:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr018d:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return CityTreasuryExternalPackListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             addr01d8:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr0207:
                                                                                                this.mxmlContent = [this._CityTreasuryExternalPackListSkin_DataGroup1_i(),this._CityTreasuryExternalPackListSkin_CustomHScrollBar1_i()];
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   this.currentState = "normal";
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      addr023a:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0271:
                                                                                                         i = 0;
                                                                                                         addr026f:
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
                                                                                                                  if(_loc4_ && _loc1_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc3_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc4_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                     {
                                                                                                                        var _temp_30:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_30;
                                                                                                                        if(_loc3_)
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
                                                                                                      addr02e5:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr026f);
                                                                                             }
                                                                                             §§goto(addr023a);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0207);
                                                                                    }
                                                                                    §§goto(addr02e5);
                                                                                 }
                                                                                 §§goto(addr0271);
                                                                              }
                                                                              §§goto(addr02e5);
                                                                           }
                                                                           §§goto(addr0271);
                                                                        }
                                                                        §§goto(addr0207);
                                                                     }
                                                                     §§goto(addr018d);
                                                                  }
                                                                  §§goto(addr02e5);
                                                               }
                                                               §§goto(addr0141);
                                                            }
                                                            §§goto(addr01d8);
                                                         }
                                                         §§goto(addr0122);
                                                      }
                                                      §§goto(addr012c);
                                                   }
                                                   §§goto(addr0177);
                                                }
                                                §§goto(addr026f);
                                             }
                                             §§goto(addr013a);
                                          }
                                          §§goto(addr011b);
                                       }
                                       §§goto(addr01d8);
                                    }
                                    §§goto(addr026f);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr010f);
                        }
                        §§goto(addr015d);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr0122);
               }
               §§goto(addr01d8);
            }
            §§goto(addr006e);
         }
         §§goto(addr0177);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            CityTreasuryExternalPackListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
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
                  addr0048:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr0048);
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
      
      private function handleUpdateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.hscrollerBar);
            if(_loc3_)
            {
               §§pop().scrollpositionChanged();
               if(_loc3_)
               {
                  §§push(this.hscrollerBar);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr005e);
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr006f);
               }
               addr005e:
               §§push(this.hscrollerBar);
               if(_loc3_ || Boolean(param1))
               {
                  addr006f:
                  §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                  if(!_loc2_)
                  {
                     addr009f:
                     §§push(this.hscrollerBar);
                     if(_loc3_)
                     {
                        §§goto(addr00a8);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00b6);
               }
               addr00a8:
               if(!§§pop().incrementButton.toolTip)
               {
                  if(_loc3_)
                  {
                     addr00ba:
                     this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                     addr00b6:
                  }
               }
               §§goto(addr00d9);
            }
            §§goto(addr006f);
         }
         addr00d9:
      }
      
      private function _CityTreasuryExternalPackListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.left = 41;
            if(_loc2_ || _loc3_)
            {
               _loc1_.right = 41;
               if(_loc2_)
               {
                  §§goto(addr0046);
               }
               §§goto(addr0084);
            }
            addr0046:
            _loc1_.percentHeight = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.focusEnabled = false;
               if(!_loc3_)
               {
                  addr006d:
                  _loc1_.layout = this._CityTreasuryExternalPackListSkin_HorizontalLayout1_c();
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0084:
                     _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                     if(_loc2_)
                     {
                        _loc1_.id = "dataGroup";
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00d2:
                                    this.dataGroup = _loc1_;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr00e4:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                 }
                              }
                              §§goto(addr00f1);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr00e4);
                  }
                  §§goto(addr00f1);
               }
               §§goto(addr00e4);
            }
            addr00f1:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _CityTreasuryExternalPackListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc2_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc3_ || _loc2_)
            {
               addr0041:
               _loc1_.requestedColumnCount = 2;
               if(!_loc2_)
               {
                  _loc1_.requestedMaxColumnCount = 2;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr006b:
                     _loc1_.gap = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc3_)
                        {
                           addr0087:
                           _loc1_.clipAndEnableScrolling = false;
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0087);
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr0041);
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _CityTreasuryExternalPackListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "hscrollerBar";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0079);
                           }
                        }
                     }
                  }
               }
               §§goto(addr0097);
            }
            addr0079:
            _loc1_.document = this;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0097:
               this.hscrollerBar = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
               }
            }
            §§goto(addr00b6);
         }
         addr00b6:
         return _loc1_;
      }
      
      private function _CityTreasuryExternalPackListSkin_bindingsSetup() : Array
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
               if(!(_loc4_ && Boolean(this)))
               {
                  this._385593099dataGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
               if(!_loc3_)
               {
                  addr0037:
                  this._1684366319hscrollerBar = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003f:
                  this._213507019hostComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr003f);
      }
   }
}

