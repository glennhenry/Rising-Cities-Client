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
   
   public class EmergencySlotListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function EmergencySlotListSkin()
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
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc2_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        addr0057:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0069:
                              §§pop().§§slot[5] = null;
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc4_)
                                 {
                                    addr007f:
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || Boolean(this))
                                       {
                                          addr00a6:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             super();
                                             if(_loc4_ || _loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!_loc3_)
                                                {
                                                   addr00dc:
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._EmergencySlotListSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         addr00f3:
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc4_)
                                                               {
                                                                  addr0117:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0138:
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySlotListSkinWatcherSetupUtil");
                                                                              addr0140:
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr0171:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                    {
                                                                                       addr018f:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return EmergencySlotListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             addr01da:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                this.mxmlContent = [this._EmergencySlotListSkin_DataGroup1_i(),this._EmergencySlotListSkin_CustomHScrollBar1_i()];
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr022b:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr025b:
                                                                                                         i = 0;
                                                                                                         addr0259:
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
                                                                                                                     if(_loc3_ && Boolean(this))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        var _temp_19:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_19;
                                                                                                                        if(!(_loc3_ && _loc1_))
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
                                                                                                      addr02c3:
                                                                                                   }
                                                                                                   §§goto(addr0259);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr022b);
                                                                                       }
                                                                                       §§goto(addr0259);
                                                                                    }
                                                                                    §§goto(addr022b);
                                                                                 }
                                                                                 §§goto(addr025b);
                                                                              }
                                                                              §§goto(addr0259);
                                                                           }
                                                                           §§goto(addr0171);
                                                                        }
                                                                        §§goto(addr02c3);
                                                                     }
                                                                     §§goto(addr018f);
                                                                  }
                                                                  §§goto(addr0138);
                                                               }
                                                               §§goto(addr0171);
                                                            }
                                                            §§goto(addr022b);
                                                         }
                                                         §§goto(addr0171);
                                                      }
                                                      §§goto(addr01da);
                                                   }
                                                   §§goto(addr0117);
                                                }
                                             }
                                             §§goto(addr02c3);
                                          }
                                          §§goto(addr022b);
                                       }
                                       §§goto(addr02c3);
                                    }
                                    §§goto(addr00a6);
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00f3);
                           }
                           §§goto(addr0171);
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr0069);
                  }
                  §§goto(addr0140);
               }
               §§goto(addr00f3);
            }
            §§goto(addr0057);
         }
         §§goto(addr0117);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            EmergencySlotListSkin._watcherSetupUtil = param1;
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
            if(!(_loc2_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0045);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0045:
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.hscrollerBar);
            if(!_loc3_)
            {
               §§pop().scrollpositionChanged();
               if(_loc2_)
               {
                  §§push(this.hscrollerBar);
                  if(_loc2_ || Boolean(this))
                  {
                     addr003c:
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0052:
                           §§push(this.hscrollerBar);
                           if(_loc2_ || Boolean(param1))
                           {
                              addr006e:
                              §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                              if(_loc2_)
                              {
                                 addr0092:
                                 §§push(this.hscrollerBar);
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!§§pop().incrementButton.toolTip)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00cc:
                                          this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                                          addr00c8:
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00cc);
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0052);
            }
            §§goto(addr003c);
         }
         §§goto(addr0052);
      }
      
      private function _EmergencySlotListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc3_)
         {
            _loc1_.left = 41;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.right = 41;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     _loc1_.focusEnabled = false;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr005a);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr00e7);
               }
               addr005a:
               _loc1_.layout = this._EmergencySlotListSkin_HorizontalLayout1_c();
               if(!(_loc3_ && _loc3_))
               {
                  addr007e:
                  _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                  if(_loc2_ || _loc3_)
                  {
                     addr0096:
                     _loc1_.id = "dataGroup";
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00d5:
                                 this.dataGroup = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00e7:
                                    BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                 }
                              }
                           }
                           §§goto(addr00f4);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr00f4);
                  }
                  §§goto(addr00e7);
               }
               addr00f4:
               return _loc1_;
            }
         }
         §§goto(addr0096);
      }
      
      private function _EmergencySlotListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc3_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc2_ || _loc3_)
            {
               _loc1_.gap = 1;
               if(!(_loc3_ && _loc3_))
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
         if(_loc3_ || Boolean(param1))
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _EmergencySlotListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.top = -20;
                  if(_loc3_)
                  {
                     §§goto(addr0061);
                  }
               }
               §§goto(addr00a4);
            }
            addr0061:
            _loc1_.setStyle("skinClass",ItemviewHbarSkin);
            if(_loc3_)
            {
               _loc1_.id = "hscrollerBar";
               if(_loc3_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00a4:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr00ad);
                        }
                        §§goto(addr00b7);
                     }
                  }
               }
               addr00ad:
               this.hscrollerBar = _loc1_;
               if(_loc3_)
               {
                  addr00b7:
                  BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
               }
            }
            §§goto(addr00c4);
         }
         addr00c4:
         return _loc1_;
      }
      
      private function _EmergencySlotListSkin_bindingsSetup() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(_loc2_ || _loc3_)
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
               if(!_loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
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
               if(_loc4_)
               {
                  this._1684366319hscrollerBar = param1;
                  addr003b:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr003b);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003b:
                  this._213507019hostComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0058);
            }
            addr007e:
            return;
         }
         §§goto(addr003b);
      }
   }
}

