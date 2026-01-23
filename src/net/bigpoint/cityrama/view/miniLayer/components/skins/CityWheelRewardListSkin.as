package net.bigpoint.cityrama.view.miniLayer.components.skins
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
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class CityWheelRewardListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function CityWheelRewardListSkin()
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
         if(_loc4_)
         {
            §§push(null);
            if(_loc4_ || Boolean(this))
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
                        addr004f:
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              addr0061:
                              §§pop().§§slot[5] = null;
                              if(!_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_ || Boolean(this))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             super();
                                             if(!_loc3_)
                                             {
                                                addr00af:
                                                mx_internal::_document = this;
                                                if(_loc4_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._CityWheelRewardListSkin_bindingsSetup();
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            addr00ef:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               addr00fb:
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_components_skins_CityWheelRewardListSkinWatcherSetupUtil");
                                                                              addr0130:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0150:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr0157:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       addr0176:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return CityWheelRewardListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr0194:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                addr01e9:
                                                                                                this.mxmlContent = [this._CityWheelRewardListSkin_DataGroup1_i(),this._CityWheelRewardListSkin_CustomHScrollBar1_i()];
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr0208:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr0215:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!(_loc3_ && _loc1_))
                                                                                                      {
                                                                                                         addr024c:
                                                                                                         i = 0;
                                                                                                         addr024a:
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
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        var _temp_17:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_17;
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
                                                                                                      addr02ab:
                                                                                                   }
                                                                                                   §§goto(addr024a);
                                                                                                }
                                                                                                §§goto(addr02ab);
                                                                                             }
                                                                                             §§goto(addr024a);
                                                                                          }
                                                                                          §§goto(addr0208);
                                                                                       }
                                                                                       §§goto(addr0215);
                                                                                    }
                                                                                    §§goto(addr02ab);
                                                                                 }
                                                                                 §§goto(addr024c);
                                                                              }
                                                                              §§goto(addr02ab);
                                                                           }
                                                                           §§goto(addr024c);
                                                                        }
                                                                        §§goto(addr01e9);
                                                                     }
                                                                     §§goto(addr0176);
                                                                  }
                                                                  §§goto(addr01e9);
                                                               }
                                                               §§goto(addr024c);
                                                            }
                                                            §§goto(addr024a);
                                                         }
                                                         §§goto(addr0157);
                                                      }
                                                      §§goto(addr02ab);
                                                   }
                                                   §§goto(addr0130);
                                                }
                                                §§goto(addr0194);
                                             }
                                             §§goto(addr024a);
                                          }
                                          §§goto(addr0194);
                                       }
                                       §§goto(addr00af);
                                    }
                                    §§goto(addr01e9);
                                 }
                                 §§goto(addr0208);
                              }
                              §§goto(addr0176);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr0150);
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0157);
               }
               §§goto(addr00fb);
            }
            §§goto(addr004f);
         }
         §§goto(addr0157);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            CityWheelRewardListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               addr0035:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0035);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function handleUpdateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.hscrollerBar.scrollpositionChanged();
         }
      }
      
      private function _CityWheelRewardListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = null;
         _loc1_ = new DataGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.left = 41;
            if(_loc2_)
            {
               _loc1_.right = 41;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.focusEnabled = false;
                     if(_loc2_)
                     {
                        _loc1_.layout = this._CityWheelRewardListSkin_HorizontalLayout1_c();
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                           if(!_loc3_)
                           {
                              _loc1_.id = "dataGroup";
                              if(!_loc3_)
                              {
                                 addr009c:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00b2:
                                       _loc1_.document = this;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00c3:
                                          this.dataGroup = _loc1_;
                                          if(!_loc3_)
                                          {
                                             addr00cd:
                                             BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                          }
                                          §§goto(addr00da);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr00da);
                                 }
                                 §§goto(addr00c3);
                              }
                              addr00da:
                              return _loc1_;
                           }
                           §§goto(addr00b2);
                        }
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00b2);
            }
         }
         §§goto(addr009c);
      }
      
      private function _CityWheelRewardListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_)
         {
            _loc1_.useVirtualLayout = true;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.requestedMaxColumnCount = 3;
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0061);
               }
               §§goto(addr006b);
            }
         }
         addr0061:
         _loc1_.gap = 10;
         if(_loc3_)
         {
            addr006b:
            _loc1_.clipAndEnableScrolling = false;
         }
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _CityWheelRewardListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "hscrollerBar";
                     if(!_loc2_)
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr008c);
               }
            }
            addr006c:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr008c:
                  _loc1_.document = this;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr009d);
                  }
               }
               §§goto(addr00a7);
            }
            addr009d:
            this.hscrollerBar = _loc1_;
            if(_loc3_)
            {
               addr00a7:
               BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
            }
            return _loc1_;
         }
         §§goto(addr008c);
      }
      
      private function _CityWheelRewardListSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && Boolean(this)))
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr007a);
               }
               addr0063:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr007a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0089);
            }
            addr0089:
            return;
         }
         §§goto(addr0063);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1684366319hscrollerBar = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
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
         }
         addr007e:
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
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr0054);
      }
   }
}

