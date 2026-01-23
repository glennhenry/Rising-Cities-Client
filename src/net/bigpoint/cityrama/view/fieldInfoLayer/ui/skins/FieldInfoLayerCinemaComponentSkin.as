package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerCinemaComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerCinemaComponentSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._FieldInfoLayerCinemaComponentSkin_VGroup1_c(),this._FieldInfoLayerCinemaComponentSkin_VGroup2_c()];
                  if(_loc2_)
                  {
                     this.currentState = "normal";
                     if(_loc2_ || _loc2_)
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
                  }
               }
            }
            return;
         }
         §§goto(addr0076);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr004a);
            }
            §§goto(addr0060);
         }
         addr004a:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr0060:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib3_c()];
                  addr004f:
                  if(_loc3_)
                  {
                     §§goto(addr0077);
                  }
                  §§goto(addr008b);
               }
               addr0077:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr008b:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr008b);
         }
         §§goto(addr004f);
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.width = 227;
                  if(!_loc3_)
                  {
                     _loc1_.height = 12;
                     if(_loc2_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007c);
            }
         }
         addr008c:
         return _loc1_;
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 227;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     addr005f:
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0090:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr0090);
            }
         }
         §§goto(addr005f);
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(!(_loc3_ && _loc3_))
               {
                  addr0059:
                  _loc1_.width = 227;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.height = 27;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr00a0:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
               §§goto(addr00a0);
            }
            §§goto(addr0059);
         }
         §§goto(addr00a0);
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 12;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 226;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.gap = 10;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0084);
                        }
                        §§goto(addr00c4);
                     }
                     addr0084:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        addr008e:
                        _loc1_.bottom = 27;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._FieldInfoLayerCinemaComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerCinemaComponentSkin_VGroup3_c()];
                           if(_loc2_ || Boolean(this))
                           {
                              addr00c4:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00d0:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr00d0);
                        }
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr00d4);
            }
            §§goto(addr008e);
         }
         addr00d4:
         return _loc1_;
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(!_loc2_)
         {
            _loc1_.id = "headerComponent";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr005c);
                     }
                  }
                  §§goto(addr0066);
               }
            }
            addr005c:
            this.headerComponent = _loc1_;
            if(!_loc2_)
            {
               addr0066:
               BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
            }
            §§goto(addr0073);
         }
         addr0073:
         return _loc1_;
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "top";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc3_))
               {
                  addr0047:
                  _loc1_.width = 226;
                  if(!_loc3_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr009c);
               }
               addr0052:
               _loc1_.gap = 2;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerCinemaComponentSkin_LocaLabel1_i(),this._FieldInfoLayerCinemaComponentSkin_Group1_c(),this._FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib4_c(),this._FieldInfoLayerCinemaComponentSkin_ModifierValueComponent1_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr009c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00a0);
            }
            addr00a0:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.styleName = "infoLabel";
            if(!_loc2_)
            {
               addr0035:
               _loc1_.percentWidth = 80;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 8;
                  if(_loc3_)
                  {
                     _loc1_.id = "infoLabel";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr008c:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 §§goto(addr0095);
                              }
                           }
                           §§goto(addr00a7);
                        }
                        addr0095:
                        this.infoLabel = _loc1_;
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a7:
                           BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                        }
                        §§goto(addr00b4);
                     }
                     addr00b4:
                     return _loc1_;
                  }
                  §§goto(addr0095);
               }
            }
            §§goto(addr008c);
         }
         §§goto(addr0035);
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.height = 3;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0053:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerCinemaComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ModifierValueComponent = new ModifierValueComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "modifierValueComponent";
               if(_loc2_ || _loc2_)
               {
                  addr0055:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr007d:
                           this.modifierValueComponent = _loc1_;
                           if(_loc2_)
                           {
                              BindingManager.executeBindings(this,"modifierValueComponent",this.modifierValueComponent);
                           }
                        }
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr007d);
               }
               addr0094:
               return _loc1_;
            }
            §§goto(addr007d);
         }
         §§goto(addr0055);
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
               if(!_loc3_)
               {
                  this._1449269008headerComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1213523686infoLabel = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
         }
         addr0082:
      }
      
      [Bindable(event="propertyChange")]
      public function get modifierValueComponent() : ModifierValueComponent
      {
         return this._235160899modifierValueComponent;
      }
      
      public function set modifierValueComponent(param1:ModifierValueComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._235160899modifierValueComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._235160899modifierValueComponent = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modifierValueComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0060);
            }
         }
         addr0087:
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr005a);
            }
         }
         addr0078:
      }
   }
}

