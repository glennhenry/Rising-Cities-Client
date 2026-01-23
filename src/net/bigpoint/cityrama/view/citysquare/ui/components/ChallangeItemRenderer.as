package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ChallangeItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3059471comp:ChallengeItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:EventChallengeDetailViewVo;
      
      public function ChallangeItemRenderer()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.autoDrawBackground = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr007b);
               }
            }
            §§goto(addr0098);
         }
         addr0063:
         this.mxmlContent = [this._ChallangeItemRenderer_ChallengeItemComponent1_i()];
         if(_loc1_ || _loc2_)
         {
            addr007b:
            this.currentState = "normal";
            if(!_loc2_)
            {
               this.addEventListener("creationComplete",this.___ChallangeItemRenderer_ItemRenderer1_creationComplete);
               if(_loc1_)
               {
                  states = [new State({
                     "name":"normal",
                     "overrides":[]
                  }),new State({
                     "name":"hovered",
                     "overrides":[]
                  }),new State({
                     "name":"selected",
                     "overrides":[]
                  })];
                  addr0098:
               }
               §§goto(addr00db);
            }
            §§goto(addr0098);
         }
         addr00db:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0041);
                  }
               }
               this.__moduleFactoryInitialized = true;
               §§goto(addr0055);
            }
            addr0041:
            return;
         }
         addr0055:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.data = param1;
            if(_loc2_)
            {
               addr0033:
               this._dataDirty = true;
               if(!_loc3_)
               {
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0033);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               if(this._dataDirty)
               {
                  if(!_loc1_)
                  {
                     addr0037:
                     this._dataDirty = false;
                     if(_loc2_ || _loc2_)
                     {
                        addr0049:
                        this.comp.data = super.data as EventChallengeDetailViewVo;
                     }
                  }
               }
               return;
            }
            §§goto(addr0037);
         }
         §§goto(addr0049);
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _ChallangeItemRenderer_ChallengeItemComponent1_i() : ChallengeItemComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ChallengeItemComponent = new ChallengeItemComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.id = "comp";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0059:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006a:
                        this.comp = _loc1_;
                        if(!_loc3_)
                        {
                           addr0074:
                           BindingManager.executeBindings(this,"comp",this.comp);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr0074);
                  }
                  addr0081:
                  return _loc1_;
               }
               §§goto(addr006a);
            }
         }
         §§goto(addr0059);
      }
      
      public function ___ChallangeItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get comp() : ChallengeItemComponent
      {
         return this._3059471comp;
      }
      
      public function set comp(param1:ChallengeItemComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._3059471comp;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._3059471comp = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comp",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
   }
}

