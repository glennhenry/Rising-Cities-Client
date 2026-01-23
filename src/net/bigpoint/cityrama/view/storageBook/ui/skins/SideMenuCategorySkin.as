package net.bigpoint.cityrama.view.storageBook.ui.skins
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
   
   public class SideMenuCategorySkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function SideMenuCategorySkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.minWidth = 112;
                  §§goto(addr0047);
               }
               §§goto(addr008c);
            }
            §§goto(addr0070);
         }
         addr0047:
         if(!_loc2_)
         {
            this.blendMode = "normal";
            if(_loc1_ || _loc2_)
            {
               addr0070:
               this.mxmlContent = [this._SideMenuCategorySkin_DataGroup1_i()];
               if(!_loc2_)
               {
                  §§goto(addr0080);
               }
               §§goto(addr008c);
            }
            addr0080:
            this.currentState = "normal";
            if(!_loc2_)
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
               addr008c:
            }
            §§goto(addr00d2);
         }
         addr00d2:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
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
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function _SideMenuCategorySkin_DataGroup1_i() : DataGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._SideMenuCategorySkin_ClassFactory1_c();
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.layout = this._SideMenuCategorySkin_VerticalLayout1_c();
               if(_loc2_)
               {
                  addr0054:
                  _loc1_.id = "dataGroup";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc2_)
                           {
                              addr008a:
                              this.dataGroup = _loc1_;
                              if(_loc2_ || _loc3_)
                              {
                                 addr009c:
                                 BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr009c);
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr009c);
         }
         §§goto(addr0054);
      }
      
      private function _SideMenuCategorySkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.generator = DefaultItemRenderer;
         }
         return _loc1_;
      }
      
      private function _SideMenuCategorySkin_VerticalLayout1_c() : VerticalLayout
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VerticalLayout = new VerticalLayout();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "contentJustify";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0054:
                  _loc1_.requestedMinRowCount = 6;
               }
               §§goto(addr005a);
            }
            §§goto(addr0054);
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385593099dataGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._385593099dataGroup = param1;
                  if(!_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0052);
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
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
   }
}

