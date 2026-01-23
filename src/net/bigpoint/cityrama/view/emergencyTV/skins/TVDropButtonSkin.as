package net.bigpoint.cityrama.view.emergencyTV.skins
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
   
   public class TVDropButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _5414398_TVDropButtonSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function TVDropButtonSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.mxmlContent = [this._TVDropButtonSkin_HGroup1_c()];
                  if(!_loc2_)
                  {
                     this.currentState = "up";
                     if(_loc1_ || Boolean(this))
                     {
                        states = [new State({
                           "name":"up",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_TVDropButtonSkin_BriskImageDynaLib1",
                              "name":"rotation",
                              "value":180
                           })]
                        }),new State({
                           "name":"over",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_TVDropButtonSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"mainhud_bar_arrow_mouseover"
                           }),new SetProperty().initializeFromObject({
                              "target":"_TVDropButtonSkin_BriskImageDynaLib1",
                              "name":"rotation",
                              "value":180
                           })]
                        }),new State({
                           "name":"down",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_TVDropButtonSkin_BriskImageDynaLib1",
                              "name":"rotation",
                              "value":180
                           })]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        }),new State({
                           "name":"upAndSelected",
                           "overrides":[]
                        }),new State({
                           "name":"overAndSelected",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_TVDropButtonSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"mainhud_bar_arrow_mouseover"
                           }),new SetProperty().initializeFromObject({
                              "target":"_TVDropButtonSkin_BriskImageDynaLib1",
                              "name":"rotation",
                              "value":0
                           })]
                        }),new State({
                           "name":"downAndSelected",
                           "overrides":[]
                        }),new State({
                           "name":"disabledAndSelected",
                           "overrides":[]
                        })];
                        addr006b:
                     }
                     §§goto(addr01a6);
                  }
               }
               §§goto(addr006b);
            }
         }
         addr01a6:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _TVDropButtonSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.width = 23;
               if(_loc3_)
               {
                  addr0050:
                  _loc1_.height = 23;
                  if(_loc3_)
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006d);
            }
            addr005a:
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && Boolean(this)))
            {
               addr006d:
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr008c:
                  _loc1_.mxmlContent = [this._TVDropButtonSkin_BriskImageDynaLib1_i()];
                  if(!_loc2_)
                  {
                     §§goto(addr009c);
                  }
                  §§goto(addr00a8);
               }
            }
            addr009c:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr00a8:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _TVDropButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.verticalCenter = -1;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalCenter = -1;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.dynaLibName = "gui_main_hud";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "mainhud_bar_arrow_normal";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.rotation = 0;
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr008c);
                        }
                        §§goto(addr00d9);
                     }
                     addr008c:
                     _loc1_.id = "_TVDropButtonSkin_BriskImageDynaLib1";
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr00ab:
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr00c7);
                              }
                           }
                           §§goto(addr00d9);
                        }
                     }
                     addr00c7:
                     this._TVDropButtonSkin_BriskImageDynaLib1 = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr00d9:
                        BindingManager.executeBindings(this,"_TVDropButtonSkin_BriskImageDynaLib1",this._TVDropButtonSkin_BriskImageDynaLib1);
                     }
                     §§goto(addr00e6);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr00ab);
            }
            §§goto(addr00d9);
         }
         addr00e6:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TVDropButtonSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._5414398_TVDropButtonSkin_BriskImageDynaLib1;
      }
      
      public function set _TVDropButtonSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._5414398_TVDropButtonSkin_BriskImageDynaLib1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0037:
                  this._5414398_TVDropButtonSkin_BriskImageDynaLib1 = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TVDropButtonSkin_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
            addr007a:
            return;
         }
         §§goto(addr0054);
      }
   }
}

