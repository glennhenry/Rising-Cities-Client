package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.DepartmentProfessionalComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerInfrastructureBuildingComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _2057776419departmentProfessionalsComponent:DepartmentProfessionalComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var _405291595splitter2:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerInfrastructureBuildingComponentSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.mxmlContent = [this._FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup1_c(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup2_c()];
                  if(!_loc1_)
                  {
                     this.currentState = "normal";
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr0076:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0076);
               }
            }
            addr009e:
            return;
         }
         §§goto(addr0076);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0044);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0044:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               addr003d:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib3_c()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr0084);
               }
            }
            addr0078:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0084:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 227;
                  addr004a:
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.height = 12;
                     if(!_loc3_)
                     {
                        §§goto(addr0073);
                     }
                  }
                  §§goto(addr007f);
               }
               addr0073:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007f:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr007f);
         }
         §§goto(addr004a);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc3_ || _loc3_)
               {
                  addr0061:
                  _loc1_.width = 227;
                  if(!_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        addr0076:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0082:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0076);
            }
            §§goto(addr0082);
         }
         §§goto(addr0061);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(!_loc3_)
               {
                  _loc1_.width = 227;
                  §§goto(addr0056);
               }
               §§goto(addr0077);
            }
         }
         addr0056:
         if(_loc2_ || Boolean(this))
         {
            addr0077:
            _loc1_.height = 27;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 12;
            if(_loc2_)
            {
               _loc1_.width = 226;
               if(_loc2_)
               {
                  addr003c:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.gap = 5;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr006c:
                        _loc1_.verticalAlign = "top";
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              addr0088:
                              _loc1_.bottom = 27;
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureBuildingComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup3_c()];
                                 addr009b:
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00c7:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                                 §§goto(addr00df);
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00df);
                        }
                        §§goto(addr009b);
                     }
                     addr00df:
                     return _loc1_;
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0088);
            }
            §§goto(addr009b);
         }
         §§goto(addr003c);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "headerComponent";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0079);
                  }
               }
               addr0067:
               this.headerComponent = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr0079:
                  BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
               }
               §§goto(addr0086);
            }
            addr0086:
            return _loc1_;
         }
         §§goto(addr0067);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.verticalAlign = "top";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.width = 226;
                  §§goto(addr0044);
               }
               §§goto(addr0061);
            }
            addr0044:
            if(_loc3_ || _loc3_)
            {
               addr0061:
               _loc1_.gap = 2;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureBuildingComponentSkin_LocaLabel1_i(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_Group1_c(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_Group2_c(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup4_c()];
                  if(_loc3_ || _loc3_)
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
         §§goto(addr0061);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.width = 207;
            if(_loc2_ || _loc3_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.styleName = "infoLabel";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "infoLabel";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0090:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr0099);
                              }
                           }
                           §§goto(addr00ab);
                        }
                        addr0099:
                        this.infoLabel = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00ab:
                           BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0090);
                  }
               }
               addr00b8:
               return _loc1_;
            }
            §§goto(addr00ab);
         }
         §§goto(addr0090);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 4;
            if(_loc3_ || _loc3_)
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
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!_loc3_)
               {
                  _loc1_.id = "splitter";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0076);
                           }
                           §§goto(addr0088);
                        }
                     }
                     addr0076:
                     this.splitter = _loc1_;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0088:
                        BindingManager.executeBindings(this,"splitter",this.splitter);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0088);
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0076);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.height = 4;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0050:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0054);
            }
            §§goto(addr0050);
         }
         addr0054:
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 4;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureBuildingComponentSkin_DepartmentProfessionalComponent1_i(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib5_i(),this._FieldInfoLayerInfrastructureBuildingComponentSkin_ModifierValueComponent1_i()];
               if(!_loc2_)
               {
                  addr0060:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0074);
         }
         §§goto(addr0060);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_DepartmentProfessionalComponent1_i() : DepartmentProfessionalComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DepartmentProfessionalComponent = new DepartmentProfessionalComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0033);
            }
            §§goto(addr0090);
         }
         addr0033:
         _loc1_.percentHeight = 50;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.id = "departmentProfessionalsComponent";
            if(!_loc3_)
            {
               §§goto(addr005c);
            }
            §§goto(addr0090);
         }
         addr005c:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               _loc1_.document = this;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0086);
               }
               §§goto(addr0090);
            }
         }
         addr0086:
         this.departmentProfessionalsComponent = _loc1_;
         if(!_loc3_)
         {
            addr0090:
            BindingManager.executeBindings(this,"departmentProfessionalsComponent",this.departmentProfessionalsComponent);
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
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
                  _loc1_.id = "splitter2";
                  if(_loc3_ || _loc3_)
                  {
                     addr0059:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0081);
                           }
                           §§goto(addr008b);
                        }
                     }
                     addr0081:
                     this.splitter2 = _loc1_;
                     if(_loc3_)
                     {
                        addr008b:
                        BindingManager.executeBindings(this,"splitter2",this.splitter2);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr008b);
               }
               addr0098:
               return _loc1_;
            }
            §§goto(addr008b);
         }
         §§goto(addr0059);
      }
      
      private function _FieldInfoLayerInfrastructureBuildingComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ModifierValueComponent = new ModifierValueComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "modifierValueComponent";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr007e);
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               addr007e:
               this.modifierValueComponent = _loc1_;
               if(_loc3_)
               {
                  addr0088:
                  BindingManager.executeBindings(this,"modifierValueComponent",this.modifierValueComponent);
               }
               return _loc1_;
            }
         }
         §§goto(addr0088);
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentProfessionalsComponent() : DepartmentProfessionalComponent
      {
         return this._2057776419departmentProfessionalsComponent;
      }
      
      public function set departmentProfessionalsComponent(param1:DepartmentProfessionalComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2057776419departmentProfessionalsComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._2057776419departmentProfessionalsComponent = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentProfessionalsComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : InfoLayerHeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:InfoLayerHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1449269008headerComponent;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1449269008headerComponent = param1;
                  addr0041:
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0041);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1213523686infoLabel = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0076);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._235160899modifierValueComponent = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modifierValueComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
         }
         addr008c:
      }
      
      [Bindable(event="propertyChange")]
      public function get splitter() : BriskImageDynaLib
      {
         return this._1926588729splitter;
      }
      
      public function set splitter(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1926588729splitter;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1926588729splitter = param1;
                  addr0038:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get splitter2() : BriskImageDynaLib
      {
         return this._405291595splitter2;
      }
      
      public function set splitter2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._405291595splitter2;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr004e:
                  this._405291595splitter2 = param1;
                  if(!_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0058);
            }
            addr0077:
            return;
         }
         §§goto(addr004e);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006d);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

