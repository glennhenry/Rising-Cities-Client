package net.bigpoint.cityrama.view.newsscreen.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.supportClasses.ItemRenderer;
   
   public class BubblePagingItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _711999985indicator:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BubblePagingItemRenderer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  §§goto(addr0040);
               }
            }
            §§goto(addr00a6);
         }
         addr0040:
         this.width = 14;
         if(_loc2_)
         {
            this.height = 14;
            if(_loc2_)
            {
               this.autoDrawBackground = false;
               if(_loc2_ || Boolean(this))
               {
                  addr0070:
                  this.focusEnabled = false;
                  if(_loc2_)
                  {
                     this.mxmlContent = [this._BubblePagingItemRenderer_BriskImageDynaLib1_i()];
                     if(_loc2_ || _loc1_)
                     {
                        this.currentState = "normal";
                        if(_loc2_ || _loc2_)
                        {
                           states = [new State({
                              "name":"normal",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"indicator",
                                 "name":"dynaBmpSourceName",
                                 "value":"paging_dot_grey"
                              })]
                           }),new State({
                              "name":"selected",
                              "overrides":[new SetProperty().initializeFromObject({
                                 "target":"indicator",
                                 "name":"dynaBmpSourceName",
                                 "value":"paging_dot_white"
                              })]
                           })];
                           addr00a6:
                        }
                        §§goto(addr010c);
                     }
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr010c);
            }
            §§goto(addr0070);
         }
         addr010c:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr004c);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0060);
            }
            addr004c:
            return;
         }
         addr0060:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function _BubblePagingItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_newsScreenPopup";
            if(_loc2_)
            {
               _loc1_.id = "indicator";
               if(!_loc3_)
               {
                  addr0040:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0060);
                     }
                  }
                  §§goto(addr0069);
               }
            }
            addr0060:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0069:
               this.indicator = _loc1_;
               if(_loc2_)
               {
                  BindingManager.executeBindings(this,"indicator",this.indicator);
               }
            }
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get indicator() : BriskImageDynaLib
      {
         return this._711999985indicator;
      }
      
      public function set indicator(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._711999985indicator;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0037:
                  this._711999985indicator = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indicator",_loc2_,param1));
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

