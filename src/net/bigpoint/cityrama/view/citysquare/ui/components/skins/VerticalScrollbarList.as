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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.NonScrollingDataGroup;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VerticalScrollbarList extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:NonScrollingDataGroup;
      
      private var _1618627376verticalScrollBar:VScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function VerticalScrollbarList()
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
         if(_loc3_ || Boolean(this))
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr005c:
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006e:
                           §§push(§§newactivation());
                           if(!(_loc4_ && _loc2_))
                           {
                              addr007f:
                              §§pop().§§slot[5] = null;
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_)
                                          {
                                             super();
                                             if(_loc3_ || _loc1_)
                                             {
                                                addr00d7:
                                                mx_internal::_document = this;
                                                if(_loc3_)
                                                {
                                                   addr00e9:
                                                   §§push(§§newactivation());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§pop().§§slot[1] = this._VerticalScrollbarList_bindingsSetup();
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc3_)
                                                         {
                                                            addr0118:
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(_loc3_)
                                                               {
                                                                  addr012b:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              addr0166:
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_citysquare_ui_components_skins_VerticalScrollbarListWatcherSetupUtil");
                                                                              if(_loc3_ || _loc1_)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr0188:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr019f:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return VerticalScrollbarList[param1];
                                                                                       },bindings,watchers);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01bc:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                addr0210:
                                                                                                this.mxmlContent = [this._VerticalScrollbarList_HGroup1_c()];
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr0228:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0235:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr0265:
                                                                                                         i = 0;
                                                                                                         addr0263:
                                                                                                      }
                                                                                                      var _temp_18:*;
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
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!(_loc4_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc4_ && _loc1_))
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
                                                                                                      while(var _temp_18:* = §§pop(), §§pop().§§slot[4] = _temp_18, _loc3_ || _loc2_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02e1:
                                                                                                   }
                                                                                                   §§goto(addr0263);
                                                                                                }
                                                                                                §§goto(addr0235);
                                                                                             }
                                                                                             §§goto(addr0228);
                                                                                          }
                                                                                          §§goto(addr0235);
                                                                                       }
                                                                                       §§goto(addr0263);
                                                                                    }
                                                                                    §§goto(addr02e1);
                                                                                 }
                                                                                 §§goto(addr0265);
                                                                              }
                                                                              §§goto(addr02e1);
                                                                           }
                                                                           §§goto(addr0188);
                                                                        }
                                                                        §§goto(addr0210);
                                                                     }
                                                                     §§goto(addr019f);
                                                                  }
                                                                  §§goto(addr02e1);
                                                               }
                                                               §§goto(addr0166);
                                                            }
                                                            §§goto(addr02e1);
                                                         }
                                                         §§goto(addr0188);
                                                      }
                                                      §§goto(addr01bc);
                                                   }
                                                   §§goto(addr0118);
                                                }
                                                §§goto(addr01bc);
                                             }
                                             §§goto(addr019f);
                                          }
                                       }
                                       §§goto(addr0210);
                                    }
                                    §§goto(addr00d7);
                                 }
                                 §§goto(addr02e1);
                              }
                              §§goto(addr0235);
                           }
                           §§goto(addr012b);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr012b);
               }
               §§goto(addr006e);
            }
            §§goto(addr005c);
         }
         §§goto(addr012b);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && VerticalScrollbarList))
         {
            VerticalScrollbarList._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr0034:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0034);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _VerticalScrollbarList_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.gap = 0;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._VerticalScrollbarList_NonScrollingDataGroup1_i(),this._VerticalScrollbarList_VScrollBar1_i()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr0073);
            }
         }
         addr008b:
         return _loc1_;
      }
      
      private function _VerticalScrollbarList_NonScrollingDataGroup1_i() : NonScrollingDataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:NonScrollingDataGroup = new NonScrollingDataGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  §§goto(addr004a);
               }
               §§goto(addr0090);
            }
            §§goto(addr0087);
         }
         addr004a:
         _loc1_.layout = this._VerticalScrollbarList_VerticalLayout1_c();
         if(_loc2_)
         {
            _loc1_.id = "dataGroup";
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0087:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr0090:
                        this.dataGroup = _loc1_;
                        if(_loc2_)
                        {
                           addr009a:
                           BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr0090);
            }
            §§goto(addr009a);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _VerticalScrollbarList_VerticalLayout1_c() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.variableRowHeight = true;
               if(!_loc2_)
               {
                  addr004e:
                  _loc1_.useVirtualLayout = false;
               }
            }
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _VerticalScrollbarList_VScrollBar1_i() : VScrollBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VScrollBar = new VScrollBar();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.styleName = "slimVScrollBar";
               if(!_loc2_)
               {
                  _loc1_.id = "verticalScrollBar";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0075);
                           }
                           §§goto(addr0087);
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr006c);
               }
               addr0075:
               this.verticalScrollBar = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr0087:
                  BindingManager.executeBindings(this,"verticalScrollBar",this.verticalScrollBar);
               }
               return _loc1_;
            }
         }
         §§goto(addr006c);
      }
      
      private function _VerticalScrollbarList_bindingsSetup() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_[0] = new Binding(this,null,null,"verticalScrollBar.viewport","dataGroup");
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : NonScrollingDataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:NonScrollingDataGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385593099dataGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get verticalScrollBar() : VScrollBar
      {
         return this._1618627376verticalScrollBar;
      }
      
      public function set verticalScrollBar(param1:VScrollBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1618627376verticalScrollBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1618627376verticalScrollBar = param1;
                  addr0039:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verticalScrollBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0069);
               }
            }
            addr0078:
            return;
         }
         §§goto(addr0039);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr0055);
      }
   }
}

