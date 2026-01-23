package net.bigpoint.cityrama.view.assistants.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class RentCollectorOffersSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function RentCollectorOffersSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._RentCollectorOffersSkin_DataGroup1_i()];
                  if(!_loc1_)
                  {
                     this.currentState = "normal";
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0070:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0098);
            }
            §§goto(addr0070);
         }
         addr0098:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               addr0035:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0035);
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
      
      private function _RentCollectorOffersSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.focusEnabled = false;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.layout = this._RentCollectorOffersSkin_HorizontalLayout1_c();
                  if(!_loc2_)
                  {
                     _loc1_.id = "dataGroup";
                     if(_loc3_ || _loc2_)
                     {
                        addr006b:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr008a:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0093:
                                 this.dataGroup = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr00a5);
                           }
                           addr00b2:
                           return _loc1_;
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0093);
            }
         }
         §§goto(addr008a);
      }
      
      private function _RentCollectorOffersSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.useVirtualLayout = true;
            if(_loc2_)
            {
               _loc1_.requestedColumnCount = 4;
               if(!_loc3_)
               {
                  _loc1_.requestedMaxColumnCount = 4;
                  if(_loc2_ || _loc2_)
                  {
                     addr006b:
                     _loc1_.gap = 4;
                     if(_loc2_)
                     {
                        addr0075:
                        _loc1_.clipAndEnableScrolling = false;
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0075);
               }
               addr007a:
               return _loc1_;
            }
         }
         §§goto(addr006b);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0076);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr004c:
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004c);
      }
   }
}

