package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class SecurityStatusCheckSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function SecurityStatusCheckSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr003f);
               }
               §§goto(addr0049);
            }
         }
         addr003f:
         this.percentWidth = 100;
         if(_loc1_)
         {
            this.blendMode = "normal";
            addr0049:
            if(!(_loc2_ && _loc2_))
            {
               this.mxmlContent = [this._SecurityStatusCheckSkin_DataGroup1_i()];
               if(!_loc2_)
               {
                  §§goto(addr0077);
               }
               §§goto(addr008b);
            }
            addr0077:
            this.currentState = "normal";
            if(!(_loc2_ && Boolean(this)))
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
               addr008b:
            }
            §§goto(addr00d1);
         }
         addr00d1:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr0054);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0054:
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
      
      private function _SecurityStatusCheckSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.focusEnabled = false;
                  if(!_loc2_)
                  {
                     _loc1_.layout = this._SecurityStatusCheckSkin_HorizontalLayout1_c();
                     addr0053:
                     if(!_loc2_)
                     {
                        addr006f:
                        _loc1_.id = "dataGroup";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr0096);
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr0082);
                  }
                  addr0096:
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr00b4:
                     this.dataGroup = _loc1_;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00c6:
                        BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0053);
            }
            §§goto(addr00b4);
         }
         §§goto(addr006f);
      }
      
      private function _SecurityStatusCheckSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.useVirtualLayout = false;
            if(!(_loc2_ && _loc3_))
            {
               addr004c:
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.gap = 0;
                     if(_loc3_)
                     {
                        addr0087:
                        _loc1_.requestedMaxColumnCount = 3;
                        if(!_loc2_)
                        {
                           addr0092:
                           _loc1_.clipAndEnableScrolling = false;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0092);
            }
            §§goto(addr0087);
         }
         §§goto(addr004c);
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
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr0046:
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     addr0050:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0050);
            }
            addr006e:
            return;
         }
         §§goto(addr0046);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
   }
}

