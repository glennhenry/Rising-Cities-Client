package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoDecorationComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoDecorationComponentSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  addr0042:
                  this.mxmlContent = [this._FieldInfoDecorationComponentSkin_VGroup1_c(),this._FieldInfoDecorationComponentSkin_VGroup2_c()];
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr0076);
               }
               addr006a:
               this.currentState = "normal";
               if(_loc2_)
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
            addr009e:
            return;
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoDecorationComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoDecorationComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoDecorationComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoDecorationComponentSkin_BriskImageDynaLib3_c()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr007f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0093:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr007f);
            }
            §§goto(addr0093);
         }
         addr0097:
         return _loc1_;
      }
      
      private function _FieldInfoDecorationComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.width = 227;
                  if(!_loc3_)
                  {
                     addr0069:
                     _loc1_.height = 12;
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0083);
                     }
                  }
               }
               §§goto(addr007f);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      private function _FieldInfoDecorationComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               addr0030:
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 227;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0078);
               }
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0030);
      }
      
      private function _FieldInfoDecorationComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc3_)
               {
                  _loc1_.width = 227;
                  §§goto(addr0052);
               }
               §§goto(addr0069);
            }
            addr0052:
            if(!_loc2_)
            {
               addr0069:
               _loc1_.height = 27;
               if(_loc3_ || Boolean(this))
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
         §§goto(addr0069);
      }
      
      private function _FieldInfoDecorationComponentSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.top = 12;
            if(!_loc2_)
            {
               _loc1_.width = 226;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.gap = 10;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_)
                           {
                              _loc1_.bottom = 27;
                              if(!_loc2_)
                              {
                                 addr0086:
                                 _loc1_.mxmlContent = [this._FieldInfoDecorationComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoDecorationComponentSkin_ModifierValueComponent1_i()];
                                 if(_loc3_)
                                 {
                                    §§goto(addr009c);
                                 }
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr0086);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0086);
                  }
                  addr009c:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr00a8:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00ac);
               }
            }
            addr00ac:
            return _loc1_;
         }
         §§goto(addr009c);
      }
      
      private function _FieldInfoDecorationComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc2_)
         {
            _loc1_.id = "headerComponent";
            if(!(_loc3_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr0065:
                        this.headerComponent = _loc1_;
                        if(!_loc3_)
                        {
                           addr006f:
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr006f);
                  }
                  addr007c:
                  return _loc1_;
               }
            }
         }
         §§goto(addr0065);
      }
      
      private function _FieldInfoDecorationComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ModifierValueComponent = new ModifierValueComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0043:
               _loc1_.id = "modifierValueComponent";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr0077);
                        }
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0089);
            }
            addr0077:
            this.modifierValueComponent = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr0089:
               BindingManager.executeBindings(this,"modifierValueComponent",this.modifierValueComponent);
            }
            return _loc1_;
         }
         §§goto(addr0043);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1449269008headerComponent = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0066);
            }
            addr008c:
            return;
         }
         §§goto(addr0066);
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
               if(!_loc4_)
               {
                  this._235160899modifierValueComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modifierValueComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0050);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  addr0046:
                  if(_loc4_ || Boolean(this))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0066);
            }
            addr0085:
            return;
         }
         §§goto(addr0046);
      }
   }
}

