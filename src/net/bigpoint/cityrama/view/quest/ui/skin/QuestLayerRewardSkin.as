package net.bigpoint.cityrama.view.quest.ui.skin
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
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class QuestLayerRewardSkin extends SparkSkin implements IBindingClient, IStateClient2
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
      
      public function QuestLayerRewardSkin()
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
         if(!_loc3_)
         {
            §§push(null);
            if(_loc4_ || Boolean(this))
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
                        addr0047:
                        §§pop().§§slot[3] = §§pop();
                        if(_loc4_ || _loc1_)
                        {
                           addr0059:
                           §§push(§§newactivation());
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0069:
                              §§pop().§§slot[5] = null;
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || _loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr00b1:
                                             super();
                                             if(!_loc3_)
                                             {
                                                mx_internal::_document = this;
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().§§slot[1] = this._QuestLayerRewardSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  addr010c:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr011f:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0134:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_quest_ui_skin_QuestLayerRewardSkinWatcherSetupUtil");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0147:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr0162:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       addr0180:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return QuestLayerRewardSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc3_ && _loc1_))
                                                                                       {
                                                                                          addr01a5:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             addr01d3:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!(_loc3_ && Boolean(this)))
                                                                                             {
                                                                                                addr0201:
                                                                                                this.mxmlContent = [this._QuestLayerRewardSkin_DataGroup1_i(),this._QuestLayerRewardSkin_CustomHScrollBar1_i()];
                                                                                                if(_loc4_ || _loc1_)
                                                                                                {
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr022c:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr025c:
                                                                                                         i = 0;
                                                                                                         addr025a:
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
                                                                                                                  if(!(_loc4_ || _loc2_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc3_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        var _temp_23:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_23;
                                                                                                                        if(!_loc3_)
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
                                                                                                      addr02c1:
                                                                                                   }
                                                                                                   §§goto(addr025a);
                                                                                                }
                                                                                                §§goto(addr02c1);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr022c);
                                                                                       }
                                                                                       §§goto(addr01d3);
                                                                                    }
                                                                                    §§goto(addr01a5);
                                                                                 }
                                                                                 §§goto(addr025c);
                                                                              }
                                                                              §§goto(addr022c);
                                                                           }
                                                                           §§goto(addr0162);
                                                                        }
                                                                        §§goto(addr0201);
                                                                     }
                                                                     §§goto(addr0180);
                                                                  }
                                                                  §§goto(addr0201);
                                                               }
                                                               §§goto(addr0134);
                                                            }
                                                            §§goto(addr01a5);
                                                         }
                                                         §§goto(addr0134);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                   §§goto(addr010c);
                                                }
                                                §§goto(addr022c);
                                             }
                                             §§goto(addr01a5);
                                          }
                                          §§goto(addr0180);
                                       }
                                       §§goto(addr01d3);
                                    }
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr011f);
                              }
                              §§goto(addr01d3);
                           }
                           §§goto(addr025c);
                        }
                        §§goto(addr0147);
                     }
                     §§goto(addr0069);
                  }
                  §§goto(addr0162);
               }
               §§goto(addr0059);
            }
            §§goto(addr0047);
         }
         §§goto(addr0162);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            QuestLayerRewardSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               §§goto(addr004a);
            }
            §§goto(addr0060);
         }
         addr004a:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_ || _loc3_)
            {
               addr0060:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
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
      
      private function _QuestLayerRewardSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = null;
         _loc1_ = new DataGroup();
         if(_loc3_)
         {
            _loc1_.left = 41;
            if(_loc3_)
            {
               _loc1_.right = 41;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     addr004f:
                     _loc1_.focusEnabled = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.layout = this._QuestLayerRewardSkin_HorizontalLayout1_c();
                        if(_loc3_)
                        {
                           _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                           if(_loc3_)
                           {
                              addr008d:
                              _loc1_.id = "dataGroup";
                              if(!_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       §§goto(addr00ac);
                                    }
                                 }
                                 §§goto(addr00ca);
                              }
                           }
                           addr00ac:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00ca:
                              this.dataGroup = _loc1_;
                              if(_loc3_ || _loc3_)
                              {
                                 BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                              }
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr00e9);
               }
               §§goto(addr004f);
            }
            §§goto(addr00ca);
         }
         addr00e9:
         return _loc1_;
      }
      
      private function _QuestLayerRewardSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.useVirtualLayout = true;
            if(!_loc2_)
            {
               _loc1_.requestedColumnCount = 1;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.gap = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0075:
                     _loc1_.clipAndEnableScrolling = false;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0075);
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
      
      private function _QuestLayerRewardSkin_CustomHScrollBar1_i() : CustomHScrollBar
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
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = -20;
                  if(_loc3_)
                  {
                     _loc1_.setStyle("skinClass",ItemviewHbarSkin);
                     if(_loc3_)
                     {
                        _loc1_.id = "hscrollerBar";
                        if(_loc3_)
                        {
                           addr0077:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0083:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr00a1);
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           addr00a1:
                           this.hscrollerBar = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00b3:
                              BindingManager.executeBindings(this,"hscrollerBar",this.hscrollerBar);
                           }
                           §§goto(addr00c0);
                        }
                     }
                     §§goto(addr00c0);
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0083);
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _QuestLayerRewardSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && _loc2_))
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
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._385593099dataGroup = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
         }
         addr007d:
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1684366319hscrollerBar = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hscrollerBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
         }
         addr007b:
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0040:
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0060);
            }
            addr0087:
            return;
         }
         §§goto(addr0040);
      }
   }
}

