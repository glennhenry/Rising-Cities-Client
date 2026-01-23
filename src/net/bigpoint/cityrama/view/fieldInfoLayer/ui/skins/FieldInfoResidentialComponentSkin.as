package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoLayerMasteryComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ImprovementIconComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.OutputItemRendered;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.SecurityStatusComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.OutputListSkin;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoResidentialComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _921105436improvementIcons:ImprovementIconComponent;
      
      private var _1830499226masteryComponent:FieldInfoLayerMasteryComponent;
      
      private var _1062744848outcomeList:List;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _698432686securityStatus:SecurityStatusComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoResidentialComponentSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr001e:
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._FieldInfoResidentialComponentSkin_VGroup1_c(),this._FieldInfoResidentialComponentSkin_VGroup2_c()];
                  if(!(_loc1_ && _loc1_))
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
                     §§goto(addr009e);
                  }
                  §§goto(addr0076);
               }
            }
            addr009e:
            return;
         }
         §§goto(addr001e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0049);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0054);
            }
            addr0049:
            return;
         }
         addr0054:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function _FieldInfoResidentialComponentSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.gap = 0;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoResidentialComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoResidentialComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoResidentialComponentSkin_BriskImageDynaLib3_c()];
                  if(!_loc3_)
                  {
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr007e);
               }
               addr0082:
               return _loc1_;
            }
            §§goto(addr007e);
         }
         §§goto(addr0072);
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top_icon";
               §§goto(addr0033);
            }
            §§goto(addr008f);
         }
         addr0033:
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 227;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 62;
               if(_loc3_)
               {
                  §§goto(addr007b);
               }
            }
            §§goto(addr008f);
         }
         addr007b:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(this))
            {
               addr008f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 227;
                  if(_loc3_ || _loc2_)
                  {
                     addr007c:
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        §§goto(addr0086);
                     }
                     §§goto(addr0092);
                  }
               }
               §§goto(addr0086);
            }
            §§goto(addr007c);
         }
         addr0086:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0092:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0071);
                  }
               }
            }
            §§goto(addr007b);
         }
         addr0071:
         _loc1_.height = 27;
         if(_loc2_)
         {
            addr007b:
            if(!_loc1_.document)
            {
               if(_loc2_ || _loc2_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.top = 5;
            if(!_loc3_)
            {
               addr002c:
               _loc1_.width = 228;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.gap = 0;
                     if(!_loc3_)
                     {
                        addr004b:
                        _loc1_.verticalAlign = "top";
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              addr0073:
                              _loc1_.paddingBottom = 27;
                              if(!_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoResidentialComponentSkin_Group1_c(),this._FieldInfoResidentialComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoResidentialComponentSkin_Group2_c(),this._FieldInfoResidentialComponentSkin_FieldInfoLayerMasteryComponent1_i(),this._FieldInfoResidentialComponentSkin_ImprovementIconComponent1_i(),this._FieldInfoResidentialComponentSkin_List1_i(),this._FieldInfoResidentialComponentSkin_Group3_c(),this._FieldInfoResidentialComponentSkin_BriskImageDynaLib5_i(),this._FieldInfoResidentialComponentSkin_Group4_c(),this._FieldInfoResidentialComponentSkin_TimerBarComponent1_i(),this._FieldInfoResidentialComponentSkin_SecurityStatusComponent1_i()];
                                 §§goto(addr007e);
                              }
                           }
                           §§goto(addr00ea);
                        }
                        addr007e:
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00ea:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ee);
                     }
                     addr00ee:
                     return _loc1_;
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0073);
            }
            §§goto(addr004b);
         }
         §§goto(addr002c);
      }
      
      private function _FieldInfoResidentialComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 44;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.height = 53;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._FieldInfoResidentialComponentSkin_BriskImageDynaLib4_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr007d);
            }
            §§goto(addr0091);
         }
         addr007d:
         if(!_loc1_.document)
         {
            if(_loc2_ || _loc2_)
            {
               addr0091:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "unknown_residential_class";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr007a);
            }
            addr0067:
            _loc1_.id = "residentIcon";
            if(_loc3_ || Boolean(_loc1_))
            {
               addr007a:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr00a3);
                     }
                     §§goto(addr00ad);
                  }
               }
               addr00a3:
               this.residentIcon = _loc1_;
               if(!_loc2_)
               {
                  addr00ad:
                  BindingManager.executeBindings(this,"residentIcon",this.residentIcon);
               }
               §§goto(addr00ba);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _FieldInfoResidentialComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.id = "headerComponent";
            if(_loc2_ || Boolean(this))
            {
               addr004b:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0074:
                        this.headerComponent = _loc1_;
                        if(_loc2_ || _loc2_)
                        {
                           addr0086:
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0074);
            }
            §§goto(addr0086);
         }
         §§goto(addr004b);
      }
      
      private function _FieldInfoResidentialComponentSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 5;
            if(_loc2_)
            {
               §§goto(addr0036);
            }
            §§goto(addr004a);
         }
         addr0036:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr004a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_FieldInfoLayerMasteryComponent1_i() : FieldInfoLayerMasteryComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FieldInfoLayerMasteryComponent = new FieldInfoLayerMasteryComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.id = "masteryComponent";
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        addr007b:
                        this.masteryComponent = _loc1_;
                        if(_loc2_)
                        {
                           BindingManager.executeBindings(this,"masteryComponent",this.masteryComponent);
                        }
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr007b);
            }
            addr0092:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _FieldInfoResidentialComponentSkin_ImprovementIconComponent1_i() : ImprovementIconComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImprovementIconComponent = new ImprovementIconComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.id = "improvementIcons";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr004a:
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0066:
                        this.improvementIcons = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           BindingManager.executeBindings(this,"improvementIcons",this.improvementIcons);
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0066);
         }
         §§goto(addr004a);
      }
      
      private function _FieldInfoResidentialComponentSkin_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.itemRenderer = this._FieldInfoResidentialComponentSkin_ClassFactory1_c();
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 197;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.setStyle("skinClass",OutputListSkin);
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "outcomeList";
                     if(_loc3_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00a6:
                                 this.outcomeList = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b8:
                                    BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0083);
            }
            §§goto(addr00b8);
         }
         §§goto(addr00a6);
      }
      
      private function _FieldInfoResidentialComponentSkin_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || _loc2_)
         {
            _loc1_.generator = OutputItemRendered;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 2;
            if(!(_loc2_ && Boolean(_loc1_)))
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
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "splitter";
                  if(!_loc2_)
                  {
                     addr005d:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0088:
                              this.splitter = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0092:
                                 BindingManager.executeBindings(this,"splitter",this.splitter);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr005d);
         }
         §§goto(addr0077);
      }
      
      private function _FieldInfoResidentialComponentSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 4;
            if(_loc3_)
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
      
      private function _FieldInfoResidentialComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.showBoostButton = false;
            if(!_loc3_)
            {
               _loc1_.width = 181;
               if(!(_loc3_ && _loc2_))
               {
                  addr0053:
                  _loc1_.id = "harvestProgress";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0077:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0088:
                              this.harvestProgress = _loc1_;
                              if(_loc2_)
                              {
                                 addr0092:
                                 BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr0092);
                        }
                        addr009f:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0077);
            }
            §§goto(addr0053);
         }
         §§goto(addr0092);
      }
      
      private function _FieldInfoResidentialComponentSkin_SecurityStatusComponent1_i() : SecurityStatusComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SecurityStatusComponent = new SecurityStatusComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.includeInLayout = false;
            if(_loc2_)
            {
               _loc1_.visible = false;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "securityStatus";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0075);
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               addr0075:
               _loc1_.document = this;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0086:
                  this.securityStatus = _loc1_;
                  if(_loc2_)
                  {
                     BindingManager.executeBindings(this,"securityStatus",this.securityStatus);
                  }
               }
               §§goto(addr009d);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0086);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1255241910harvestProgress = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
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
         §§goto(addr0066);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1449269008headerComponent = param1;
                  addr0038:
                  if(!_loc4_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr004f);
            }
            addr0075:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementIcons() : ImprovementIconComponent
      {
         return this._921105436improvementIcons;
      }
      
      public function set improvementIcons(param1:ImprovementIconComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._921105436improvementIcons;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr004c:
                  this._921105436improvementIcons = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementIcons",_loc2_,param1));
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
      public function get masteryComponent() : FieldInfoLayerMasteryComponent
      {
         return this._1830499226masteryComponent;
      }
      
      public function set masteryComponent(param1:FieldInfoLayerMasteryComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1830499226masteryComponent;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1830499226masteryComponent = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1062744848outcomeList;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1062744848outcomeList = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIcon() : BriskImageDynaLib
      {
         return this._311765527residentIcon;
      }
      
      public function set residentIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._311765527residentIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._311765527residentIcon = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get securityStatus() : SecurityStatusComponent
      {
         return this._698432686securityStatus;
      }
      
      public function set securityStatus(param1:SecurityStatusComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._698432686securityStatus;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._698432686securityStatus = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityStatus",_loc2_,param1));
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
         §§goto(addr006e);
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
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1926588729splitter = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
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
               if(!(_loc4_ && Boolean(this)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
         }
         addr0087:
      }
   }
}

