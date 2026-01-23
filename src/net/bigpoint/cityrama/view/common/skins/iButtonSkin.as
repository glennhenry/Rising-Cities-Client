package net.bigpoint.cityrama.view.common.skins
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
   
   public class iButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _788680196_iButtonSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function iButtonSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  §§goto(addr002f);
               }
            }
            §§goto(addr0047);
         }
         addr002f:
         this.mxmlContent = [this._iButtonSkin_BriskImageDynaLib1_i()];
         if(_loc1_ || _loc2_)
         {
            addr0047:
            this.currentState = "normal";
            if(!(_loc2_ && _loc1_))
            {
               states = [new State({
                  "name":"normal",
                  "overrides":[]
               }),new State({
                  "name":"up",
                  "overrides":[]
               }),new State({
                  "name":"over",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_iButtonSkin_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"architect_icon_detailinfo_mouseover"
                  })]
               }),new State({
                  "name":"down",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               })];
            }
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0039);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0039:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _iButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc3_))
            {
               addr0033:
               _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     addr0055:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "_iButtonSkin_BriskImageDynaLib1";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009c:
                                    this._iButtonSkin_BriskImageDynaLib1 = _loc1_;
                                    if(_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"_iButtonSkin_BriskImageDynaLib1",this._iButtonSkin_BriskImageDynaLib1);
                                    }
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr009c);
                        }
                        addr00b3:
                        return _loc1_;
                     }
                  }
                  §§goto(addr009c);
               }
            }
            §§goto(addr0055);
         }
         §§goto(addr0033);
      }
      
      [Bindable(event="propertyChange")]
      public function get _iButtonSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._788680196_iButtonSkin_BriskImageDynaLib1;
      }
      
      public function set _iButtonSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._788680196_iButtonSkin_BriskImageDynaLib1;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._788680196_iButtonSkin_BriskImageDynaLib1 = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_iButtonSkin_BriskImageDynaLib1",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
         }
         addr0085:
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
               if(!(_loc4_ && Boolean(this)))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0076);
      }
   }
}

