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
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerAcademyComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _953824287infoAcademicLabel:LocaLabel;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerAcademyComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  addr0049:
                  this.mxmlContent = [this._FieldInfoLayerAcademyComponentSkin_VGroup1_c(),this._FieldInfoLayerAcademyComponentSkin_VGroup2_c()];
                  if(!_loc2_)
                  {
                     this.currentState = "normal";
                     if(_loc1_ || _loc1_)
                     {
                        addr007d:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     return;
                  }
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr0049);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0042);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr0042:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               addr0038:
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr0056);
               }
               §§goto(addr007e);
            }
            addr0056:
            _loc1_.mxmlContent = [this._FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib3_c()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr007e:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  if(_loc2_)
                  {
                     addr0060:
                     _loc1_.height = 12;
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007e:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr007e);
            }
            §§goto(addr0060);
         }
         addr0082:
         return _loc1_;
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!_loc2_)
               {
                  _loc1_.width = 227;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0070:
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0070);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr0070);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.width = 227;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.height = 27;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0085:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0085);
               }
            }
            §§goto(addr0079);
         }
         §§goto(addr0085);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.top = 12;
            if(_loc2_ || _loc2_)
            {
               _loc1_.width = 226;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     addr0062:
                     _loc1_.gap = 5;
                     if(_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!_loc3_)
                        {
                           addr0076:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              §§goto(addr0080);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr0076);
               }
               addr0080:
               _loc1_.bottom = 27;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerAcademyComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerAcademyComponentSkin_VGroup3_c()];
                  addr0093:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr00bf:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00d3:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00d3);
               }
               addr00d7:
               return _loc1_;
            }
         }
         §§goto(addr0062);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "headerComponent";
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0073:
                        this.headerComponent = _loc1_;
                        if(_loc3_ || _loc3_)
                        {
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0073);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "top";
            if(!_loc2_)
            {
               addr0033:
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 226;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0062:
                     _loc1_.gap = 2;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._FieldInfoLayerAcademyComponentSkin_Group1_c(),this._FieldInfoLayerAcademyComponentSkin_LocaLabel1_i(),this._FieldInfoLayerAcademyComponentSkin_Group2_c(),this._FieldInfoLayerAcademyComponentSkin_LocaLabel2_i(),this._FieldInfoLayerAcademyComponentSkin_Group3_c(),this._FieldInfoLayerAcademyComponentSkin_TimerBarComponent1_i(),this._FieldInfoLayerAcademyComponentSkin_Group4_c(),this._FieldInfoLayerAcademyComponentSkin_VGroup4_c()];
                        §§goto(addr0074);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr0062);
            }
            addr0074:
            if(!_loc2_)
            {
               addr00ba:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr00c6:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 4;
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.width = 207;
            if(_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_)
               {
                  _loc1_.styleName = "infoLabel";
                  if(!_loc3_)
                  {
                     _loc1_.id = "infoLabel";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr005f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0081:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr008a:
                                 this.infoLabel = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr009c:
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr009c);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr0081);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 4;
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0048:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.width = 207;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.styleName = "infoLayerStatus";
                  §§goto(addr0045);
               }
               §§goto(addr005d);
            }
            addr0045:
            if(_loc2_)
            {
               addr005d:
               _loc1_.id = "infoAcademicLabel";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a1:
                           this.infoAcademicLabel = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"infoAcademicLabel",this.infoAcademicLabel);
                           }
                        }
                        §§goto(addr00b8);
                     }
                  }
               }
               §§goto(addr00a1);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr00a1);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 4;
            if(_loc3_)
            {
               addr003e:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc3_)
         {
            _loc1_.showBoostButton = false;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 181;
               if(!_loc2_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0090);
            }
            addr004b:
            _loc1_.id = "harvestProgress";
            if(!(_loc2_ && _loc2_))
            {
               addr005e:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr0090);
                  }
               }
               addr007e:
               this.harvestProgress = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  addr0090:
                  BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
               }
               §§goto(addr009d);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.height = 4;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0045);
            }
            §§goto(addr0051);
         }
         addr0045:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0051:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.gap = 4;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerAcademyComponentSkin_ModifierValueComponent1_i()];
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0075:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0075);
            }
            addr0079:
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "splitter";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0062:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              addr007f:
                              this.splitter = _loc1_;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0091:
                                 BindingManager.executeBindings(this,"splitter",this.splitter);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0062);
               }
            }
            §§goto(addr0091);
         }
         §§goto(addr007f);
      }
      
      private function _FieldInfoLayerAcademyComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ModifierValueComponent = new ModifierValueComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr0047);
            }
            §§goto(addr007c);
         }
         addr0047:
         _loc1_.id = "modifierValueComponent";
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr0086);
               }
            }
            addr007c:
            this.modifierValueComponent = _loc1_;
            if(_loc2_)
            {
               addr0086:
               BindingManager.executeBindings(this,"modifierValueComponent",this.modifierValueComponent);
            }
            §§goto(addr0093);
         }
         addr0093:
         return _loc1_;
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1255241910harvestProgress = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
         }
         addr0087:
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1449269008headerComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoAcademicLabel() : LocaLabel
      {
         return this._953824287infoAcademicLabel;
      }
      
      public function set infoAcademicLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._953824287infoAcademicLabel;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._953824287infoAcademicLabel = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0075);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoAcademicLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1213523686infoLabel = param1;
                  if(!_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get modifierValueComponent() : ModifierValueComponent
      {
         return this._235160899modifierValueComponent;
      }
      
      public function set modifierValueComponent(param1:ModifierValueComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._235160899modifierValueComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._235160899modifierValueComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modifierValueComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
         }
         addr0088:
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1926588729splitter = param1;
                  addr003f:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
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
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FieldInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FieldInfoComponent) : void
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
                  addr003a:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr003a);
      }
   }
}

