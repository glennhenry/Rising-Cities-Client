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
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.OutputItemRendered;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.OutputListSkin;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoProductionComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1062744848outcomeList:List;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoProductionComponentSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  this.mxmlContent = [this._FieldInfoProductionComponentSkin_VGroup1_c(),this._FieldInfoProductionComponentSkin_VGroup2_c()];
                  if(_loc2_ || Boolean(this))
                  {
                     this.currentState = "normal";
                     if(!_loc1_)
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
               addr009e:
               return;
            }
         }
         §§goto(addr0076);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§goto(addr0057);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr006b);
            }
            addr0057:
            return;
         }
         addr006b:
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
      
      private function _FieldInfoProductionComponentSkin_VGroup1_c() : VGroup
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
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._FieldInfoProductionComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoProductionComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoProductionComponentSkin_BriskImageDynaLib3_c()];
                  addr0042:
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr007e:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr007e);
            }
            addr0082:
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      private function _FieldInfoProductionComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "infolayer_base_top";
               if(_loc3_)
               {
                  _loc1_.width = 227;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0071:
                     _loc1_.height = 12;
                     if(_loc3_)
                     {
                        addr007b:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0087);
                  }
                  addr008b:
                  return _loc1_;
               }
            }
            §§goto(addr007b);
         }
         §§goto(addr0071);
      }
      
      private function _FieldInfoProductionComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "infolayer_base_middle";
               if(_loc2_)
               {
                  _loc1_.width = 227;
                  if(_loc2_ || _loc2_)
                  {
                     addr0065:
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0083:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0083);
                  }
                  addr0087:
                  return _loc1_;
               }
            }
            §§goto(addr0083);
         }
         §§goto(addr0065);
      }
      
      private function _FieldInfoProductionComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 227;
                  addr0049:
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.height = 27;
                     if(!_loc3_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr007d);
                  }
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr007d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0081);
               }
               addr0081:
               return _loc1_;
            }
            §§goto(addr0049);
         }
         §§goto(addr007d);
      }
      
      private function _FieldInfoProductionComponentSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 12;
            if(_loc2_)
            {
               _loc1_.width = 226;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.gap = 0;
                     if(_loc2_)
                     {
                        _loc1_.verticalAlign = "top";
                        if(!_loc3_)
                        {
                           addr0075:
                           _loc1_.horizontalAlign = "center";
                           if(_loc2_)
                           {
                              _loc1_.bottom = 27;
                              if(!_loc3_)
                              {
                                 _loc1_.mxmlContent = [this._FieldInfoProductionComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoProductionComponentSkin_Group1_c(),this._FieldInfoProductionComponentSkin_List1_i(),this._FieldInfoProductionComponentSkin_Group2_c(),this._FieldInfoProductionComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoProductionComponentSkin_Group3_c(),this._FieldInfoProductionComponentSkin_TimerBarComponent1_i()];
                                 addr008a:
                                 if(_loc2_)
                                 {
                                    addr00cb:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr008a);
                        }
                     }
                  }
                  addr00e3:
                  return _loc1_;
               }
               §§goto(addr008a);
            }
            §§goto(addr0075);
         }
         §§goto(addr00cb);
      }
      
      private function _FieldInfoProductionComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         if(_loc2_)
         {
            _loc1_.id = "headerComponent";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0073:
                        this.headerComponent = _loc1_;
                        if(_loc2_)
                        {
                           addr007d:
                           BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0073);
            }
         }
         §§goto(addr007d);
      }
      
      private function _FieldInfoProductionComponentSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 5;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0046:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr004a);
            }
            §§goto(addr0046);
         }
         addr004a:
         return _loc1_;
      }
      
      private function _FieldInfoProductionComponentSkin_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._FieldInfoProductionComponentSkin_ClassFactory1_c();
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 197;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.setStyle("skinClass",OutputListSkin);
                  if(!_loc3_)
                  {
                     _loc1_.id = "outcomeList";
                     if(_loc2_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a0:
                                 this.outcomeList = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
                                 }
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00aa);
            }
            §§goto(addr008f);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _FieldInfoProductionComponentSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = OutputItemRendered;
         }
         return _loc1_;
      }
      
      private function _FieldInfoProductionComponentSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 4;
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0051:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0055);
            }
            §§goto(addr0051);
         }
         addr0055:
         return _loc1_;
      }
      
      private function _FieldInfoProductionComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(!_loc2_)
               {
                  _loc1_.id = "splitter";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0071:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr007a:
                              this.splitter = _loc1_;
                              if(!_loc2_)
                              {
                                 BindingManager.executeBindings(this,"splitter",this.splitter);
                              }
                           }
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr007a);
            }
            §§goto(addr0071);
         }
         addr0091:
         return _loc1_;
      }
      
      private function _FieldInfoProductionComponentSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 4;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0054:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0054);
      }
      
      private function _FieldInfoProductionComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc3_)
         {
            _loc1_.showBoostButton = false;
            if(_loc3_)
            {
               _loc1_.width = 181;
               if(!_loc2_)
               {
                  _loc1_.id = "harvestProgress";
                  if(_loc3_ || Boolean(this))
                  {
                     addr0056:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr0079);
                        }
                     }
                     §§goto(addr008a);
                  }
                  addr0079:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr008a:
                     this.harvestProgress = _loc1_;
                     if(!_loc2_)
                     {
                        BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
                     }
                  }
                  §§goto(addr00a1);
               }
               addr00a1:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr0056);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1255241910harvestProgress = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
                        }
                     }
                     §§goto(addr008b);
                  }
               }
               §§goto(addr007c);
            }
            addr008b:
            return;
         }
         §§goto(addr0065);
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
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1449269008headerComponent = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
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
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1062744848outcomeList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1062744848outcomeList = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr005f);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1926588729splitter = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0068);
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
               if(_loc3_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
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
         }
         addr007c:
      }
   }
}

