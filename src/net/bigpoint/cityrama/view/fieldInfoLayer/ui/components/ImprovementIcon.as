package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   
   public class ImprovementIcon extends Group implements IStateClient2
   {
      
      private var _1034821651_ImprovementIcon_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ImprovementIcon()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0038:
                  this.mxmlContent = [this._ImprovementIcon_BriskImageDynaLib1_i()];
                  if(_loc2_)
                  {
                     §§goto(addr0048);
                  }
                  §§goto(addr0054);
               }
            }
            addr0048:
            this.currentState = "empty";
            if(!_loc1_)
            {
               states = [new State({
                  "name":"empty",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_empty"
                  })]
               }),new State({
                  "name":"locked",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_locked"
                  })]
               }),new State({
                  "name":"common",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_green"
                  })]
               }),new State({
                  "name":"commonExpired",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_green_expired"
                  })]
               }),new State({
                  "name":"rare",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_blue"
                  })]
               }),new State({
                  "name":"rareExpired",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_blue_expired"
                  })]
               }),new State({
                  "name":"epic",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_purple"
                  })]
               }),new State({
                  "name":"epicExpired",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_purple_expired"
                  })]
               }),new State({
                  "name":"legendary",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_ImprovementIcon_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"infolayer_hipstate_orange"
                  })]
               })];
               addr0054:
            }
            return;
         }
         §§goto(addr0038);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0058);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr006b);
            }
            addr0058:
            return;
         }
         addr006b:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _ImprovementIcon_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 24;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr004c);
               }
               §§goto(addr0090);
            }
            §§goto(addr0069);
         }
         addr004c:
         _loc1_.height = 24;
         if(!(_loc3_ && _loc2_))
         {
            addr0069:
            _loc1_.id = "_ImprovementIcon_BriskImageDynaLib1";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0090);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr00ab);
            }
            addr0090:
            _loc1_.document = this;
            if(!(_loc3_ && _loc3_))
            {
               addr00ab:
               this._ImprovementIcon_BriskImageDynaLib1 = _loc1_;
               if(_loc2_ || Boolean(this))
               {
                  addr00bd:
                  BindingManager.executeBindings(this,"_ImprovementIcon_BriskImageDynaLib1",this._ImprovementIcon_BriskImageDynaLib1);
               }
            }
            §§goto(addr00ca);
         }
         addr00ca:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementIcon_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1034821651_ImprovementIcon_BriskImageDynaLib1;
      }
      
      public function set _ImprovementIcon_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1034821651_ImprovementIcon_BriskImageDynaLib1;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1034821651_ImprovementIcon_BriskImageDynaLib1 = param1;
                  if(!_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementIcon_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr005a);
      }
   }
}

