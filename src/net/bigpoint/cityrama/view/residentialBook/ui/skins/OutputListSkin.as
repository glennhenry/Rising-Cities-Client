package net.bigpoint.cityrama.view.residentialBook.ui.skins
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
      
      private var _379635904vLayout:VerticalLayout;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function OutputListSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  this.percentWidth = 100;
                  if(_loc1_)
                  {
                     addr005b:
                     this.blendMode = "normal";
                     if(!_loc2_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr007f);
               }
               addr0067:
               this.mxmlContent = [this._OutputListSkin_DataGroup1_i()];
               if(_loc1_ || _loc1_)
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
               return;
            }
            §§goto(addr007f);
         }
         §§goto(addr005b);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _OutputListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.focusEnabled = false;
                  if(_loc3_)
                  {
                     _loc1_.layout = this._OutputListSkin_VerticalLayout1_i();
                     if(!_loc2_)
                     {
                        addr0064:
                        _loc1_.id = "dataGroup";
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0083:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a0:
                                    this.dataGroup = _loc1_;
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00b2:
                                       BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                                    }
                                    §§goto(addr00bf);
                                 }
                                 §§goto(addr00b2);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0064);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr00a0);
      }
      
      private function _OutputListSkin_VerticalLayout1_i() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(!_loc2_)
         {
            _loc1_.useVirtualLayout = false;
            if(_loc3_)
            {
               _loc1_.gap = 2;
               if(!_loc2_)
               {
                  addr0042:
                  _loc1_.requestedMinRowCount = 1;
                  if(_loc3_)
                  {
                     _loc1_.clipAndEnableScrolling = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0069:
                        this.vLayout = _loc1_;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           BindingManager.executeBindings(this,"vLayout",this.vLayout);
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0042);
         }
         §§goto(addr0069);
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
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006e);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get vLayout() : VerticalLayout
      {
         return this._379635904vLayout;
      }
      
      public function set vLayout(param1:VerticalLayout) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._379635904vLayout;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._379635904vLayout = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vLayout",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr007e);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr007e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr008d);
            }
            addr008d:
            return;
         }
         §§goto(addr007e);
      }
   }
}

