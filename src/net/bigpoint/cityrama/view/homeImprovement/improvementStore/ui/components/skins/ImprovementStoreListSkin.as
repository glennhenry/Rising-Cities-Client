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
   import net.bigpoint.cityrama.view.miniLayer.components.skins.ItemviewHbarSkin;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ImprovementStoreListSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function ImprovementStoreListSkin()
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
         if(!(_loc4_ && _loc1_))
         {
            §§push(null);
            if(!(_loc4_ && _loc2_))
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0047:
                     §§push(null);
                     if(_loc3_)
                     {
                        addr004d:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || Boolean(this))
                           {
                              addr0066:
                              §§pop().§§slot[5] = null;
                              addr0065:
                              if(_loc3_ || _loc2_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(_loc3_ || _loc1_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc4_)
                                          {
                                             super();
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr00bc:
                                                mx_internal::_document = this;
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§pop().§§slot[1] = this._ImprovementStoreListSkin_bindingsSetup();
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc3_)
                                                         {
                                                            addr00fb:
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr0115:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           addr0135:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_skins_ImprovementStoreListSkinWatcherSetupUtil");
                                                                              addr013d:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr015d:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr016c:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       addr018a:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return ImprovementStoreListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01a8:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01ce:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01f5:
                                                                                                this.mxmlContent = [this._ImprovementStoreListSkin_DataGroup1_i(),this._ImprovementStoreListSkin_CustomHScrollBar1_i()];
                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                {
                                                                                                   addr0214:
                                                                                                   this.currentState = "normal";
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0220:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         addr0258:
                                                                                                         i = 0;
                                                                                                         addr0256:
                                                                                                      }
                                                                                                      var _temp_16:*;
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
                                                                                                                  if(_loc4_ && _loc1_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc4_ && _loc2_))
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
                                                                                                      while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !_loc4_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02c6:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0256);
                                                                                             }
                                                                                             §§goto(addr0220);
                                                                                          }
                                                                                          §§goto(addr0256);
                                                                                       }
                                                                                       §§goto(addr01f5);
                                                                                    }
                                                                                    §§goto(addr01ce);
                                                                                 }
                                                                                 §§goto(addr0258);
                                                                              }
                                                                              §§goto(addr0214);
                                                                           }
                                                                           §§goto(addr0258);
                                                                        }
                                                                        §§goto(addr01ce);
                                                                     }
                                                                     §§goto(addr018a);
                                                                  }
                                                                  §§goto(addr01f5);
                                                               }
                                                               §§goto(addr013d);
                                                            }
                                                            §§goto(addr01ce);
                                                         }
                                                         §§goto(addr016c);
                                                      }
                                                      §§goto(addr01a8);
                                                   }
                                                   §§goto(addr0115);
                                                }
                                                §§goto(addr02c6);
                                             }
                                             §§goto(addr01f5);
                                          }
                                       }
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr015d);
                              }
                              §§goto(addr0135);
                           }
                           §§goto(addr00fb);
                        }
                        §§goto(addr01ce);
                     }
                     §§goto(addr0066);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr015d);
            }
            §§goto(addr004d);
         }
         §§goto(addr0047);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            ImprovementStoreListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0042);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0042:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
            if(!(_loc3_ && _loc2_))
            {
               §§pop().scrollpositionChanged();
               if(_loc2_ || _loc2_)
               {
                  §§push(this.hscrollerBar);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!§§pop().decrementButton.toolTip)
                     {
                        if(!_loc3_)
                        {
                           §§push(this.hscrollerBar);
                           if(_loc2_)
                           {
                              §§pop().decrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.leftArrow"));
                              if(!_loc3_)
                              {
                                 addr0093:
                                 §§push(this.hscrollerBar);
                                 if(_loc2_ || Boolean(param1))
                                 {
                                    addr00b1:
                                    if(!§§pop().incrementButton.toolTip)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00c3:
                                          this.hscrollerBar.incrementButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.rightArrow"));
                                          addr00bf:
                                       }
                                    }
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00e2);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00b1);
               }
               addr00e2:
               return;
            }
            §§goto(addr00b1);
         }
         §§goto(addr00bf);
      }
      
      private function _ImprovementStoreListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 41;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.right = 41;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.focusEnabled = false;
                     if(!_loc2_)
                     {
                        _loc1_.layout = this._ImprovementStoreListSkin_HorizontalLayout1_c();
                        if(_loc3_ || _loc3_)
                        {
                           addr008d:
                           _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                           if(_loc3_ || Boolean(this))
                           {
                              addr00a5:
                              _loc1_.id = "dataGroup";
                              if(!_loc2_)
                              {
                                 addr00b0:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00d8:
                                          this.dataGroup = _loc1_;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr00ea:
                                             BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                          }
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr00ea);
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr00a5);
                  }
                  addr00f7:
                  return _loc1_;
               }
               §§goto(addr00d8);
            }
            §§goto(addr008d);
         }
         §§goto(addr00ea);
      }
      
      private function _ImprovementStoreListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.requestedColumnCount = 1;
               if(!_loc2_)
               {
                  _loc1_.columnWidth = 78;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.gap = 0;
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr0088);
                  }
               }
               addr007e:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  addr0088:
                  _loc1_.clipAndEnableScrolling = false;
               }
               §§goto(addr008d);
            }
            addr008d:
            return _loc1_;
         }
         §§goto(addr007e);
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
      
      private function _ImprovementStoreListSkin_CustomHScrollBar1_i() : CustomHScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomHScrollBar = new CustomHScrollBar();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                  if(!_loc2_)
                  {
                     _loc1_.id = "hscrollerBar";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00a5:
                                 this.hscrollerBar = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                                 }
                              }
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr0088);
                  }
                  addr00c4:
                  return _loc1_;
               }
            }
         }
         §§goto(addr00a5);
      }
      
      private function _ImprovementStoreListSkin_bindingsSetup() : Array
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
               if(!_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684366319hscrollerBar;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1684366319hscrollerBar = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr007a);
               }
            }
            addr0089:
            return;
         }
         §§goto(addr007a);
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
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  addr0037:
                  if(!_loc4_)
                  {
                     §§goto(addr004f);
                  }
                  §§goto(addr0067);
               }
               addr004f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
            addr0076:
            return;
         }
         §§goto(addr0037);
      }
   }
}

