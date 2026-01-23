package net.bigpoint.cityrama.view.productionBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   
   public class OutputListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function OutputListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr0038);
               }
               §§goto(addr0078);
            }
            addr0038:
            this.percentWidth = 100;
            if(!(_loc1_ && Boolean(this)))
            {
               this.blendMode = "normal";
               if(!(_loc1_ && Boolean(this)))
               {
                  this.mxmlContent = [this._OutputListSkin_DataGroup1_i()];
                  if(_loc2_)
                  {
                     addr0078:
                     this.currentState = "normal";
                     if(!_loc1_)
                     {
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[new SetProperty().initializeFromObject({
                              "name":"alpha",
                              "value":0.5
                           })]
                        })];
                        addr0084:
                     }
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr0078);
            }
            addr00ca:
            return;
         }
         §§goto(addr0084);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     return;
                  }
               }
               else
               {
                  addr006e:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0074);
            }
            §§goto(addr006e);
         }
         addr0074:
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
      
      private function _OutputListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.focusEnabled = false;
                  if(!_loc3_)
                  {
                     addr0055:
                     _loc1_.layout = this._OutputListSkin_VerticalLayout1_c();
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.id = "dataGroup";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr0098);
                                 }
                              }
                              §§goto(addr00aa);
                           }
                           addr0098:
                           this.dataGroup = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00aa:
                              BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00aa);
                     }
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr0055);
            }
            §§goto(addr0064);
         }
         addr00b7:
         return _loc1_;
      }
      
      private function _OutputListSkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc2_ || _loc2_)
         {
            _loc1_.useVirtualLayout = false;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.gap = 10;
               if(!_loc3_)
               {
                  addr0053:
                  _loc1_.clipAndEnableScrolling = false;
               }
            }
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr004e:
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr006f);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0042);
      }
   }
}

