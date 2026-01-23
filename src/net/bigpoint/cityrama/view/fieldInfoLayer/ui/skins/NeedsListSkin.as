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
   
   public class NeedsListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function NeedsListSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.percentWidth = 100;
                  if(_loc1_ || _loc2_)
                  {
                     this.blendMode = "normal";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0067:
                        this.mxmlContent = [this._NeedsListSkin_DataGroup1_i()];
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr007f);
                        }
                        §§goto(addr008b);
                     }
                  }
               }
               addr007f:
               this.currentState = "normal";
               if(_loc1_)
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
            §§goto(addr0067);
         }
         addr00d1:
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
               §§goto(addr0021);
            }
            §§goto(addr0035);
         }
         addr0021:
         if(this.__moduleFactoryInitialized)
         {
            if(!_loc3_)
            {
               return;
            }
         }
         else
         {
            addr0035:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function _NeedsListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.focusEnabled = false;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.layout = this._NeedsListSkin_HorizontalLayout1_c();
                     if(_loc2_ || _loc2_)
                     {
                        addr0074:
                        _loc1_.id = "dataGroup";
                        if(_loc2_)
                        {
                           addr007f:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr0093);
                              }
                           }
                           §§goto(addr00b0);
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0074);
               }
               addr0093:
               _loc1_.document = this;
               if(!(_loc3_ && _loc2_))
               {
                  addr00b0:
                  this.dataGroup = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007f);
      }
      
      private function _NeedsListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.useVirtualLayout = false;
            if(_loc2_ || _loc3_)
            {
               _loc1_.verticalAlign = "middle";
               §§goto(addr0048);
            }
            §§goto(addr005f);
         }
         addr0048:
         if(!_loc3_)
         {
            addr005f:
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0071);
            }
            §§goto(addr007b);
         }
         addr0071:
         _loc1_.gap = 10;
         if(_loc2_)
         {
            addr007b:
            _loc1_.clipAndEnableScrolling = false;
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
               if(_loc3_ || _loc3_)
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr005e);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0075);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
         }
         addr0084:
      }
   }
}

