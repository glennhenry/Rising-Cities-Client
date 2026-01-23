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
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.SecurityStatusComponent;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerSecurityGradeComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _698432686securityStatus:SecurityStatusComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerSecurityGradeComponentSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               addr0025:
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.mxmlContent = [this._FieldInfoLayerSecurityGradeComponentSkin_VGroup1_c(),this._FieldInfoLayerSecurityGradeComponentSkin_VGroup2_c()];
                  if(!(_loc2_ && _loc2_))
                  {
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
                     return;
                  }
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr0025);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     return;
                  }
               }
               else
               {
                  addr0050:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0050);
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
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib3_c()];
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr007f);
                  }
                  §§goto(addr008b);
               }
               addr007f:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr008b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008f);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               addr0032:
               if(_loc2_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr007d);
            }
            addr004b:
            _loc1_.width = 227;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 12;
               if(!(_loc3_ && _loc3_))
               {
                  addr007d:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.width = 227;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.percentHeight = 100;
                     addr0068:
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0086);
                     }
                     §§goto(addr009a);
                  }
               }
               addr0086:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr009a:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr009e);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr0068);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               §§goto(addr002b);
            }
            §§goto(addr0043);
         }
         addr002b:
         if(_loc3_)
         {
            addr0043:
            _loc1_.width = 227;
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr0062);
            }
            §§goto(addr0080);
         }
         addr0062:
         _loc1_.height = 27;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0080:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.top = 12;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.width = 226;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.gap = 5;
                     if(_loc3_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0082:
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_)
                           {
                              addr008c:
                              _loc1_.bottom = 27;
                              if(_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoLayerSecurityGradeComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerSecurityGradeComponentSkin_VGroup3_c()];
                                 addr0097:
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00d5);
                        }
                        addr00c1:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00d5:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr0082);
                  }
                  addr00d9:
                  return _loc1_;
               }
               §§goto(addr0097);
            }
            §§goto(addr00c1);
         }
         §§goto(addr008c);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.id = "headerComponent";
            if(_loc3_)
            {
               addr0044:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006d:
                        this.headerComponent = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
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
               §§goto(addr006d);
            }
            addr008c:
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "top";
            if(_loc3_ || _loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.width = 226;
                  if(!_loc2_)
                  {
                     _loc1_.gap = 2;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._FieldInfoLayerSecurityGradeComponentSkin_LocaLabel1_i(),this._FieldInfoLayerSecurityGradeComponentSkin_Group1_c(),this._FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerSecurityGradeComponentSkin_Group2_c(),this._FieldInfoLayerSecurityGradeComponentSkin_SecurityStatusComponent1_i()];
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr00a7);
                        }
                        §§goto(addr00b3);
                     }
                     addr00a7:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00b3:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00b3);
               }
               addr00b7:
               return _loc1_;
            }
         }
         §§goto(addr00b3);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.width = 207;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.maxDisplayedLines = 3;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.styleName = "infoLabel";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "infoLabel";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00a0:
                                 this.infoLabel = _loc1_;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00b2:
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr00b2);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr00b2);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 4;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0048:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004c);
            }
            §§goto(addr0048);
         }
         addr004c:
         return _loc1_;
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr0038);
            }
            §§goto(addr00a5);
         }
         addr0038:
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         if(_loc2_ || _loc3_)
         {
            _loc1_.id = "splitter";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr008a:
                     _loc1_.document = this;
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr009b);
                     }
                     §§goto(addr00a5);
                  }
               }
               addr009b:
               this.splitter = _loc1_;
               if(_loc2_)
               {
                  addr00a5:
                  BindingManager.executeBindings(this,"splitter",this.splitter);
               }
               §§goto(addr00b2);
            }
            §§goto(addr008a);
         }
         addr00b2:
         return _loc1_;
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 4;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0049:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0049);
      }
      
      private function _FieldInfoLayerSecurityGradeComponentSkin_SecurityStatusComponent1_i() : SecurityStatusComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SecurityStatusComponent = new SecurityStatusComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.id = "securityStatus";
            if(_loc3_)
            {
               addr0050:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0065);
            }
            addr005c:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0065:
               this.securityStatus = _loc1_;
               if(!_loc2_)
               {
                  addr006f:
                  BindingManager.executeBindings(this,"securityStatus",this.securityStatus);
               }
            }
            return _loc1_;
         }
         §§goto(addr0050);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr0055:
                  this._1449269008headerComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr004e:
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
                  §§goto(addr0078);
               }
               §§goto(addr0059);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
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
               if(_loc3_)
               {
                  this._698432686securityStatus = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityStatus",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0052);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1926588729splitter = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0056);
            }
         }
         addr007d:
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
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
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

