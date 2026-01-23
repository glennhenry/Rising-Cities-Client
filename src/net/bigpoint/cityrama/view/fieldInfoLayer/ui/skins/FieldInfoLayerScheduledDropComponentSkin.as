package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerScheduledDropComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerScheduledDropComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  this.mxmlContent = [this._FieldInfoLayerScheduledDropComponentSkin_VGroup1_c(),this._FieldInfoLayerScheduledDropComponentSkin_VGroup2_c()];
                  if(_loc1_)
                  {
                     addr0067:
                     this.currentState = "normal";
                     if(_loc1_ || _loc2_)
                     {
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr0067);
            }
         }
         addr00ad:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0036);
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
      
      private function _FieldInfoLayerScheduledDropComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib3_c()];
                  if(!_loc3_)
                  {
                     addr007d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0091:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr0091);
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!_loc3_)
               {
                  _loc1_.width = 227;
                  §§goto(addr0052);
               }
               §§goto(addr006a);
            }
            §§goto(addr0088);
         }
         addr0052:
         if(_loc2_)
         {
            addr006a:
            _loc1_.height = 12;
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0080:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr0080);
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 227;
                  if(!_loc3_)
                  {
                     _loc1_.height = 27;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0070);
                     }
                     §§goto(addr0084);
                  }
               }
               addr0070:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0084:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0088);
            }
         }
         addr0088:
         return _loc1_;
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 12;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.width = 226;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.gap = 5;
                     addr004d:
                     if(_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.horizontalAlign = "center";
                           if(!_loc3_)
                           {
                              addr0077:
                              _loc1_.bottom = 27;
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoLayerScheduledDropComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerScheduledDropComponentSkin_VGroup3_c()];
                                 addr008a:
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr00b4);
                                 }
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr0077);
                  }
                  addr00b4:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00c8:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0077);
            }
            §§goto(addr004d);
         }
         §§goto(addr006d);
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "headerComponent";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0064);
                     }
                     §§goto(addr006e);
                  }
               }
               addr0064:
               this.headerComponent = _loc1_;
               if(!_loc2_)
               {
                  addr006e:
                  BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
               }
               return _loc1_;
            }
         }
         §§goto(addr006e);
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "top";
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0031);
            }
            §§goto(addr006e);
         }
         addr0031:
         _loc1_.horizontalAlign = "center";
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.width = 226;
            if(_loc2_ || _loc2_)
            {
               _loc1_.gap = 2;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerScheduledDropComponentSkin_LocaLabel1_i(),this._FieldInfoLayerScheduledDropComponentSkin_Group1_c(),this._FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerScheduledDropComponentSkin_Group2_c(),this._FieldInfoLayerScheduledDropComponentSkin_TimerBarComponent1_i()];
                  addr006e:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00bc:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00c0);
            }
            §§goto(addr00bc);
         }
         addr00c0:
         return _loc1_;
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 207;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.styleName = "infoLabel";
                  if(_loc2_)
                  {
                     addr0064:
                     _loc1_.id = "infoLabel";
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr0099:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr00a2);
                              }
                              §§goto(addr00ac);
                           }
                        }
                        addr00a2:
                        this.infoLabel = _loc1_;
                        if(!_loc3_)
                        {
                           addr00ac:
                           BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                        }
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0099);
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 1;
            if(!(_loc3_ && _loc3_))
            {
               addr003d:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "splitter";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr008b);
                           }
                        }
                        §§goto(addr0095);
                     }
                     addr008b:
                     this.splitter = _loc1_;
                     if(_loc2_)
                     {
                        addr0095:
                        BindingManager.executeBindings(this,"splitter",this.splitter);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr007a);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0095);
         }
         §§goto(addr008b);
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 2;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0042:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0046);
            }
            §§goto(addr0042);
         }
         addr0046:
         return _loc1_;
      }
      
      private function _FieldInfoLayerScheduledDropComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.showBoostButton = false;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 181;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "harvestProgress";
                  if(_loc3_)
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr0097:
                              this.harvestProgress = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a9:
                                 BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0066);
            }
            §§goto(addr0097);
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestProgress() : TimerBarComponent
      {
         return this._1255241910harvestProgress;
      }
      
      public function set harvestProgress(param1:TimerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1255241910harvestProgress;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1255241910harvestProgress = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
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
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : InfoLayerHeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:InfoLayerHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1449269008headerComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1449269008headerComponent = param1;
                  addr003f:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1213523686infoLabel = param1;
                  addr0042:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get splitter() : BriskImageDynaLib
      {
         return this._1926588729splitter;
      }
      
      public function set splitter(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1926588729splitter;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1926588729splitter = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FieldInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FieldInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
   }
}

