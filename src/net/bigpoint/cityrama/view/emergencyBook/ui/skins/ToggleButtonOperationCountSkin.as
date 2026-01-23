package net.bigpoint.cityrama.view.emergencyBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.HGroup;
   import spark.components.ToggleButton;
   import spark.skins.SparkSkin;
   
   public class ToggleButtonOperationCountSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function ToggleButtonOperationCountSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  this.mxmlContent = [this._ToggleButtonOperationCountSkin_HGroup1_c()];
                  if(_loc2_ || _loc1_)
                  {
                     this.currentState = "up";
                     if(_loc2_)
                     {
                        addr0064:
                        this.addEventListener("creationComplete",this.___ToggleButtonOperationCountSkin_SparkSkin1_creationComplete);
                        if(!(_loc1_ && _loc2_))
                        {
                           states = [new State({
                              "name":"up",
                              "stateGroups":["normalStates"],
                              "overrides":[]
                           }),new State({
                              "name":"over",
                              "stateGroups":["normalStates"],
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
                                 "name":"dynaBmpSourceName",
                                 "value":"ui_main_scrollarrow_down_activ"
                              })]
                           }),new State({
                              "name":"down",
                              "stateGroups":["normalStates"],
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
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
                                 "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
                                 "name":"dynaBmpSourceName",
                                 "value":"ui_main_scrollarrow_up"
                              })]
                           }),new State({
                              "name":"overAndSelected",
                              "stateGroups":["selectedStates"],
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
                                 "name":"dynaBmpSourceName",
                                 "value":"ui_main_scrollarrow_up_activ"
                              })]
                           }),new State({
                              "name":"downAndSelected",
                              "stateGroups":["selectedStates"],
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
                                 "name":"dynaBmpSourceName",
                                 "value":"ui_main_scrollarrow_up"
                              })]
                           }),new State({
                              "name":"disabledAndSelected",
                              "stateGroups":["selectedStates"],
                              "overrides":[]
                           })];
                           addr007d:
                        }
                     }
                     §§goto(addr01dc);
                  }
               }
               §§goto(addr007d);
            }
            addr01dc:
            return;
         }
         §§goto(addr0064);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr003d);
            }
            §§goto(addr004b);
         }
         addr003d:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               addr004b:
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
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.labelDisplay.text = ResourceManager.getInstance().getString("rcl.emergencybook.layer","rcl.emergencybook.layer.operationCountLeft");
         }
      }
      
      private function _ToggleButtonOperationCountSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     addr0051:
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        _loc1_.paddingLeft = 10;
                        if(_loc2_ || Boolean(this))
                        {
                           addr006e:
                           _loc1_.paddingRight = 5;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr008c);
                           }
                           §§goto(addr00a2);
                        }
                        addr008c:
                        _loc1_.mxmlContent = [this._ToggleButtonOperationCountSkin_LocaLabel1_i(),this._ToggleButtonOperationCountSkin_BriskImageDynaLib1_i()];
                        if(!_loc3_)
                        {
                           addr00a2:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00ae:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr006e);
               }
               §§goto(addr00ae);
            }
            addr00b2:
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _ToggleButtonOperationCountSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_)
               {
                  _loc1_.text = "DEV: Operations left, multiline";
                  if(!_loc2_)
                  {
                     _loc1_.styleName = "sortLabel";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "labelDisplay";
                        if(_loc3_)
                        {
                           addr0069:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0080:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr0091);
                                 }
                              }
                              §§goto(addr009b);
                           }
                           addr0091:
                           this.labelDisplay = _loc1_;
                           if(_loc3_)
                           {
                              addr009b:
                              BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                           }
                           §§goto(addr00a8);
                        }
                        addr00a8:
                        return _loc1_;
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr0069);
         }
         §§goto(addr0091);
      }
      
      private function _ToggleButtonOperationCountSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "ui_main_scrollarrow_down";
               if(_loc3_)
               {
                  _loc1_.id = "_ToggleButtonOperationCountSkin_BriskImageDynaLib1";
                  if(_loc3_ || _loc3_)
                  {
                     addr0076:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0082:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr0095);
                        }
                     }
                  }
                  addr008b:
                  this._ToggleButtonOperationCountSkin_BriskImageDynaLib1 = _loc1_;
                  if(!_loc2_)
                  {
                     addr0095:
                     BindingManager.executeBindings(this,"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",this._ToggleButtonOperationCountSkin_BriskImageDynaLib1);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0076);
         }
         §§goto(addr0082);
      }
      
      public function ___ToggleButtonOperationCountSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ToggleButtonOperationCountSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1;
      }
      
      public function set _ToggleButtonOperationCountSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1 = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1184053038labelDisplay;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1184053038labelDisplay = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
         }
         addr0079:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

