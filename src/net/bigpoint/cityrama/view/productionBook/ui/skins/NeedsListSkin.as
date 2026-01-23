package net.bigpoint.cityrama.view.productionBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.DataGrid;
   import spark.components.DataGroup;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class NeedsListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:DataGrid;
      
      public function NeedsListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.mxmlContent = [this._NeedsListSkin_DataGroup1_i()];
                  §§goto(addr0040);
               }
               §§goto(addr0062);
            }
            §§goto(addr0086);
         }
         addr0040:
         if(_loc2_ || _loc2_)
         {
            addr0062:
            this.currentState = "normal";
            if(_loc2_ || _loc2_)
            {
               this.addEventListener("creationComplete",this.___NeedsListSkin_SparkSkin1_creationComplete);
               if(_loc2_)
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
                  addr0086:
               }
               §§goto(addr00cc);
            }
            §§goto(addr0086);
         }
         addr00cc:
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
                  if(!(_loc2_ && _loc3_))
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
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
      }
      
      private function _NeedsListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.height = 150;
            if(_loc2_)
            {
               _loc1_.focusEnabled = false;
               if(!(_loc3_ && _loc2_))
               {
                  addr0053:
                  _loc1_.layout = this._NeedsListSkin_HorizontalLayout1_c();
                  if(_loc2_)
                  {
                     _loc1_.id = "dataGroup";
                     if(_loc2_)
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr009f:
                                 this.dataGroup = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00a9:
                                    BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr00a9);
                           }
                           addr00b6:
                           return _loc1_;
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr006d);
            }
            §§goto(addr0053);
         }
         §§goto(addr009f);
      }
      
      private function _NeedsListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_)
         {
            _loc1_.useVirtualLayout = false;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.gap = 2;
               if(_loc3_)
               {
                  §§goto(addr0059);
               }
               §§goto(addr006c);
            }
            addr0059:
            _loc1_.columnWidth = 72;
            if(!(_loc2_ && Boolean(this)))
            {
               addr006c:
               _loc1_.clipAndEnableScrolling = false;
            }
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      public function ___NeedsListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleCreationComplete();
         }
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DataGrid
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DataGrid) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0057);
            }
            addr0076:
            return;
         }
         §§goto(addr0057);
      }
   }
}

