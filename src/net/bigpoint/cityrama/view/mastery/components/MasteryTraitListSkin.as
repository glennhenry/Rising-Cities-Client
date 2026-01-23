package net.bigpoint.cityrama.view.mastery.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import spark.components.DataGroup;
   import spark.components.List;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class MasteryTraitListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:List;
      
      public function MasteryTraitListSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr001e:
               mx_internal::_document = this;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.mxmlContent = [this._MasteryTraitListSkin_DataGroup1_i()];
                  if(_loc2_)
                  {
                     this.currentState = "normal";
                     if(_loc2_ || Boolean(this))
                     {
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
            }
            return;
         }
         §§goto(addr001e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0049);
                  }
               }
               else
               {
                  addr004f:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0049:
            return;
         }
         §§goto(addr004f);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _MasteryTraitListSkin_DataGroup1_i() : DataGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DataGroup = new DataGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.layout = this._MasteryTraitListSkin_HorizontalLayout1_c();
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "dataGroup";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0090:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00a1);
                              }
                              §§goto(addr00ab);
                           }
                        }
                        addr00a1:
                        this.dataGroup = _loc1_;
                        if(!_loc2_)
                        {
                           addr00ab:
                           BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr0090);
                  }
                  addr00b8:
                  return _loc1_;
               }
               §§goto(addr0090);
            }
            §§goto(addr00ab);
         }
         §§goto(addr00a1);
      }
      
      private function _MasteryTraitListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         if(!_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               addr002d:
               _loc1_.gap = 20;
            }
            return _loc1_;
         }
         §§goto(addr002d);
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
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._385593099dataGroup = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
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
         §§goto(addr0054);
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
               if(!(_loc3_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

