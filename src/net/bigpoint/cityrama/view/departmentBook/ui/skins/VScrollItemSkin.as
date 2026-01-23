package net.bigpoint.cityrama.view.departmentBook.ui.skins
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
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VScrollItemSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _1618627376verticalScrollBar:VScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function VScrollItemSkin()
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
         if(!_loc4_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(null);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(_loc3_)
                        {
                           addr0059:
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              addr0062:
                              §§pop().§§slot[5] = null;
                              if(_loc3_ || _loc2_)
                              {
                                 this.mx_internal::_bindings = [];
                                 if(!_loc4_)
                                 {
                                    this.mx_internal::_watchers = [];
                                    if(_loc3_)
                                    {
                                       addr008a:
                                       this.mx_internal::_bindingsByDestination = {};
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.mx_internal::_bindingsBeginWithWord = {};
                                          if(_loc3_)
                                          {
                                             addr00a8:
                                             super();
                                             if(!_loc4_)
                                             {
                                                mx_internal::_document = this;
                                                if(_loc3_)
                                                {
                                                   addr00c3:
                                                   §§push(§§newactivation());
                                                   if(_loc3_)
                                                   {
                                                      addr00ca:
                                                      §§pop().§§slot[1] = this._VScrollItemSkin_bindingsSetup();
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().§§slot[2] = [];
                                                            if(!_loc4_)
                                                            {
                                                               addr00f6:
                                                               §§push(§§newactivation());
                                                               if(!_loc4_)
                                                               {
                                                                  addr00fe:
                                                                  §§pop().§§slot[3] = this;
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_watcherSetupUtil == null)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_departmentBook_ui_skins_VScrollItemSkinWatcherSetupUtil");
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 addr0148:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr0163:
                                                                                    §§pop().§§slot[5]["init"](null);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       addr0182:
                                                                                       _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                       {
                                                                                          return target[param1];
                                                                                       },function(param1:String):*
                                                                                       {
                                                                                          return VScrollItemSkin[param1];
                                                                                       },bindings,watchers);
                                                                                       if(!(_loc4_ && Boolean(this)))
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
                                                                                                this.mxmlContent = [this._VScrollItemSkin_HGroup1_c()];
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   this.currentState = "normal";
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      addr0222:
                                                                                                      states = [new State({
                                                                                                         "name":"normal",
                                                                                                         "overrides":[]
                                                                                                      }),new State({
                                                                                                         "name":"disabled",
                                                                                                         "overrides":[]
                                                                                                      })];
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0259:
                                                                                                         i = 0;
                                                                                                         addr0257:
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
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc3_ || _loc1_)
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
                                                                                                   while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !_loc4_);
                                                                                                   
                                                                                                   return;
                                                                                                   addr02bb:
                                                                                                }
                                                                                                §§goto(addr0222);
                                                                                             }
                                                                                             §§goto(addr02bb);
                                                                                          }
                                                                                          §§goto(addr0222);
                                                                                       }
                                                                                       §§goto(addr01f5);
                                                                                    }
                                                                                    §§goto(addr0257);
                                                                                 }
                                                                                 §§goto(addr0259);
                                                                              }
                                                                              §§goto(addr01a8);
                                                                           }
                                                                           §§goto(addr0163);
                                                                        }
                                                                        §§goto(addr0257);
                                                                     }
                                                                     §§goto(addr0182);
                                                                  }
                                                                  §§goto(addr01ce);
                                                               }
                                                               §§goto(addr0259);
                                                            }
                                                            §§goto(addr01a8);
                                                         }
                                                         §§goto(addr0259);
                                                      }
                                                      §§goto(addr02bb);
                                                   }
                                                   §§goto(addr00fe);
                                                }
                                                §§goto(addr0148);
                                             }
                                             §§goto(addr01f5);
                                          }
                                          §§goto(addr00f6);
                                       }
                                       §§goto(addr00c3);
                                    }
                                    §§goto(addr00a8);
                                 }
                                 §§goto(addr008a);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr0163);
               }
               §§goto(addr0059);
            }
            §§goto(addr0062);
         }
         §§goto(addr00fe);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && VScrollItemSkin))
         {
            VScrollItemSkin._watcherSetupUtil = param1;
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
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.commitProperties();
            if(!_loc1_)
            {
               if(this._isDirty)
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr0040:
                     this._isDirty = false;
                  }
               }
               §§goto(addr0046);
            }
            §§goto(addr0040);
         }
         addr0046:
      }
      
      private function _VScrollItemSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._VScrollItemSkin_DataGroup1_i(),this._VScrollItemSkin_VScrollBar1_i()];
                  addr0040:
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007e:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0040);
         }
         §§goto(addr007e);
      }
      
      private function _VScrollItemSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.layout = this._VScrollItemSkin_VerticalLayout1_c();
                  addr003f:
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "dataGroup";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0084:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr008d);
                              }
                           }
                           §§goto(addr009f);
                        }
                        addr008d:
                        this.dataGroup = _loc1_;
                        if(_loc2_ || _loc3_)
                        {
                           addr009f:
                           BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                        }
                        §§goto(addr00ac);
                     }
                     addr00ac:
                     return _loc1_;
                  }
                  §§goto(addr0084);
               }
            }
            §§goto(addr008d);
         }
         §§goto(addr003f);
      }
      
      private function _VScrollItemSkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc2_)
         {
            _loc1_.gap = 2;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "left";
               if(_loc2_)
               {
                  _loc1_.clipAndEnableScrolling = true;
                  if(!_loc3_)
                  {
                     addr004f:
                     _loc1_.useVirtualLayout = true;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004f);
      }
      
      private function _VScrollItemSkin_VScrollBar1_i() : VScrollBar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VScrollBar = new VScrollBar();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "characterScrollBar";
               addr003c:
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "verticalScrollBar";
                  if(_loc2_)
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr008a:
                              this.verticalScrollBar = _loc1_;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"verticalScrollBar",this.verticalScrollBar);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr008a);
            }
            §§goto(addr0067);
         }
         §§goto(addr003c);
      }
      
      private function _VScrollItemSkin_bindingsSetup() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(!_loc3_)
         {
            _loc1_[0] = new Binding(this,null,null,"verticalScrollBar.viewport","dataGroup");
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
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0067);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1618627376verticalScrollBar = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verticalScrollBar",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
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
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  addr0039:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0039);
      }
   }
}

