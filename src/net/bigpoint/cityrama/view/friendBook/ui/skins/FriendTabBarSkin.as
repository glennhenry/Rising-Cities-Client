package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendTabItemRenderer;
   import spark.components.DataGroup;
   import spark.components.TabBar;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class FriendTabBarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:TabBar;
      
      public function FriendTabBarSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.width = 785;
                  if(_loc1_ || _loc2_)
                  {
                     this.height = 42;
                     if(!_loc2_)
                     {
                        §§goto(addr0056);
                     }
                  }
               }
               §§goto(addr008c);
            }
         }
         addr0056:
         this.mxmlContent = [this._FriendTabBarSkin_DataGroup1_i()];
         if(!(_loc2_ && _loc2_))
         {
            this.currentState = "normal";
            if(_loc1_ || _loc1_)
            {
               addr008c:
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
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
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
                  addr0053:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0059);
            }
            §§goto(addr0053);
         }
         addr0059:
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
      
      private function _FriendTabBarSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.left = 10;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = -1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.itemRenderer = this._FriendTabBarSkin_ClassFactory1_c();
                     if(_loc3_)
                     {
                        _loc1_.layout = this._FriendTabBarSkin_HorizontalLayout1_c();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0080);
                        }
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr00ce);
            }
            addr0080:
            _loc1_.id = "dataGroup";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr00c4);
                     }
                     §§goto(addr00ce);
                  }
               }
               addr00c4:
               this.dataGroup = _loc1_;
               if(!_loc2_)
               {
                  addr00ce:
                  BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
               }
            }
            §§goto(addr00db);
         }
         addr00db:
         return _loc1_;
      }
      
      private function _FriendTabBarSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = FriendTabItemRenderer;
         }
         return _loc1_;
      }
      
      private function _FriendTabBarSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.gap = 1;
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0060);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0068);
            }
            addr0086:
            return;
         }
         §§goto(addr0068);
      }
   }
}

