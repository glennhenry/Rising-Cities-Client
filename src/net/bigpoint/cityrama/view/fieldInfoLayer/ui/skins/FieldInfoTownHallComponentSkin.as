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
   
   public class FieldInfoTownHallComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoTownHallComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.mxmlContent = [this._FieldInfoTownHallComponentSkin_VGroup1_c(),this._FieldInfoTownHallComponentSkin_VGroup2_c()];
                  if(_loc1_)
                  {
                     addr0071:
                     this.currentState = "normal";
                     if(!_loc2_)
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
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0071);
            }
            addr00a5:
            return;
         }
         §§goto(addr007d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
         }
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
      
      private function _FieldInfoTownHallComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoTownHallComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoTownHallComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoTownHallComponentSkin_BriskImageDynaLib3_c()];
                  addr004b:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007d);
            }
            §§goto(addr004b);
         }
         addr007d:
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
      
      private function _FieldInfoTownHallComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               §§goto(addr003f);
            }
            §§goto(addr0088);
         }
         addr003f:
         _loc1_.dynaBmpSourceName = "infolayer_base_top";
         if(!_loc2_)
         {
            _loc1_.width = 227;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr006a);
            }
            §§goto(addr007c);
         }
         addr006a:
         _loc1_.height = 12;
         if(!(_loc2_ && _loc3_))
         {
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0088:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoTownHallComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || _loc3_)
            {
               addr004b:
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0095:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0095);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _FieldInfoTownHallComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.width = 227;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.height = 27;
                     §§goto(addr0063);
                  }
               }
               §§goto(addr0082);
            }
            addr0063:
            if(_loc3_ || Boolean(this))
            {
               addr0082:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr009a);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _FieldInfoTownHallComponentSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.top = 12;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 226;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.gap = 5;
                     if(!_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr008c);
                           }
                           §§goto(addr00ad);
                        }
                     }
                     addr008c:
                     _loc1_.bottom = 27;
                     if(!_loc2_)
                     {
                        addr0097:
                        _loc1_.mxmlContent = [this._FieldInfoTownHallComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoTownHallComponentSkin_VGroup3_c()];
                        if(!_loc2_)
                        {
                           addr00ad:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00b9:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr00ad);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _FieldInfoTownHallComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc2_)
         {
            _loc1_.id = "headerComponent";
            if(!_loc3_)
            {
               addr0039:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0061:
                        this.headerComponent = _loc1_;
                        if(!_loc3_)
                        {
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0061);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _FieldInfoTownHallComponentSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "top";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.width = 226;
                  if(_loc3_ || _loc2_)
                  {
                     addr0064:
                     _loc1_.gap = 2;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._FieldInfoTownHallComponentSkin_LocaLabel1_i(),this._FieldInfoTownHallComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoTownHallComponentSkin_Group1_c(),this._FieldInfoTownHallComponentSkin_LocaLabel2_i(),this._FieldInfoTownHallComponentSkin_Group2_c(),this._FieldInfoTownHallComponentSkin_TimerBarComponent1_i()];
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00af:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00c3:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr00c3);
                  }
                  addr00c7:
                  return _loc1_;
               }
               §§goto(addr00af);
            }
            §§goto(addr0064);
         }
         §§goto(addr00c3);
      }
      
      private function _FieldInfoTownHallComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 207;
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.styleName = "infoLabel";
                  if(_loc3_)
                  {
                     _loc1_.id = "infoLabel";
                     if(_loc3_ || _loc2_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0094:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00a5:
                                 this.infoLabel = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr00af:
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00af);
                           }
                           addr00bc:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr00af);
            }
            §§goto(addr00a5);
         }
         §§goto(addr0072);
      }
      
      private function _FieldInfoTownHallComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
               addr0029:
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "splitter";
                  §§goto(addr003c);
               }
               §§goto(addr0096);
            }
            addr003c:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr0084:
                        this.splitter = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0096:
                           BindingManager.executeBindings(this,"splitter",this.splitter);
                        }
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr0084);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr0029);
      }
      
      private function _FieldInfoTownHallComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 2;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr004b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004f);
            }
            §§goto(addr004b);
         }
         addr004f:
         return _loc1_;
      }
      
      private function _FieldInfoTownHallComponentSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "infoLabel";
            if(!_loc2_)
            {
               _loc1_.width = 207;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.maxDisplayedLines = 6;
                  if(!_loc2_)
                  {
                     _loc1_.id = "flavourText";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007f:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0090:
                                 this.flavourText = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr009a:
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr0090);
                     }
                     addr00a7:
                     return _loc1_;
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0066);
            }
            §§goto(addr007f);
         }
         §§goto(addr0066);
      }
      
      private function _FieldInfoTownHallComponentSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.height = 4;
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoTownHallComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc2_)
         {
            _loc1_.showBoostButton = false;
            if(_loc2_)
            {
               _loc1_.width = 181;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.id = "harvestProgress";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0069:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr0088);
                           }
                           §§goto(addr009a);
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0069);
               }
            }
            addr0088:
            this.harvestProgress = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr009a:
               BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
            }
            return _loc1_;
         }
         §§goto(addr009a);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._800887486flavourText = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr006f);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1255241910harvestProgress = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0062);
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
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1449269008headerComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
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
         §§goto(addr006f);
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
               if(!_loc4_)
               {
                  this._1213523686infoLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
         }
         addr0062:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1926588729splitter = param1;
                  addr0038:
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0038);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004d);
      }
   }
}

