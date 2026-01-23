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
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.BuildCostsComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.SecurityStatusComponent;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerEmergencyComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1075436389buildCostsComponent:BuildCostsComponent;
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _698432686securityStatus:SecurityStatusComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerEmergencyComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  addr0041:
                  this.mxmlContent = [this._FieldInfoLayerEmergencyComponentSkin_VGroup1_c(),this._FieldInfoLayerEmergencyComponentSkin_VGroup2_c()];
                  if(!_loc2_)
                  {
                     this.currentState = "normal";
                     if(!_loc2_)
                     {
                        addr006d:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr006d);
               }
               addr0095:
               return;
            }
         }
         §§goto(addr0041);
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
               addr0022:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0022);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib3_c()];
                  §§goto(addr004f);
               }
               §§goto(addr007f);
            }
         }
         addr004f:
         if(_loc2_ || _loc2_)
         {
            addr007f:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.width = 227;
                  addr0051:
                  if(_loc3_ || Boolean(this))
                  {
                     addr006f:
                     _loc1_.height = 12;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr006f);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  addr0055:
                  if(!_loc3_)
                  {
                     addr006b:
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0089:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr006b);
            }
         }
         §§goto(addr0055);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(!_loc2_)
               {
                  _loc1_.width = 227;
                  if(!_loc2_)
                  {
                     _loc1_.height = 27;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0077:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               §§goto(addr007b);
            }
            §§goto(addr0077);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.top = 12;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 226;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0064:
                     _loc1_.gap = 8;
                     if(_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!_loc3_)
                        {
                           addr0078:
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr0094);
                           }
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr0078);
                  }
                  addr0094:
                  _loc1_.bottom = 27;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._FieldInfoLayerEmergencyComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerEmergencyComponentSkin_VGroup3_c()];
                     if(!_loc3_)
                     {
                        addr00b5:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00c1:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr00c1);
                  }
                  addr00c5:
                  return _loc1_;
               }
               §§goto(addr00c1);
            }
            §§goto(addr0064);
         }
         §§goto(addr0078);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.id = "headerComponent";
            if(_loc2_ || _loc2_)
            {
               addr004d:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0075:
                        this.headerComponent = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0075);
         }
         §§goto(addr004d);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "top";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(this))
               {
                  addr0055:
                  _loc1_.width = 226;
                  if(_loc3_)
                  {
                     §§goto(addr0060);
                  }
               }
               §§goto(addr00ad);
            }
            addr0060:
            _loc1_.gap = 2;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._FieldInfoLayerEmergencyComponentSkin_LocaLabel1_i(),this._FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerEmergencyComponentSkin_Group1_c(),this._FieldInfoLayerEmergencyComponentSkin_VGroup4_c()];
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00ad:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 207;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "infoLabel";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0064:
                     _loc1_.id = "infoLabel";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0086);
                           }
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0099);
                  }
                  addr0086:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr008f:
                     this.infoLabel = _loc1_;
                     if(_loc3_)
                     {
                        addr0099:
                        BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0064);
            }
            §§goto(addr0099);
         }
         §§goto(addr008f);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!_loc2_)
               {
                  §§goto(addr003f);
               }
               §§goto(addr004a);
            }
            addr003f:
            _loc1_.id = "splitter";
            if(!_loc2_)
            {
               addr004a:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0073:
                        this.splitter = _loc1_;
                        if(_loc3_)
                        {
                           addr007d:
                           BindingManager.executeBindings(this,"splitter",this.splitter);
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0073);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 4;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr003d:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.gap = 8;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc3_))
               {
                  addr0056:
                  _loc1_.mxmlContent = [this._FieldInfoLayerEmergencyComponentSkin_Group2_c(),this._FieldInfoLayerEmergencyComponentSkin_TimerBarComponent1_i()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0074);
                  }
                  §§goto(addr0080);
               }
               addr0074:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0080:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr0056);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._FieldInfoLayerEmergencyComponentSkin_SecurityStatusComponent1_i(),this._FieldInfoLayerEmergencyComponentSkin_BuildCostsComponent1_i()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_SecurityStatusComponent1_i() : SecurityStatusComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SecurityStatusComponent = new SecurityStatusComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.visible = false;
            if(_loc3_)
            {
               _loc1_.includeInLayout = false;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "securityStatus";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0064:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr0096:
                              this.securityStatus = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a8:
                                 BindingManager.executeBindings(this,"securityStatus",this.securityStatus);
                              }
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr0096);
                  }
                  addr00b5:
                  return _loc1_;
               }
               §§goto(addr00a8);
            }
            §§goto(addr0064);
         }
         §§goto(addr00a8);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_BuildCostsComponent1_i() : BuildCostsComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildCostsComponent = new BuildCostsComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.visible = false;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.includeInLayout = false;
               if(_loc2_)
               {
                  _loc1_.id = "buildCostsComponent";
                  if(_loc2_ || Boolean(this))
                  {
                     addr0067:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0097:
                              this.buildCostsComponent = _loc1_;
                              if(_loc2_)
                              {
                                 addr00a1:
                                 BindingManager.executeBindings(this,"buildCostsComponent",this.buildCostsComponent);
                              }
                              §§goto(addr00ae);
                           }
                           §§goto(addr00a1);
                        }
                        addr00ae:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr0067);
            }
            §§goto(addr00a1);
         }
         §§goto(addr0067);
      }
      
      private function _FieldInfoLayerEmergencyComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.showBoostButton = false;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.width = 181;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "harvestProgress";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007e:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              §§goto(addr008f);
                           }
                           §§goto(addr0099);
                        }
                     }
                     addr008f:
                     this.harvestProgress = _loc1_;
                     if(_loc2_)
                     {
                        addr0099:
                        BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr007e);
               }
               addr00a6:
               return _loc1_;
            }
            §§goto(addr007e);
         }
         §§goto(addr0099);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildCostsComponent() : BuildCostsComponent
      {
         return this._1075436389buildCostsComponent;
      }
      
      public function set buildCostsComponent(param1:BuildCostsComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1075436389buildCostsComponent;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1075436389buildCostsComponent = param1;
                  addr003f:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildCostsComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestProgress() : TimerBarComponent
      {
         return this._1255241910harvestProgress;
      }
      
      public function set harvestProgress(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1255241910harvestProgress;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1255241910harvestProgress = param1;
                  if(_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1449269008headerComponent = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1213523686infoLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityStatus() : SecurityStatusComponent
      {
         return this._698432686securityStatus;
      }
      
      public function set securityStatus(param1:SecurityStatusComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._698432686securityStatus;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._698432686securityStatus = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityStatus",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1926588729splitter = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr005b);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
   }
}

