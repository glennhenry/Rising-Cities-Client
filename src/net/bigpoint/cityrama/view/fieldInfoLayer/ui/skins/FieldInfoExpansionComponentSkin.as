package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ExpansionComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoExpansionComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _501307134expansionComponent:ExpansionComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoExpansionComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  addr0049:
                  this.mxmlContent = [this._FieldInfoExpansionComponentSkin_VGroup1_c(),this._FieldInfoExpansionComponentSkin_VGroup2_c()];
                  if(_loc1_)
                  {
                     addr005f:
                     this.currentState = "normal";
                     if(!(_loc2_ && Boolean(this)))
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
               }
               return;
            }
            §§goto(addr0049);
         }
         §§goto(addr005f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0053);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0053:
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
      
      private function _FieldInfoExpansionComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               addr0029:
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._FieldInfoExpansionComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoExpansionComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoExpansionComponentSkin_BriskImageDynaLib3_c()];
                  if(!_loc3_)
                  {
                     addr006f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr006f);
            }
            addr0087:
            return _loc1_;
         }
         §§goto(addr0029);
      }
      
      private function _FieldInfoExpansionComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!_loc3_)
               {
                  _loc1_.width = 227;
                  if(_loc2_)
                  {
                     _loc1_.height = 12;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0071);
                     }
                  }
                  §§goto(addr0085);
               }
               addr0071:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0085:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0089);
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr0071);
      }
      
      private function _FieldInfoExpansionComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!_loc3_)
               {
                  _loc1_.width = 227;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0072:
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        §§goto(addr007c);
                     }
                     §§goto(addr0090);
                  }
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0090:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0072);
            }
            §§goto(addr0090);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr008d);
            }
            addr0051:
            _loc1_.width = 227;
            if(_loc2_ || _loc3_)
            {
               _loc1_.height = 27;
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr008d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr008d);
            }
            §§goto(addr0091);
         }
         addr0091:
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 12;
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 226;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.gap = 0;
                     if(_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!_loc3_)
                           {
                              _loc1_.bottom = 27;
                              if(!_loc3_)
                              {
                                 addr0087:
                                 _loc1_.mxmlContent = [this._FieldInfoExpansionComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoExpansionComponentSkin_ExpansionComponent1_i()];
                                 if(_loc2_)
                                 {
                                    §§goto(addr009d);
                                 }
                              }
                           }
                           §§goto(addr00a9);
                        }
                     }
                  }
               }
            }
            addr009d:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr00a9:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _FieldInfoExpansionComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.id = "headerComponent";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     §§goto(addr004e);
                  }
               }
               §§goto(addr006c);
            }
         }
         addr004e:
         _loc1_.document = this;
         if(_loc2_ || _loc2_)
         {
            addr006c:
            this.headerComponent = _loc1_;
            if(_loc2_ || _loc3_)
            {
               BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_ExpansionComponent1_i() : ExpansionComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ExpansionComponent = new ExpansionComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.id = "expansionComponent";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr0074);
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr007e);
            }
         }
         addr0074:
         this.expansionComponent = _loc1_;
         if(!_loc2_)
         {
            addr007e:
            BindingManager.executeBindings(this,"expansionComponent",this.expansionComponent);
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get expansionComponent() : ExpansionComponent
      {
         return this._501307134expansionComponent;
      }
      
      public function set expansionComponent(param1:ExpansionComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._501307134expansionComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._501307134expansionComponent = param1;
                  if(!_loc4_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expansionComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr005e);
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
               if(!_loc3_)
               {
                  this._1449269008headerComponent = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0042);
                  }
                  §§goto(addr0052);
               }
               addr0042:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0052:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0061);
            }
         }
         addr0061:
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
            addr0084:
            return;
         }
         §§goto(addr005e);
      }
   }
}

