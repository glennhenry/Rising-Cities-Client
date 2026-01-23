package net.bigpoint.cityrama.view.emergencyBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.HGroup;
   import spark.components.ToggleButton;
   import spark.skins.SparkSkin;
   
   public class ToggleButtonBadgeSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1163583107_ToggleButtonBadgeSkin_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function ToggleButtonBadgeSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               addr002d:
               mx_internal::_document = this;
               if(!(_loc2_ && _loc2_))
               {
                  addr0047:
                  this.mxmlContent = [this._ToggleButtonBadgeSkin_HGroup1_c()];
                  if(_loc1_)
                  {
                     this.currentState = "up";
                     if(!_loc2_)
                     {
                        states = [new State({
                           "name":"up",
                           "stateGroups":["normalStates"],
                           "overrides":[]
                        }),new State({
                           "name":"over",
                           "stateGroups":["normalStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_ToggleButtonBadgeSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"ui_main_scrollarrow_down_activ"
                           })]
                        }),new State({
                           "name":"down",
                           "stateGroups":["normalStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_ToggleButtonBadgeSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"ui_main_scrollarrow_down"
                           })]
                        }),new State({
                           "name":"disabled",
                           "stateGroups":["normalStates"],
                           "overrides":[]
                        }),new State({
                           "name":"upAndSelected",
                           "stateGroups":["selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_ToggleButtonBadgeSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"ui_main_scrollarrow_up"
                           })]
                        }),new State({
                           "name":"overAndSelected",
                           "stateGroups":["selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_ToggleButtonBadgeSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"ui_main_scrollarrow_up_activ"
                           })]
                        }),new State({
                           "name":"downAndSelected",
                           "stateGroups":["selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_ToggleButtonBadgeSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"ui_main_scrollarrow_up"
                           })]
                        }),new State({
                           "name":"disabledAndSelected",
                           "stateGroups":["selectedStates"],
                           "overrides":[]
                        })];
                        addr0063:
                     }
                     return;
                  }
               }
               §§goto(addr0063);
            }
            §§goto(addr0047);
         }
         §§goto(addr002d);
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
               §§goto(addr0033);
            }
            §§goto(addr0041);
         }
         addr0033:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               addr0041:
               return;
            }
         }
         else
         {
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function _ToggleButtonBadgeSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0039);
            }
            §§goto(addr004b);
         }
         addr0039:
         _loc1_.percentHeight = 100;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            addr004b:
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr007e);
               }
            }
            §§goto(addr00a0);
         }
         addr007e:
         _loc1_.paddingLeft = 10;
         if(!_loc3_)
         {
            _loc1_.paddingRight = 5;
            if(!_loc3_)
            {
               addr00a0:
               _loc1_.mxmlContent = [this._ToggleButtonBadgeSkin_BriskImageDynaLib1_c(),this._ToggleButtonBadgeSkin_BriskImageDynaLib2_i()];
               if(_loc2_)
               {
                  §§goto(addr00b6);
               }
            }
            §§goto(addr00ca);
         }
         addr00b6:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr00ca:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ToggleButtonBadgeSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc3_ || _loc2_)
            {
               addr004b:
               _loc1_.dynaBmpSourceName = "list_header_badge";
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006b);
            }
            addr006f:
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _ToggleButtonBadgeSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               addr0032:
               _loc1_.dynaBmpSourceName = "ui_main_scrollarrow_down";
               if(!_loc2_)
               {
                  _loc1_.id = "_ToggleButtonBadgeSkin_BriskImageDynaLib2";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr008e);
                           }
                        }
                        §§goto(addr0098);
                     }
                  }
               }
            }
            addr008e:
            this._ToggleButtonBadgeSkin_BriskImageDynaLib2 = _loc1_;
            if(_loc3_)
            {
               addr0098:
               BindingManager.executeBindings(this,"_ToggleButtonBadgeSkin_BriskImageDynaLib2",this._ToggleButtonBadgeSkin_BriskImageDynaLib2);
            }
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ToggleButtonBadgeSkin_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._1163583107_ToggleButtonBadgeSkin_BriskImageDynaLib2;
      }
      
      public function set _ToggleButtonBadgeSkin_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1163583107_ToggleButtonBadgeSkin_BriskImageDynaLib2;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1163583107_ToggleButtonBadgeSkin_BriskImageDynaLib2 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ToggleButtonBadgeSkin_BriskImageDynaLib2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0066);
            }
            addr0084:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003f:
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr003f);
      }
   }
}

