package net.bigpoint.cityrama.view.common.skins
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
   
   public class CategoryMenuListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function CategoryMenuListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc2_)
               {
                  this.percentHeight = 100;
                  if(!_loc1_)
                  {
                     this.percentWidth = 100;
                     if(!(_loc1_ && _loc1_))
                     {
                        this.blendMode = "normal";
                        if(!_loc1_)
                        {
                           this.mxmlContent = [this._CategoryMenuListSkin_DataGroup1_i()];
                           if(_loc2_)
                           {
                              addr008c:
                              this.currentState = "normal";
                              if(_loc2_)
                              {
                                 addr0098:
                                 states = [new State({
                                    "name":"normal",
                                    "overrides":[]
                                 }),new State({
                                    "name":"disabled",
                                    "overrides":[]
                                 })];
                              }
                           }
                        }
                        §§goto(addr00c0);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr008c);
               }
            }
            addr00c0:
            return;
         }
         §§goto(addr008c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc2_)
            {
               addr004a:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr004a);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function _CategoryMenuListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentHeight = 100;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  addr003f:
                  _loc1_.focusEnabled = false;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.layout = this._CategoryMenuListSkin_VerticalLayout1_c();
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.id = "dataGroup";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0096:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr009f:
                                    this.dataGroup = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00a9:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                    §§goto(addr00b6);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr009f);
                        }
                        addr00b6:
                        return _loc1_;
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr009f);
            }
            §§goto(addr003f);
         }
         §§goto(addr0096);
      }
      
      private function _CategoryMenuListSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(!_loc2_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.variableRowHeight = true;
               if(_loc3_ || _loc2_)
               {
                  addr0060:
                  _loc1_.gap = 2;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.clipAndEnableScrolling = false;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0060);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._385593099dataGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0084:
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
   }
}

