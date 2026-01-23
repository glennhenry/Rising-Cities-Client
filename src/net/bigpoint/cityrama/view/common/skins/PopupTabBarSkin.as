package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.PopupTabItemRenderer;
   import spark.components.DataGroup;
   import spark.components.TabBar;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class PopupTabBarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:TabBar;
      
      public function PopupTabBarSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.width = 775;
                  if(_loc2_ || _loc2_)
                  {
                     addr0055:
                     this.height = 39;
                     if(!_loc1_)
                     {
                        addr005f:
                        this.mxmlContent = [this._PopupTabBarSkin_DataGroup1_i()];
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr0095);
                     }
                     addr0077:
                     this.currentState = "normal";
                     if(_loc2_ || _loc2_)
                     {
                        addr0095:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr00bd);
                  }
                  addr00bd:
                  return;
               }
            }
            §§goto(addr005f);
         }
         §§goto(addr0055);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0040);
                  }
               }
               §§goto(addr0046);
            }
            addr0040:
            return;
         }
         addr0046:
         this.__moduleFactoryInitialized = true;
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
      
      private function _PopupTabBarSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(!_loc2_)
         {
            _loc1_.left = 7;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = -1;
                  if(_loc3_)
                  {
                     _loc1_.itemRenderer = this._PopupTabBarSkin_ClassFactory1_c();
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.layout = this._PopupTabBarSkin_HorizontalLayout1_c();
                        if(!_loc2_)
                        {
                           _loc1_.id = "dataGroup";
                           if(!_loc2_)
                           {
                              §§goto(addr007e);
                           }
                           §§goto(addr009f);
                        }
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr009f:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00b2);
                           }
                        }
                        §§goto(addr00a8);
                     }
                     addr00a8:
                     this.dataGroup = _loc1_;
                     if(_loc3_)
                     {
                        addr00b2:
                        BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                     }
                     §§goto(addr00bf);
                  }
                  addr00bf:
                  return _loc1_;
               }
               §§goto(addr00b2);
            }
            §§goto(addr00a8);
         }
         §§goto(addr00b2);
      }
      
      private function _PopupTabBarSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = PopupTabItemRenderer;
         }
         return _loc1_;
      }
      
      private function _PopupTabBarSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "top";
            }
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007d);
            }
            addr008c:
            return;
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : TabBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:TabBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

