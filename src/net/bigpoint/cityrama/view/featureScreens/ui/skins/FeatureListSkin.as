package net.bigpoint.cityrama.view.featureScreens.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.skins.SparkSkin;
   import spark.skins.spark.DefaultItemRenderer;
   
   public class FeatureListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function FeatureListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._FeatureListSkin_DataGroup1_i()];
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr0080);
               }
               addr0062:
               this.currentState = "normal";
               if(!(_loc1_ && _loc1_))
               {
                  addr0080:
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"disabled",
                     "overrides":[]
                  })];
               }
               §§goto(addr00a8);
            }
            addr00a8:
            return;
         }
         §§goto(addr0080);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               else
               {
                  addr0054:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0054);
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
      
      private function _FeatureListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.itemRenderer = this._FeatureListSkin_ClassFactory1_c();
            if(!_loc3_)
            {
               _loc1_.id = "dataGroup";
               if(_loc2_)
               {
                  addr005c:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr0068);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0071);
               }
               addr0068:
               _loc1_.document = this;
               if(_loc2_)
               {
                  addr0071:
                  this.dataGroup = _loc1_;
                  if(_loc2_)
                  {
                     addr007b:
                     BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0071);
         }
         §§goto(addr005c);
      }
      
      private function _FeatureListSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = DefaultItemRenderer;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._385593099dataGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  addr004a:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0066);
            }
            addr0085:
            return;
         }
         §§goto(addr004a);
      }
   }
}

