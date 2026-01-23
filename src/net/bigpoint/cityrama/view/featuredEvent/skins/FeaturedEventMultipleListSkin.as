package net.bigpoint.cityrama.view.featuredEvent.skins
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
   
   public class FeaturedEventMultipleListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function FeaturedEventMultipleListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.percentHeight = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0054:
                     this.percentWidth = 100;
                     if(!_loc1_)
                     {
                        addr005e:
                        this.blendMode = "normal";
                        if(!(_loc1_ && Boolean(this)))
                        {
                           this.mxmlContent = [this._FeaturedEventMultipleListSkin_DataGroup1_i()];
                           if(!_loc1_)
                           {
                              this.currentState = "normal";
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a0:
                                 states = [new State({
                                    "name":"normal",
                                    "overrides":[]
                                 }),new State({
                                    "name":"disabled",
                                    "overrides":[]
                                 })];
                              }
                           }
                           §§goto(addr00c8);
                        }
                     }
                     §§goto(addr00a0);
                  }
                  addr00c8:
                  return;
               }
               §§goto(addr005e);
            }
            §§goto(addr0054);
         }
         §§goto(addr005e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004b:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr004b);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _FeaturedEventMultipleListSkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.focusEnabled = false;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.layout = this._FeaturedEventMultipleListSkin_VerticalLayout1_c();
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "dataGroup";
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0095:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a9:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00c6);
                                 }
                              }
                              §§goto(addr00d8);
                           }
                           addr00c6:
                           this.dataGroup = _loc1_;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00d8:
                              BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                           }
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr00d8);
                  }
                  addr00e5:
                  return _loc1_;
               }
               §§goto(addr00c6);
            }
            §§goto(addr0095);
         }
         §§goto(addr00a9);
      }
      
      private function _FeaturedEventMultipleListSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.useVirtualLayout = true;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.gap = 8;
               if(_loc3_)
               {
                  addr0055:
                  _loc1_.clipAndEnableScrolling = false;
               }
               §§goto(addr005a);
            }
            §§goto(addr0055);
         }
         addr005a:
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr008c);
                  }
               }
               §§goto(addr007d);
            }
            addr008c:
            return;
         }
         §§goto(addr007d);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0056);
            }
         }
         addr0074:
      }
   }
}

