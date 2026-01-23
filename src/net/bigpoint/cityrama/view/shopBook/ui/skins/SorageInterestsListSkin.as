package net.bigpoint.cityrama.view.shopBook.ui.skins
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
   
   public class SorageInterestsListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function SorageInterestsListSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.minWidth = 112;
                  if(!_loc2_)
                  {
                     addr0054:
                     this.mxmlContent = [this._SorageInterestsListSkin_DataGroup1_i()];
                     if(!_loc2_)
                     {
                        this.currentState = "normal";
                        if(_loc1_ || _loc2_)
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
                           addr0078:
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0078);
                  }
               }
               addr00be:
               return;
            }
         }
         §§goto(addr0054);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr004e);
                  }
               }
               else
               {
                  addr0054:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr0054);
         }
         addr004e:
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
      
      private function _SorageInterestsListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.focusEnabled = false;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.layout = this._SorageInterestsListSkin_VerticalLayout1_c();
                     if(_loc2_)
                     {
                        _loc1_.id = "dataGroup";
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00a9:
                                    this.dataGroup = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00bb:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                 }
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00c8);
                     }
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr00c8);
            }
            §§goto(addr00bb);
         }
         addr00c8:
         return _loc1_;
      }
      
      private function _SorageInterestsListSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc3_)
         {
            _loc1_.useVirtualLayout = true;
            if(_loc3_)
            {
               §§goto(addr0038);
            }
            §§goto(addr0042);
         }
         addr0038:
         _loc1_.gap = -2;
         if(!_loc2_)
         {
            addr0042:
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0056:
                  this._385593099dataGroup = param1;
                  if(_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0061);
            }
            addr0080:
            return;
         }
         §§goto(addr0056);
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
               if(_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
         }
         addr007f:
      }
   }
}

