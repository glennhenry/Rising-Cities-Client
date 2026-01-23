package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   import spark.skins.SparkSkin;
   import spark.skins.spark.DefaultItemRenderer;
   
   public class SideMenueArchCategorySkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function SideMenueArchCategorySkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.minWidth = 112;
                  if(_loc2_ || Boolean(this))
                  {
                     this.blendMode = "normal";
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.mxmlContent = [this._SideMenueArchCategorySkin_DataGroup1_i()];
                        if(!_loc1_)
                        {
                           addr0089:
                           this.currentState = "normal";
                           if(_loc2_ || _loc2_)
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
                              addr009d:
                           }
                        }
                        §§goto(addr00e3);
                     }
                     §§goto(addr0089);
                  }
                  addr00e3:
                  return;
               }
            }
         }
         §§goto(addr009d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0036);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _SideMenueArchCategorySkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(_loc2_)
         {
            _loc1_.itemRenderer = this._SideMenueArchCategorySkin_ClassFactory1_c();
            if(_loc2_)
            {
               _loc1_.layout = this._SideMenueArchCategorySkin_VerticalLayout1_c();
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0054:
                  _loc1_.id = "dataGroup";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007f:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0090:
                              this.dataGroup = _loc1_;
                              if(_loc2_)
                              {
                                 BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                              }
                           }
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00a7);
            }
            §§goto(addr0054);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _SideMenueArchCategorySkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.generator = DefaultItemRenderer;
         }
         return _loc1_;
      }
      
      private function _SideMenueArchCategorySkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               addr003c:
               _loc1_.horizontalAlign = "contentJustify";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.requestedMinRowCount = 6;
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
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
               if(!_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0043);
                  }
                  §§goto(addr0053);
               }
               addr0043:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0053:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0062);
            }
            addr0062:
            return;
         }
         §§goto(addr0053);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  addr0046:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0046);
      }
   }
}

