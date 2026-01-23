package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   public class ImprovementEfficiencyListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function ImprovementEfficiencyListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._ImprovementEfficiencyListSkin_DataGroup1_i()];
                  if(_loc2_)
                  {
                     addr005c:
                     this.currentState = "normal";
                     if(!_loc1_)
                     {
                        addr0068:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr0090);
            }
            §§goto(addr005c);
         }
         addr0090:
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
                  if(_loc2_)
                  {
                     §§goto(addr002d);
                  }
               }
               else
               {
                  addr0033:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0033);
         }
         addr002d:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _ImprovementEfficiencyListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.layout = this._ImprovementEfficiencyListSkin_VerticalLayout1_c();
                  if(!(_loc3_ && _loc2_))
                  {
                     addr005d:
                     _loc1_.id = "dataGroup";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0091:
                                 this.dataGroup = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr0091);
                     }
                  }
                  §§goto(addr0088);
               }
               addr00a8:
               return _loc1_;
            }
            §§goto(addr005d);
         }
         §§goto(addr007c);
      }
      
      private function _ImprovementEfficiencyListSkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0049:
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0063);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0063:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0072);
            }
            addr0072:
            return;
         }
         §§goto(addr0049);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  addr0047:
                  if(_loc4_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0076);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0047);
      }
   }
}

