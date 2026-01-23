package net.bigpoint.cityrama.view.residentSelection.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentChoiceDetailComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class ResidentChoiceUnknownSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1022398728actionButton:MultistateButton;
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _838788151currencyAmount:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var _1259807996levelAmount:LocaLabel;
      
      private var _1656559075levelIcon:BriskImageDynaLib;
      
      private var _865336879needIcon:BriskImageDynaLib;
      
      private var _311416662residentType:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ResidentChoiceDetailComponent;
      
      public function ResidentChoiceUnknownSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  §§goto(addr003f);
               }
               §§goto(addr0075);
            }
            addr003f:
            this.mxmlContent = [this._ResidentChoiceUnknownSkin_VGroup1_c()];
            if(_loc1_ || _loc2_)
            {
               this.currentState = "up";
               if(!(_loc2_ && _loc2_))
               {
                  states = [new State({
                     "name":"up",
                     "overrides":[]
                  }),new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"over",
                     "overrides":[]
                  }),new State({
                     "name":"down",
                     "overrides":[]
                  }),new State({
                     "name":"disabled",
                     "overrides":[]
                  })];
                  addr0075:
               }
            }
            §§goto(addr00da);
         }
         addr00da:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
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
         }
         this.__moduleFactoryInitialized = true;
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
      
      private function _ResidentChoiceUnknownSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               addr0032:
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.gap = -5;
                  if(_loc3_)
                  {
                     addr005b:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_Group1_c(),this._ResidentChoiceUnknownSkin_Group4_c()];
                           addr0080:
                           if(!(_loc2_ && Boolean(this)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00be:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00be);
                        }
                        addr00c2:
                        return _loc1_;
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr005b);
            }
            §§goto(addr0080);
         }
         §§goto(addr0032);
      }
      
      private function _ResidentChoiceUnknownSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 286;
            if(_loc2_ || Boolean(this))
            {
               addr0049:
               _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_BriskImageDynaLib1_i(),this._ResidentChoiceUnknownSkin_VGroup2_c()];
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0073);
         }
         §§goto(addr0049);
      }
      
      private function _ResidentChoiceUnknownSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaBmpSourceName = "playcard_inactive";
            if(!_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "background";
                  if(_loc2_ || _loc3_)
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr008e:
                              this.background = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"background",this.background);
                              }
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00a0);
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr005e);
            }
            addr00ad:
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _ResidentChoiceUnknownSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 155;
            if(!(_loc2_ && _loc3_))
            {
               addr003c:
               _loc1_.top = 130;
               if(_loc3_)
               {
                  _loc1_.left = 28;
                  if(_loc3_)
                  {
                     _loc1_.gap = 0;
                     if(_loc3_)
                     {
                        addr0068:
                        _loc1_.bottom = 26;
                        if(!_loc2_)
                        {
                           _loc1_.right = 28;
                           if(_loc3_ || _loc3_)
                           {
                              addr008f:
                              _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_Group2_c(),this._ResidentChoiceUnknownSkin_Group3_c(),this._ResidentChoiceUnknownSkin_HGroup1_c(),this._ResidentChoiceUnknownSkin_HGroup3_c()];
                              if(_loc3_)
                              {
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr008f);
                  }
                  addr00b1:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr00bd:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0068);
            }
            §§goto(addr00bd);
         }
         §§goto(addr003c);
      }
      
      private function _ResidentChoiceUnknownSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 29;
            if(_loc2_)
            {
               addr0038:
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel1_i()];
                  if(_loc2_)
                  {
                     §§goto(addr0052);
                  }
                  §§goto(addr005e);
               }
               addr0052:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr005e:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return _loc1_;
         }
         §§goto(addr0038);
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.styleName = "residentName";
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalCenter = 2;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.id = "residentType";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr009f:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00ba);
                           }
                        }
                        addr00a8:
                        this.residentType = _loc1_;
                        if(_loc2_ || Boolean(this))
                        {
                           addr00ba:
                           BindingManager.executeBindings(this,"residentType",this.residentType);
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr00ba);
            }
            addr00c7:
            return _loc1_;
         }
         §§goto(addr007e);
      }
      
      private function _ResidentChoiceUnknownSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 38;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel2_i()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr007f);
               }
            }
            addr006b:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr007f:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "residentInfo";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr003d:
                  _loc1_.maxHeight = 24;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.verticalCenter = 1;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006f:
                        _loc1_.id = "infoText";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr008e:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00ab:
                                    this.infoText = _loc1_;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00bd:
                                       BindingManager.executeBindings(this,"infoText",this.infoText);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00bd);
                              }
                              addr00ca:
                              return _loc1_;
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr006f);
               }
               §§goto(addr008e);
            }
         }
         §§goto(addr003d);
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.height = 40;
            if(!_loc3_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0049);
         }
         addr0032:
         _loc1_.width = 155;
         if(_loc2_)
         {
            addr0049:
            _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_HGroup2_c(),this._ResidentChoiceUnknownSkin_VGroup3_c()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0073:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0073);
         }
         addr0077:
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_BriskImageDynaLib2_i()];
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr006d);
               }
            }
            §§goto(addr0079);
         }
         addr006d:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0079:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaBmpSourceName = "layer_needs_icon";
            if(!_loc2_)
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(_loc3_)
               {
                  _loc1_.id = "needIcon";
                  if(_loc3_ || _loc3_)
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              addr0085:
                              this.needIcon = _loc1_;
                              if(_loc3_)
                              {
                                 addr008f:
                                 BindingManager.executeBindings(this,"needIcon",this.needIcon);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr008f);
                        }
                        addr009c:
                        return _loc1_;
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr008f);
               }
            }
            §§goto(addr0085);
         }
         §§goto(addr0054);
      }
      
      private function _ResidentChoiceUnknownSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc2_))
            {
               addr0047:
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "right";
                     if(_loc3_)
                     {
                        addr007a:
                        _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel3_i()];
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0092);
                        }
                     }
                     §§goto(addr009e);
                  }
                  addr0092:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr009e:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009e);
            }
            §§goto(addr007a);
         }
         §§goto(addr0047);
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "residentNumbers";
            if(_loc3_ || _loc2_)
            {
               addr0047:
               _loc1_.text = " --";
               if(!_loc2_)
               {
                  _loc1_.id = "currencyAmount";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0077:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr0088:
                              this.currencyAmount = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"currencyAmount",this.currencyAmount);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0088);
                  }
               }
            }
            §§goto(addr0077);
         }
         §§goto(addr0047);
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.height = 34;
            if(_loc3_ || _loc3_)
            {
               _loc1_.width = 155;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_HGroup4_c(),this._ResidentChoiceUnknownSkin_VGroup4_c()];
                  if(!_loc2_)
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
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || _loc3_)
            {
               addr003e:
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_BriskImageDynaLib3_i()];
                     if(_loc2_)
                     {
                        addr0078:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0084:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0084);
                  }
                  addr0088:
                  return _loc1_;
               }
               §§goto(addr0078);
            }
            §§goto(addr0084);
         }
         §§goto(addr003e);
      }
      
      private function _ResidentChoiceUnknownSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "icon_buildinglevel";
               if(_loc3_)
               {
                  §§goto(addr004a);
               }
               §§goto(addr0078);
            }
         }
         addr004a:
         _loc1_.id = "levelIcon";
         if(!_loc2_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  §§goto(addr006f);
               }
               §§goto(addr0082);
            }
            §§goto(addr0078);
         }
         addr006f:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0078:
            this.levelIcon = _loc1_;
            if(_loc3_)
            {
               addr0082:
               BindingManager.executeBindings(this,"levelIcon",this.levelIcon);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr0052:
                     _loc1_.horizontalAlign = "right";
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel4_i()];
                        if(!_loc3_)
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr008f:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0052);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0083);
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "residentNumbers";
            if(_loc2_)
            {
               _loc1_.text = " --";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "levelAmount";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0065:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0087:
                              this.levelAmount = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 BindingManager.executeBindings(this,"levelAmount",this.levelAmount);
                              }
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0087);
                  }
                  addr00a6:
                  return _loc1_;
               }
            }
            §§goto(addr0065);
         }
         §§goto(addr0087);
      }
      
      private function _ResidentChoiceUnknownSkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_MultistateButton1_i()];
               if(!_loc3_)
               {
                  addr005e:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr005e);
         }
         §§goto(addr0072);
      }
      
      private function _ResidentChoiceUnknownSkin_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 205;
            if(!_loc2_)
            {
               _loc1_.enabled = false;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr004e:
                  _loc1_.id = "actionButton";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr0092:
                              this.actionButton = _loc1_;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a4:
                                 BindingManager.executeBindings(this,"actionButton",this.actionButton);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00a4);
                        }
                        addr00b1:
                        return _loc1_;
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0075);
            }
            §§goto(addr004e);
         }
         §§goto(addr0092);
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : MultistateButton
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1022398728actionButton;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1022398728actionButton = param1;
                  if(!_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0061);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1332194002background;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1332194002background = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0067);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyAmount() : LocaLabel
      {
         return this._838788151currencyAmount;
      }
      
      public function set currencyAmount(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._838788151currencyAmount;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._838788151currencyAmount = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyAmount",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._177936123infoText;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._177936123infoText = param1;
                  addr0047:
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0074);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelAmount() : LocaLabel
      {
         return this._1259807996levelAmount;
      }
      
      public function set levelAmount(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1259807996levelAmount;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1259807996levelAmount = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelAmount",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelIcon() : BriskImageDynaLib
      {
         return this._1656559075levelIcon;
      }
      
      public function set levelIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1656559075levelIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1656559075levelIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0055:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get needIcon() : BriskImageDynaLib
      {
         return this._865336879needIcon;
      }
      
      public function set needIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._865336879needIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._865336879needIcon = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0055:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0064);
                  }
                  §§goto(addr0055);
               }
            }
            addr0064:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentType() : LocaLabel
      {
         return this._311416662residentType;
      }
      
      public function set residentType(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._311416662residentType;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._311416662residentType = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentType",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0058);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ResidentChoiceDetailComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ResidentChoiceDetailComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr005d);
            }
         }
         addr007b:
      }
   }
}

