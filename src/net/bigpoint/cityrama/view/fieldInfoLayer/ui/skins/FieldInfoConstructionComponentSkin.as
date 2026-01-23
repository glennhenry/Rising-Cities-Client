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
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoConstructionComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1075436389buildCostsComponent:BuildCostsComponent;
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoConstructionComponentSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  this.mxmlContent = [this._FieldInfoConstructionComponentSkin_VGroup1_c(),this._FieldInfoConstructionComponentSkin_VGroup2_c()];
                  if(!_loc1_)
                  {
                     this.currentState = "normal";
                     if(_loc2_ || _loc2_)
                     {
                        addr007e:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr007e);
               }
               addr00a6:
               return;
            }
         }
         §§goto(addr007e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               addr004b:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr004b);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoConstructionComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoConstructionComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoConstructionComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoConstructionComponentSkin_BriskImageDynaLib3_c()];
                  addr004f:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0095);
            }
            addr0081:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0095:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004f);
      }
      
      private function _FieldInfoConstructionComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               §§goto(addr003d);
            }
            §§goto(addr0062);
         }
         addr003d:
         if(!_loc3_)
         {
            _loc1_.width = 227;
            if(_loc2_)
            {
               addr0062:
               _loc1_.height = 12;
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0078:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007c);
               }
            }
            §§goto(addr0078);
         }
         addr007c:
         return _loc1_;
      }
      
      private function _FieldInfoConstructionComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0045);
            }
            §§goto(addr0067);
         }
         addr0045:
         _loc1_.dynaBmpSourceName = "infolayer_base_middle";
         if(_loc3_)
         {
            _loc1_.width = 227;
            if(_loc3_)
            {
               addr0067:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0089);
               }
            }
            §§goto(addr0085);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _FieldInfoConstructionComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc3_)
               {
                  _loc1_.width = 227;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0069);
                  }
               }
               §§goto(addr0087);
            }
            addr0069:
            _loc1_.height = 27;
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0087:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr008b);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _FieldInfoConstructionComponentSkin_VGroup2_c() : VGroup
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
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     addr0048:
                     _loc1_.gap = 7;
                     if(_loc3_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr007b);
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0048);
            }
            §§goto(addr00c8);
         }
         addr007b:
         _loc1_.bottom = 27;
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._FieldInfoConstructionComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoConstructionComponentSkin_LocaLabel1_i(),this._FieldInfoConstructionComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoConstructionComponentSkin_BuildCostsComponent1_i(),this._FieldInfoConstructionComponentSkin_TimerBarComponent1_i()];
            addr008e:
            if(_loc3_ || Boolean(this))
            {
               addr00c8:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr00dc:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoConstructionComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "headerComponent";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr0075:
                        this.headerComponent = _loc1_;
                        if(!_loc3_)
                        {
                           addr007f:
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0075);
            }
         }
         addr008c:
         return _loc1_;
      }
      
      private function _FieldInfoConstructionComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.width = 207;
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.styleName = "infoLabel";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr005d:
                     _loc1_.setStyle("fontSize",13);
                     if(_loc3_)
                     {
                        addr006b:
                        _loc1_.id = "infoLabel";
                        if(_loc3_)
                        {
                           §§goto(addr0083);
                        }
                     }
                     §§goto(addr00a2);
                  }
                  addr0083:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr00a2);
                  }
                  addr0098:
                  this.infoLabel = _loc1_;
                  if(!_loc2_)
                  {
                     addr00a2:
                     BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                  }
                  return _loc1_;
               }
               §§goto(addr005d);
            }
         }
         §§goto(addr006b);
      }
      
      private function _FieldInfoConstructionComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc3_)
               {
                  _loc1_.id = "splitter";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008e:
                              this.splitter = _loc1_;
                              if(_loc3_)
                              {
                                 addr0098:
                                 BindingManager.executeBindings(this,"splitter",this.splitter);
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr008e);
                  }
                  addr00a5:
                  return _loc1_;
               }
            }
            §§goto(addr0098);
         }
         §§goto(addr008e);
      }
      
      private function _FieldInfoConstructionComponentSkin_BuildCostsComponent1_i() : BuildCostsComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BuildCostsComponent = new BuildCostsComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.id = "buildCostsComponent";
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr005f:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0070);
                     }
                  }
                  §§goto(addr007a);
               }
               addr0070:
               this.buildCostsComponent = _loc1_;
               if(_loc2_)
               {
                  addr007a:
                  BindingManager.executeBindings(this,"buildCostsComponent",this.buildCostsComponent);
               }
               return _loc1_;
            }
         }
         §§goto(addr005f);
      }
      
      private function _FieldInfoConstructionComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!_loc3_)
         {
            _loc1_.showBoostButton = false;
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 181;
               if(_loc2_ || Boolean(this))
               {
                  addr005a:
                  _loc1_.id = "harvestProgress";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007c:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008d:
                              this.harvestProgress = _loc1_;
                              if(_loc2_)
                              {
                                 addr0097:
                                 BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr0097);
                        }
                        addr00a4:
                        return _loc1_;
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr005a);
         }
         §§goto(addr008d);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildCostsComponent() : BuildCostsComponent
      {
         return this._1075436389buildCostsComponent;
      }
      
      public function set buildCostsComponent(param1:BuildCostsComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1075436389buildCostsComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1075436389buildCostsComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildCostsComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1255241910harvestProgress = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
         }
         addr007a:
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
               if(!_loc3_)
               {
                  addr0038:
                  this._1449269008headerComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004c:
                  this._1213523686infoLabel = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0053:
                  this._1926588729splitter = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0054:
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
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
         §§goto(addr0054);
      }
   }
}

