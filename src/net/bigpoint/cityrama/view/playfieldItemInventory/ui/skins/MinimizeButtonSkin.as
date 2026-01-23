package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Button;
   import spark.skins.SparkSkin;
   
   public class MinimizeButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _910381391_MinimizeButtonSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function MinimizeButtonSkin()
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
               if(!_loc1_)
               {
                  addr0030:
                  this.mxmlContent = [this._MinimizeButtonSkin_BriskImageDynaLib1_i()];
                  if(!_loc1_)
                  {
                     §§goto(addr0040);
                  }
                  §§goto(addr004c);
               }
               §§goto(addr0040);
            }
            §§goto(addr0030);
         }
         addr0040:
         this.currentState = "normal";
         if(_loc2_)
         {
            states = [new State({
               "name":"normal",
               "overrides":[]
            }),new State({
               "name":"up",
               "overrides":[]
            }),new State({
               "name":"over",
               "overrides":[]
            }),new State({
               "name":"down",
               "overrides":[]
            }),new State({
               "name":"upAndSelected",
               "stateGroups":["selected"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_MinimizeButtonSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"twistie_down"
               })]
            }),new State({
               "name":"overAndSelected",
               "stateGroups":["selected"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_MinimizeButtonSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"twistie_down"
               })]
            }),new State({
               "name":"downAndSelected",
               "stateGroups":["selected"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_MinimizeButtonSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"twistie_down"
               })]
            }),new State({
               "name":"disabled",
               "overrides":[]
            }),new State({
               "name":"disabledAndSelected",
               "overrides":[]
            })];
            addr004c:
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0049);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr0049:
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
      
      private function _MinimizeButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "twistie_up";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "_MinimizeButtonSkin_BriskImageDynaLib1";
                  if(!_loc2_)
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr008f);
                           }
                           §§goto(addr0099);
                        }
                     }
                     addr008f:
                     this._MinimizeButtonSkin_BriskImageDynaLib1 = _loc1_;
                     if(_loc3_)
                     {
                        addr0099:
                        BindingManager.executeBindings(this,"_MinimizeButtonSkin_BriskImageDynaLib1",this._MinimizeButtonSkin_BriskImageDynaLib1);
                     }
                     §§goto(addr00a6);
                  }
                  addr00a6:
                  return _loc1_;
               }
               §§goto(addr0099);
            }
            §§goto(addr008f);
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get _MinimizeButtonSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._910381391_MinimizeButtonSkin_BriskImageDynaLib1;
      }
      
      public function set _MinimizeButtonSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._910381391_MinimizeButtonSkin_BriskImageDynaLib1;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._910381391_MinimizeButtonSkin_BriskImageDynaLib1 = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_MinimizeButtonSkin_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
   }
}

