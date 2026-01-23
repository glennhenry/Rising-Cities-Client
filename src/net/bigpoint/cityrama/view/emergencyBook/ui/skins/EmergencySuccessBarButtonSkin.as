package net.bigpoint.cityrama.view.emergencyBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Button;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class EmergencySuccessBarButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1365827148_EmergencySuccessBarButtonSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function EmergencySuccessBarButtonSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  §§goto(addr0040);
               }
               §§goto(addr0076);
            }
            §§goto(addr0062);
         }
         addr0040:
         this.mxmlContent = [this._EmergencySuccessBarButtonSkin_HGroup1_c()];
         if(_loc2_ || _loc1_)
         {
            addr0062:
            this.currentState = "up";
            if(!(_loc1_ && Boolean(this)))
            {
               states = [new State({
                  "name":"up",
                  "overrides":[]
               }),new State({
                  "name":"over",
                  "overrides":[new SetProperty().initializeFromObject({
                     "target":"_EmergencySuccessBarButtonSkin_BriskImageDynaLib1",
                     "name":"dynaBmpSourceName",
                     "value":"max_mouseover"
                  })]
               }),new State({
                  "name":"down",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               })];
               addr0076:
            }
         }
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
               addr002a:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr002a);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _EmergencySuccessBarButtonSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.width = 45;
            if(!_loc3_)
            {
               _loc1_.height = 45;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_)
                     {
                        addr0062:
                        _loc1_.mxmlContent = [this._EmergencySuccessBarButtonSkin_BriskImageDynaLib1_i()];
                        if(_loc2_)
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr0086);
                     }
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0062);
               }
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _EmergencySuccessBarButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaLibName = "gui_popups_emergencyBook";
                  if(_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "max_normal";
                     if(!_loc3_)
                     {
                        _loc1_.id = "_EmergencySuccessBarButtonSkin_BriskImageDynaLib1";
                        if(_loc2_ || _loc2_)
                        {
                           addr007c:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0088:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr0091:
                                    this._EmergencySuccessBarButtonSkin_BriskImageDynaLib1 = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr009b:
                                       BindingManager.executeBindings(this,"_EmergencySuccessBarButtonSkin_BriskImageDynaLib1",this._EmergencySuccessBarButtonSkin_BriskImageDynaLib1);
                                    }
                                    §§goto(addr00a8);
                                 }
                                 §§goto(addr009b);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0091);
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0091);
      }
      
      [Bindable(event="propertyChange")]
      public function get _EmergencySuccessBarButtonSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1365827148_EmergencySuccessBarButtonSkin_BriskImageDynaLib1;
      }
      
      public function set _EmergencySuccessBarButtonSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1365827148_EmergencySuccessBarButtonSkin_BriskImageDynaLib1;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1365827148_EmergencySuccessBarButtonSkin_BriskImageDynaLib1 = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0046);
                  }
                  §§goto(addr0055);
               }
               addr0046:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0055:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_EmergencySuccessBarButtonSkin_BriskImageDynaLib1",_loc2_,param1));
                  }
               }
               §§goto(addr0064);
            }
         }
         addr0064:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0061);
      }
   }
}

