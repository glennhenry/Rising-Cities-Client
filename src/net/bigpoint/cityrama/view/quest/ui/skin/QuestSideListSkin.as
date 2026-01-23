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
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.CustomVScrollBar;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class QuestSideListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _1131217616vScroller:CustomVScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function QuestSideListSkin()
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
            if(_loc3_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc3_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_ || _loc1_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0077:
                              §§pop().§§slot[5] = null;
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc4_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(!_loc4_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_)
                                          {
                                             addr00b7:
                                             super();
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   addr00e2:
                                                   §§push(§§newactivation());
                                                   if(!_loc4_)
                                                   {
                                                      addr00ea:
                                                      §§pop().§§slot[1] = this._QuestSideListSkin_bindingsSetup();
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         addr0102:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  addr0124:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr0137:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           addr014c:
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_quest_ui_skin_QuestSideListSkinWatcherSetupUtil");
                                                                              addr0153:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr017a:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0191:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return QuestSideListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01ac:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01fa:
                                                                                                this.blendMode = "normal";
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   this.mxmlContent = [this._QuestSideListSkin_DataGroup1_i(),this._QuestSideListSkin_CustomVScrollBar1_i()];
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      addr022d:
                                                                                                      this.currentState = "normal";
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr0239:
                                                                                                         states = [new State({
                                                                                                            "name":"normal",
                                                                                                            "overrides":[]
                                                                                                         }),new State({
                                                                                                            "name":"disabled",
                                                                                                            "overrides":[new SetProperty().initializeFromObject({
                                                                                                               "name":"alpha",
                                                                                                               "value":0.5
                                                                                                            })]
                                                                                                         })];
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr027d:
                                                                                                            i = 0;
                                                                                                            addr027b:
                                                                                                         }
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
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc4_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!(_loc4_ && _loc3_))
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
                                                                                                      while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !(_loc4_ && _loc2_));
                                                                                                      
                                                                                                      return;
                                                                                                      addr02f4:
                                                                                                   }
                                                                                                   §§goto(addr027b);
                                                                                                }
                                                                                                §§goto(addr02f4);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr022d);
                                                                                       }
                                                                                       §§goto(addr01fa);
                                                                                    }
                                                                                    §§goto(addr01ac);
                                                                                 }
                                                                                 §§goto(addr027d);
                                                                              }
                                                                              §§goto(addr01ac);
                                                                           }
                                                                           §§goto(addr027d);
                                                                        }
                                                                        §§goto(addr01fa);
                                                                     }
                                                                     §§goto(addr0191);
                                                                  }
                                                                  §§goto(addr027b);
                                                               }
                                                               §§goto(addr017a);
                                                            }
                                                            §§goto(addr01ac);
                                                         }
                                                         §§goto(addr0153);
                                                      }
                                                      §§goto(addr01ac);
                                                   }
                                                   §§goto(addr0124);
                                                }
                                                §§goto(addr022d);
                                             }
                                             §§goto(addr00e2);
                                          }
                                          §§goto(addr014c);
                                       }
                                       §§goto(addr01ac);
                                    }
                                    §§goto(addr0102);
                                 }
                                 §§goto(addr01ac);
                              }
                              §§goto(addr0239);
                           }
                           §§goto(addr00ea);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr00ea);
               }
               §§goto(addr0137);
            }
            §§goto(addr0077);
         }
         §§goto(addr00ea);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            QuestSideListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0036);
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
            this.vScroller.scrollpositionChanged();
         }
      }
      
      private function _QuestSideListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.top = 20;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.bottom = 15;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr004f:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr00bf);
               }
               addr006d:
               _loc1_.layout = this._QuestSideListSkin_VerticalLayout1_c();
               if(_loc2_)
               {
                  _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "dataGroup";
                     if(!_loc3_)
                     {
                        addr009f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00bf:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr00c8);
                              }
                           }
                           §§goto(addr00da);
                        }
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00bf);
               }
               addr00c8:
               this.dataGroup = _loc1_;
               if(_loc2_ || _loc3_)
               {
                  addr00da:
                  BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
               }
               return _loc1_;
            }
            §§goto(addr009f);
         }
         §§goto(addr004f);
      }
      
      private function _QuestSideListSkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(!_loc3_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "left";
               if(_loc2_)
               {
                  _loc1_.clipAndEnableScrolling = false;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.requestedMinRowCount = 1;
                     if(_loc2_)
                     {
                        §§goto(addr006f);
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0083);
            }
            addr006f:
            _loc1_.requestedMaxRowCount = 4;
            if(!(_loc3_ && _loc3_))
            {
               addr0083:
               _loc1_.rowHeight = 60;
               if(_loc2_)
               {
                  addr008e:
                  _loc1_.gap = 0;
               }
            }
            §§goto(addr0093);
         }
         addr0093:
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
      
      private function _QuestSideListSkin_CustomVScrollBar1_i() : CustomVScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CustomVScrollBar = new CustomVScrollBar();
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr0040:
                  _loc1_.id = "vScroller";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr006b:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr007c);
                           }
                           §§goto(addr0086);
                        }
                     }
                     addr007c:
                     this.vScroller = _loc1_;
                     if(!_loc2_)
                     {
                        addr0086:
                        BindingManager.executeBindings(this,"vScroller",this.vScroller);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr006b);
               }
               addr0093:
               return _loc1_;
            }
         }
         §§goto(addr0040);
      }
      
      private function _QuestSideListSkin_bindingsSetup() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && _loc3_))
         {
            _loc1_[0] = new Binding(this,null,null,"vScroller.viewport","dataGroup");
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._385593099dataGroup = param1;
                  addr0039:
                  if(_loc4_)
                  {
                     addr0050:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0050);
            }
            addr0077:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get vScroller() : CustomVScrollBar
      {
         return this._1131217616vScroller;
      }
      
      public function set vScroller(param1:CustomVScrollBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1131217616vScroller;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1131217616vScroller = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0078);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vScroller",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0061);
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
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr0042:
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0060);
            }
            addr0086:
            return;
         }
         §§goto(addr0042);
      }
   }
}

