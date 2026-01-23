package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.events.PlayfieldItemInventoryEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class PlayfieldItemInventoryRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3533310slot:PlayfieldItemInventorySlotComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PlayfieldItemInventoryListItemVo;
      
      private var _isDirty:Boolean;
      
      private var _currentState:String = "";
      
      public function PlayfieldItemInventoryRenderer()
      {
         super();
         mx_internal::_document = this;
         this.minHeight = 87;
         this.minWidth = 82;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._PlayfieldItemInventoryRenderer_PlayfieldItemInventorySlotComponent1_i()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[]
         }),new State({
            "name":"overSelected",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         })];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            if(!this.selected)
            {
               this._currentState = "normal";
               this.setCurrentState("normal");
            }
            else
            {
               this.selected = false;
               this.selected = true;
            }
            this.slot.data = this._data;
         }
      }
      
      private function handleRollOver(param1:MouseEvent) : void
      {
         if(this.slot.alpha == 1)
         {
            if(!selected)
            {
               this.setCurrentState("over");
            }
            else
            {
               this.setCurrentState("overSelected");
            }
            dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OVER,true,this._data));
         }
      }
      
      private function handleRollOut(param1:MouseEvent) : void
      {
         if(this.slot.alpha == 1)
         {
            if(!selected)
            {
               this.setCurrentState("normal");
            }
            else
            {
               this.setCurrentState("selected");
            }
            dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_ITEM_OUT,true,this._data));
         }
      }
      
      override protected function getCurrentRendererState() : String
      {
         if(this._currentState != "")
         {
            return this._currentState;
         }
         return super.getCurrentRendererState();
      }
      
      override public function set selected(param1:Boolean) : void
      {
         if(!this._data)
         {
            return;
         }
         if(this._data.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE)
         {
            if(Boolean(this._data.itemAtCursor) && param1)
            {
               dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_ITEM_CLICK,true,this._data));
               return;
            }
         }
         if(this._data.slotState != PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED)
         {
            return;
         }
         if(param1)
         {
            if(currentState == "over")
            {
               this._currentState = "overSelected";
            }
            else
            {
               this._currentState = "selected";
            }
         }
         else if(currentState == "overSelected")
         {
            this._currentState = "over";
         }
         else
         {
            this._currentState = "normal";
         }
         var _loc2_:Boolean = param1 && param1 != selected;
         super.selected = param1;
         if(_loc2_)
         {
            if(this._data == null)
            {
               return;
            }
            dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.INVENTORY_SELECTION_CHANGED,true,this._data,itemIndex));
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         this._currentState = param1;
         super.setCurrentState(param1,param2);
         this.slot.setCurrentState(param1,param2);
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._isDirty = true;
            this._data = param1 as PlayfieldItemInventoryListItemVo;
            invalidateProperties();
         }
      }
      
      public function get currentData() : PlayfieldItemInventoryListItemVo
      {
         return this._data;
      }
      
      override public function get measuredWidth() : Number
      {
         return minWidth;
      }
      
      private function _PlayfieldItemInventoryRenderer_PlayfieldItemInventorySlotComponent1_i() : PlayfieldItemInventorySlotComponent
      {
         var _loc1_:PlayfieldItemInventorySlotComponent = new PlayfieldItemInventorySlotComponent();
         _loc1_.id = "slot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot = _loc1_;
         BindingManager.executeBindings(this,"slot",this.slot);
         return _loc1_;
      }
      
      public function ___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.handleRollOver(param1);
      }
      
      public function ___PlayfieldItemInventoryRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.handleRollOut(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot() : PlayfieldItemInventorySlotComponent
      {
         return this._3533310slot;
      }
      
      public function set slot(param1:PlayfieldItemInventorySlotComponent) : void
      {
         var _loc2_:Object = this._3533310slot;
         if(_loc2_ !== param1)
         {
            this._3533310slot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot",_loc2_,param1));
            }
         }
      }
   }
}

