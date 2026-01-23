package net.bigpoint.cityrama.view.quest.ui.components
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
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  addr0038:
                  this.width = 11;
                  if(_loc2_ || Boolean(this))
                  {
                     this.height = 12;
                     if(_loc2_)
                     {
                        this.autoDrawBackground = false;
                        if(_loc2_)
                        {
                           this.focusEnabled = false;
                           if(!(_loc1_ && _loc2_))
                           {
                              addr007a:
                              this.mxmlContent = [this._BubblePagingItemRenderer_BriskImageDynaLib1_i()];
                              if(_loc2_)
                              {
                                 this.currentState = "normal";
                                 if(_loc2_)
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
                                    addr0096:
                                 }
                              }
                              §§goto(addr00fc);
                           }
                        }
                        §§goto(addr0096);
                     }
                     addr00fc:
                     return;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr007a);
            }
            §§goto(addr0038);
         }
         §§goto(addr007a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc2_))
            {
               addr0033:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0033);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
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
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "indicator";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr005f);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0070);
               }
            }
            §§goto(addr007a);
         }
         addr005f:
         _loc1_.document = this;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr0070:
            this.indicator = _loc1_;
            if(_loc2_)
            {
               addr007a:
               BindingManager.executeBindings(this,"indicator",this.indicator);
            }
         }
         return _loc1_;
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._711999985indicator = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indicator",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
   }
}

