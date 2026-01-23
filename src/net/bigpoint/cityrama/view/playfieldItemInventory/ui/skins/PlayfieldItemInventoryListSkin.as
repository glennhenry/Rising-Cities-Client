package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
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
   
   public class PlayfieldItemInventoryListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _417762822scrollBar:CustomHScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function PlayfieldItemInventoryListSkin()
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
         if(_loc4_ || Boolean(this))
         {
            §§push(null);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_)
                           {
                              addr0063:
                              §§pop().§§slot[5] = null;
                              if(!(_loc3_ && _loc1_))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0087:
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_)
                                       {
                                          addr00a6:
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             super();
                                             if(!_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      §§pop().§§slot[1] = this._PlayfieldItemInventoryListSkin_bindingsSetup();
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr010a:
                                                            §§pop().§§slot[2] = [];
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               addr011d:
                                                               §§push(§§newactivation());
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr013f:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0167:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_playfieldItemInventory_ui_skins_PlayfieldItemInventoryListSkinWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr017a:
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr0181:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       addr01a0:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return PlayfieldItemInventoryListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr01bd:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01e3:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr0209:
                                                                                                this.mxmlContent = [this._PlayfieldItemInventoryListSkin_DataGroup1_i(),this._PlayfieldItemInventoryListSkin_CustomHScrollBar1_i()];
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr0228);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr026b);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0209);
                                                                                    }
                                                                                    §§goto(addr01e3);
                                                                                 }
                                                                                 §§goto(addr026d);
                                                                              }
                                                                              §§goto(addr01a0);
                                                                           }
                                                                           §§goto(addr026d);
                                                                        }
                                                                        §§goto(addr01bd);
                                                                     }
                                                                     §§goto(addr01a0);
                                                                  }
                                                                  §§goto(addr017a);
                                                               }
                                                               §§goto(addr026d);
                                                            }
                                                            §§goto(addr01a0);
                                                         }
                                                         §§goto(addr026d);
                                                      }
                                                      §§goto(addr026b);
                                                   }
                                                   §§goto(addr0181);
                                                }
                                                §§goto(addr0209);
                                             }
                                             §§goto(addr0228);
                                          }
                                          §§goto(addr013f);
                                       }
                                       addr0228:
                                       this.currentState = "normal";
                                       if(_loc4_ || _loc3_)
                                       {
                                          states = [new State({
                                             "name":"normal",
                                             "overrides":[]
                                          }),new State({
                                             "name":"disabled",
                                             "overrides":[]
                                          })];
                                          if(_loc4_)
                                          {
                                             addr026d:
                                             i = 0;
                                             addr026b:
                                          }
                                       }
                                       var _temp_19:*;
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
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(§§pop().§§slot[4]);
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(uint(§§pop() + 1));
                                                         if(!_loc4_)
                                                         {
                                                            continue loop2;
                                                         }
                                                      }
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc1_))
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
                                       while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, _loc4_ || _loc3_);
                                       
                                       return;
                                    }
                                    §§goto(addr011d);
                                 }
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr0167);
                        }
                        §§goto(addr01e3);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr0167);
               }
               §§goto(addr0087);
            }
            §§goto(addr0063);
         }
         §§goto(addr010a);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && PlayfieldItemInventoryListSkin))
         {
            PlayfieldItemInventoryListSkin._watcherSetupUtil = param1;
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
            if(!_loc2_)
            {
               addr002e:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr002e);
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
         if(_loc3_ || _loc2_)
         {
            §§push(this.scrollBar);
            if(!(_loc2_ && Boolean(param1)))
            {
               §§pop().scrollpositionChanged();
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr0042:
                  §§push(this.scrollBar);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§push(this.scrollBar);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().decrementButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.leftArrow");
                              if(_loc3_ || Boolean(param1))
                              {
                                 addr00a3:
                                 §§push(this.scrollBar);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00bf:
                                    if(!§§pop().incrementButton.toolTip)
                                    {
                                       if(!(_loc2_ && Boolean(param1)))
                                       {
                                          addr00d9:
                                          this.scrollBar.incrementButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.rightArrow");
                                          addr00d5:
                                       }
                                    }
                                    §§goto(addr00e9);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00e9);
                           }
                           §§goto(addr00bf);
                        }
                        addr00e9:
                        return;
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr00d5);
            }
            §§goto(addr00bf);
         }
         §§goto(addr0042);
      }
      
      private function _PlayfieldItemInventoryListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.left = 41;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.right = 41;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     addr0050:
                     _loc1_.focusEnabled = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr006e:
                        _loc1_.layout = this._PlayfieldItemInventoryListSkin_HorizontalLayout1_c();
                        if(!_loc2_)
                        {
                           addr007d:
                           _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                           if(_loc3_)
                           {
                              _loc1_.id = "dataGroup";
                              if(!_loc2_)
                              {
                                 addr0098:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00a4:
                                       _loc1_.document = this;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00c2:
                                          this.dataGroup = _loc1_;
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr00d4:
                                             BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                          }
                                          §§goto(addr00e1);
                                       }
                                       §§goto(addr00d4);
                                    }
                                    addr00e1:
                                    return _loc1_;
                                 }
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr00d4);
            }
            §§goto(addr006e);
         }
         §§goto(addr0050);
      }
      
      private function _PlayfieldItemInventoryListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.useVirtualLayout = true;
            if(!_loc2_)
            {
               _loc1_.gap = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.clipAndEnableScrolling = false;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0072:
                     _loc1_.requestedColumnCount = 1;
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr0072);
         }
         addr0078:
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleUpdateComplete(param1);
         }
      }
      
      private function _PlayfieldItemInventoryListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(_loc3_)
                  {
                     addr0061:
                     _loc1_.id = "scrollBar";
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0074);
                     }
                     §§goto(addr0094);
                  }
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0094:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr009d);
                        }
                     }
                     §§goto(addr00af);
                  }
                  addr009d:
                  this.scrollBar = _loc1_;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00af:
                     BindingManager.executeBindings(this,"scrollBar",this.scrollBar);
                  }
                  §§goto(addr00bc);
               }
               addr00bc:
               return _loc1_;
            }
            §§goto(addr0094);
         }
         §§goto(addr0061);
      }
      
      private function _PlayfieldItemInventoryListSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && _loc2_))
         {
            _loc1_[0] = new Binding(this,null,null,"scrollBar.viewport","dataGroup");
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0066);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
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
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollBar() : CustomHScrollBar
      {
         return this._417762822scrollBar;
      }
      
      public function set scrollBar(param1:CustomHScrollBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._417762822scrollBar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._417762822scrollBar = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0064);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollBar",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0054);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0067);
            }
            addr008e:
            return;
         }
         §§goto(addr007f);
      }
   }
}

