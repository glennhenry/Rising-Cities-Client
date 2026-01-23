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
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoCitySquareComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoCitySquareComponentSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  addr0052:
                  this.mxmlContent = [this._FieldInfoCitySquareComponentSkin_VGroup1_c(),this._FieldInfoCitySquareComponentSkin_VGroup2_c()];
                  if(_loc2_ || _loc1_)
                  {
                     this.currentState = "normal";
                     if(!_loc1_)
                     {
                        addr0086:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0086);
               }
               addr00ae:
               return;
            }
            §§goto(addr0086);
         }
         §§goto(addr0052);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0044);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0058);
            }
            addr0044:
            return;
         }
         addr0058:
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
      
      private function _FieldInfoCitySquareComponentSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoCitySquareComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoCitySquareComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoCitySquareComponentSkin_BriskImageDynaLib3_c()];
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0084:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0084);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _FieldInfoCitySquareComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0058:
                  _loc1_.width = 227;
                  if(!_loc2_)
                  {
                     _loc1_.height = 12;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0093:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0093);
               }
               §§goto(addr007f);
            }
            §§goto(addr0058);
         }
         §§goto(addr0093);
      }
      
      private function _FieldInfoCitySquareComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_)
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
                     §§goto(addr0068);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0086);
            }
            addr0068:
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               addr007a:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _FieldInfoCitySquareComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.width = 227;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0070:
                     _loc1_.height = 27;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0070);
            }
         }
         addr0092:
         return _loc1_;
      }
      
      private function _FieldInfoCitySquareComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.top = 12;
            if(!_loc3_)
            {
               _loc1_.width = 226;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005a:
                     _loc1_.gap = 10;
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(_loc2_)
                        {
                           addr0076:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              _loc1_.bottom = 27;
                              if(!_loc3_)
                              {
                                 addr0098:
                                 _loc1_.mxmlContent = [this._FieldInfoCitySquareComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoCitySquareComponentSkin_LocaLabel1_i(),this._FieldInfoCitySquareComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoCitySquareComponentSkin_TimerBarComponent1_i()];
                                 if(_loc2_)
                                 {
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00c6);
                              }
                              addr00ba:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00c6:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr005a);
            }
            §§goto(addr0098);
         }
         addr00ca:
         return _loc1_;
      }
      
      private function _FieldInfoCitySquareComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.id = "headerComponent";
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005e:
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr007d);
                     }
                  }
                  §§goto(addr008f);
               }
               addr007d:
               this.headerComponent = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr008f:
                  BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
               }
               §§goto(addr009c);
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr005e);
      }
      
      private function _FieldInfoCitySquareComponentSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 207;
            if(!_loc3_)
            {
               _loc1_.maxDisplayedLines = 3;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.styleName = "infoLabel";
                  if(!_loc3_)
                  {
                     _loc1_.id = "infoLabel";
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0085:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr008e:
                                 this.infoLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                              }
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0085);
            }
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _FieldInfoCitySquareComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "splitter";
                  if(_loc2_ || _loc3_)
                  {
                     addr006e:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr0097);
                           }
                           §§goto(addr00a1);
                        }
                     }
                     addr0097:
                     this.splitter = _loc1_;
                     if(_loc2_)
                     {
                        addr00a1:
                        BindingManager.executeBindings(this,"splitter",this.splitter);
                     }
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00a1);
            }
            addr00ae:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _FieldInfoCitySquareComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.showBoostButton = false;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.width = 181;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005f:
                  _loc1_.showTimeInDays = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "harvestProgress";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr009d);
                           }
                           §§goto(addr00b8);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr00ae);
               }
               addr009d:
               _loc1_.document = this;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00ae:
                  this.harvestProgress = _loc1_;
                  if(!_loc2_)
                  {
                     addr00b8:
                     BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
                  }
               }
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr00ae);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0039:
                  this._1255241910harvestProgress = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0039);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr0047:
                  this._1449269008headerComponent = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007d);
               }
            }
            addr008c:
            return;
         }
         §§goto(addr0047);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1213523686infoLabel = param1;
                  addr0035:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0035);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1926588729splitter = param1;
                  if(_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0059);
            }
         }
         addr0078:
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
         }
         addr0086:
      }
   }
}

