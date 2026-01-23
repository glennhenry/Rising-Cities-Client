package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.DepartmentListItemRenderer;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerInfrastructureDecorationComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _262377712departmentList:List;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerInfrastructureDecorationComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               §§goto(addr0025);
            }
            §§goto(addr007d);
         }
         addr0025:
         mx_internal::_document = this;
         if(_loc1_)
         {
            this.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup1_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup2_c()];
            if(!(_loc2_ && Boolean(this)))
            {
               this.currentState = "normal";
               if(!(_loc2_ && _loc1_))
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
               §§goto(addr00a5);
            }
            §§goto(addr007d);
         }
         addr00a5:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr005c);
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         addr005c:
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
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib3_c()];
                  if(!_loc2_)
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007b);
               }
            }
         }
         addr0067:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && _loc2_))
            {
               addr007b:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr003d);
            }
            §§goto(addr0048);
         }
         addr003d:
         _loc1_.dynaBmpSourceName = "infolayer_base_top";
         if(_loc2_)
         {
            addr0048:
            _loc1_.width = 227;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.height = 12;
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0085);
            }
         }
         addr0089:
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc3_)
               {
                  _loc1_.width = 227;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        §§goto(addr007e);
                     }
                  }
                  §§goto(addr0092);
               }
               addr007e:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0092:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0092);
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.width = 227;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.height = 27;
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr0090:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0094);
            }
            §§goto(addr0090);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 12;
            if(!(_loc3_ && _loc2_))
            {
               addr0031:
               _loc1_.width = 226;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.gap = 0;
                     if(!_loc3_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0081:
                              _loc1_.bottom = 27;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup3_c()];
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00c4);
                              }
                              addr00b8:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00c4:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00c8);
                           }
                        }
                        addr00c8:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr00c4);
            }
            §§goto(addr0081);
         }
         §§goto(addr0031);
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(!_loc3_)
         {
            _loc1_.id = "headerComponent";
            if(_loc2_ || Boolean(this))
            {
               addr0041:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        addr006b:
                        this.headerComponent = _loc1_;
                        if(!_loc3_)
                        {
                           addr0075:
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0075);
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr0041);
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.verticalAlign = "top";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.width = 226;
                  if(!_loc2_)
                  {
                     _loc1_.gap = 7;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_HGroup1_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_ModifierValueComponent1_i()];
                        if(!_loc2_)
                        {
                           addr008d:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr00a1);
               }
               addr00a5:
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr00a1);
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 90;
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.gap = 5;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_LocaLabel1_i(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_List1_i()];
                        if(_loc3_)
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr009c);
               }
               addr00a0:
               return _loc1_;
            }
            §§goto(addr009c);
         }
         §§goto(addr0055);
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.maxWidth = 110;
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "infoLabelRight";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0067:
                     _loc1_.id = "infoLabel";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr009c:
                                 this.infoLabel = _loc1_;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00ae:
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0067);
            }
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.width = 94;
            if(_loc3_)
            {
               _loc1_.minHeight = 36;
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr003c);
               }
               §§goto(addr0094);
            }
            addr003c:
            _loc1_.itemRenderer = this._FieldInfoLayerInfrastructureDecorationComponentSkin_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.visible = true;
               if(_loc3_)
               {
                  _loc1_.setStyle("skinClass",DepartmentListSkin);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "departmentList";
                     if(_loc3_)
                     {
                        addr0080:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0094:
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr00b2);
                              }
                           }
                           §§goto(addr00c4);
                        }
                        addr00b2:
                        this.departmentList = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00c4:
                           BindingManager.executeBindings(this,"departmentList",this.departmentList);
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00d1);
               }
               §§goto(addr0080);
            }
            addr00d1:
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.generator = DepartmentListItemRenderer;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc2_ || Boolean(this))
               {
                  addr0048:
                  _loc1_.id = "splitter";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr0083);
                           }
                           §§goto(addr008d);
                        }
                     }
                  }
                  addr0083:
                  this.splitter = _loc1_;
                  if(!_loc3_)
                  {
                     addr008d:
                     BindingManager.executeBindings(this,"splitter",this.splitter);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0072);
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ModifierValueComponent = new ModifierValueComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "modifierValueComponent";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr0062);
                     }
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0075);
            }
            addr0062:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr006b:
               this.modifierValueComponent = _loc1_;
               if(!_loc3_)
               {
                  addr0075:
                  BindingManager.executeBindings(this,"modifierValueComponent",this.modifierValueComponent);
               }
            }
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentList() : List
      {
         return this._262377712departmentList;
      }
      
      public function set departmentList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._262377712departmentList;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._262377712departmentList = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr0055:
                  this._1449269008headerComponent = param1;
                  if(_loc4_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0060);
            }
            addr007f:
            return;
         }
         §§goto(addr0055);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1213523686infoLabel = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
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
               if(!(_loc4_ && _loc3_))
               {
                  addr0040:
                  this._235160899modifierValueComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modifierValueComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
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
               if(_loc3_)
               {
                  this._1926588729splitter = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0053);
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
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
         §§goto(addr0057);
      }
   }
}

