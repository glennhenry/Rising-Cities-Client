package net.bigpoint.cityrama.view.residentialBook.ui.skins
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
   import spark.components.DataGrid;
   import spark.components.DataGroup;
   import spark.layouts.TileLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class NeedsListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DataGrid;
      
      public function NeedsListSkin()
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(_loc4_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || Boolean(this))
                           {
                              addr0077:
                              §§pop().§§slot[5] = null;
                              addr0076:
                              if(_loc4_ || Boolean(this))
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc3_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(!_loc3_)
                                    {
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc4_ || _loc1_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(!_loc3_)
                                          {
                                             addr00be:
                                             super();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr00ce:
                                                mx_internal::_document = this;
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr00f8:
                                                      §§pop().§§slot[1] = this._NeedsListSkin_bindingsSetup();
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(_loc4_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!_loc3_)
                                                               {
                                                                  addr012a:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0135:
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_skins_NeedsListSkinWatcherSetupUtil");
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    addr0189:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc3_ && Boolean(this)))
                                                                                    {
                                                                                       addr01a7:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return NeedsListSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          addr01cc:
                                                                                          mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr01f2:
                                                                                             mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                this.mxmlContent = [this._NeedsListSkin_DataGroup1_i()];
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0228:
                                                                                                   this.currentState = "normal";
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      this.addEventListener("creationComplete",this.___NeedsListSkin_SparkSkin1_creationComplete);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr024d:
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
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr0290:
                                                                                                            i = 0;
                                                                                                            addr028e:
                                                                                                         }
                                                                                                      }
                                                                                                      var _temp_20:*;
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
                                                                                                                  if(_loc3_ && Boolean(this))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc4_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc3_ && Boolean(this)))
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
                                                                                                      while(var _temp_20:* = §§pop(), §§pop().§§slot[4] = _temp_20, _loc4_ || Boolean(this));
                                                                                                      
                                                                                                      return;
                                                                                                      addr030f:
                                                                                                   }
                                                                                                   §§goto(addr024d);
                                                                                                }
                                                                                                §§goto(addr028e);
                                                                                             }
                                                                                             §§goto(addr030f);
                                                                                          }
                                                                                          §§goto(addr028e);
                                                                                       }
                                                                                       §§goto(addr0228);
                                                                                    }
                                                                                    §§goto(addr024d);
                                                                                 }
                                                                                 §§goto(addr0290);
                                                                              }
                                                                              §§goto(addr028e);
                                                                           }
                                                                           §§goto(addr0290);
                                                                        }
                                                                        §§goto(addr030f);
                                                                     }
                                                                     §§goto(addr01a7);
                                                                  }
                                                                  §§goto(addr0228);
                                                               }
                                                               §§goto(addr0189);
                                                            }
                                                            §§goto(addr01f2);
                                                         }
                                                         §§goto(addr0290);
                                                      }
                                                      §§goto(addr0135);
                                                   }
                                                   §§goto(addr012a);
                                                }
                                                §§goto(addr028e);
                                             }
                                             §§goto(addr01cc);
                                          }
                                       }
                                    }
                                    §§goto(addr01f2);
                                 }
                                 §§goto(addr01a7);
                              }
                              §§goto(addr00be);
                           }
                           §§goto(addr00f8);
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0135);
            }
            §§goto(addr0077);
         }
         §§goto(addr012a);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            NeedsListSkin._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0041);
                  }
               }
               else
               {
                  addr0047:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0041:
            return;
         }
         §§goto(addr0047);
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
      
      private function handleCreationComplete() : void
      {
      }
      
      private function _NeedsListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.height = 150;
            if(!_loc2_)
            {
               addr002f:
               _loc1_.focusEnabled = false;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.layout = this._NeedsListSkin_TileLayout1_c();
                  §§goto(addr0041);
               }
               §§goto(addr0067);
            }
            addr0041:
            if(_loc3_)
            {
               _loc1_.id = "dataGroup";
               if(_loc3_)
               {
                  addr0067:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0088:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0091);
                        }
                        §§goto(addr00a3);
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0088);
            }
            addr0091:
            this.dataGroup = _loc1_;
            if(_loc3_ || _loc3_)
            {
               addr00a3:
               BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
            }
            return _loc1_;
         }
         §§goto(addr002f);
      }
      
      private function _NeedsListSkin_TileLayout1_c() : TileLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TileLayout = new TileLayout();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.useVirtualLayout = true;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.verticalGap = 1;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalGap = 2;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.columnWidth = 72;
                     if(_loc2_)
                     {
                        _loc1_.rowHeight = 69;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0098:
                           _loc1_.requestedColumnCount = 3;
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.clipAndEnableScrolling = false;
                           }
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr0098);
                  }
               }
               addr00b0:
               return _loc1_;
            }
         }
         §§goto(addr0098);
      }
      
      public function ___NeedsListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handleCreationComplete();
         }
      }
      
      private function _NeedsListSkin_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§pop()[0] = new Binding(this,function():String
                     {
                        var _loc1_:* = getStyle("needTooltip");
                        return _loc1_ == undefined ? null : String(_loc1_);
                     },null,"dataGroup.toolTip");
                     addr0059:
                     addr0057:
                     return result;
                  }
               }
               §§goto(addr0059);
            }
            §§goto(addr0057);
         }
         §§goto(addr0059);
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
                  addr003e:
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005b);
            }
            addr0082:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DataGrid
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DataGrid) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr005e);
      }
   }
}

