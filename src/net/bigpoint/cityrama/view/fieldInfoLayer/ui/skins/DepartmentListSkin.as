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
   
   public class DepartmentListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function DepartmentListSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.percentWidth = 100;
                  if(_loc1_ || Boolean(this))
                  {
                     this.blendMode = "normal";
                     if(_loc1_)
                     {
                        this.mxmlContent = [this._DepartmentListSkin_DataGroup1_i()];
                        if(!(_loc2_ && _loc1_))
                        {
                           addr007f:
                           this.currentState = "normal";
                           if(!(_loc2_ && _loc2_))
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
                              addr0093:
                           }
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr007f);
                  }
               }
               addr00d9:
               return;
            }
            §§goto(addr0093);
         }
         §§goto(addr007f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               addr0033:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0033);
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
      
      private function _DepartmentListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005d:
                  _loc1_.focusEnabled = false;
                  if(!_loc3_)
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr00b3);
               }
               addr0067:
               _loc1_.layout = this._DepartmentListSkin_HorizontalLayout1_c();
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.id = "dataGroup";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr00b3:
                              this.dataGroup = _loc1_;
                              if(_loc2_)
                              {
                                 addr00bd:
                                 BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00ca);
                     }
                  }
                  §§goto(addr00b3);
               }
               addr00ca:
               return _loc1_;
            }
            §§goto(addr005d);
         }
         §§goto(addr00b3);
      }
      
      private function _DepartmentListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc3_)
         {
            _loc1_.useVirtualLayout = false;
            if(_loc2_)
            {
               addr002b:
               _loc1_.verticalAlign = "middle";
               if(_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.gap = 2;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0071:
                        _loc1_.columnWidth = 30;
                        if(!_loc3_)
                        {
                           addr007c:
                           _loc1_.requestedMaxColumnCount = 3;
                           if(!_loc3_)
                           {
                              _loc1_.clipAndEnableScrolling = false;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007c);
               }
            }
            §§goto(addr0071);
         }
         §§goto(addr002b);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0049:
                  this._385593099dataGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  addr0037:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
      }
   }
}

