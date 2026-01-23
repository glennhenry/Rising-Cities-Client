package net.bigpoint.cityrama.view.mysteryBuilding.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import spark.components.supportClasses.ItemRenderer;
   
   public class MysteryOutcomeRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _989375879playfieldItem:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConfigPlayfieldItemDTO;
      
      private var _isDirty:Boolean;
      
      public function MysteryOutcomeRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.height = 118;
         this.width = 118;
         this.mxmlContent = [this._MysteryOutcomeRenderer_BriskImageDynaLib1_i(),this._MysteryOutcomeRenderer_BriskImageDynaLib2_i()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___MysteryOutcomeRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___MysteryOutcomeRenderer_ItemRenderer1_rollOut);
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1 is ConfigPlayfieldItemDTO)
         {
            this._data = ConfigPlayfieldItemDTO(param1);
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:BriskDynaVo = null;
         super.commitProperties();
         if(this._isDirty && Boolean(this._data))
         {
            this._isDirty = false;
            this.playfieldItem.briskDynaVo = new BriskDynaVo(ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(this._data),"FieldItem_" + this._data.gfxId + "_small");
            if(this._data.specialHighlighting)
            {
               _loc1_ = new BriskDynaVo("gui_popups_paperPopup","architect_goldprint_small");
            }
            else
            {
               _loc1_ = new BriskDynaVo("gui_popups_paperPopup","architect_blueprint1_small");
            }
            this.background.briskDynaVo = _loc1_;
         }
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         if(this._data)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION,this._data.id));
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
      }
      
      private function _MysteryOutcomeRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.width = 118;
         _loc1_.height = 118;
         _loc1_.id = "background";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _MysteryOutcomeRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "playfieldItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldItem = _loc1_;
         BindingManager.executeBindings(this,"playfieldItem",this.playfieldItem);
         return _loc1_;
      }
      
      public function ___MysteryOutcomeRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.rollOverHandler(param1);
      }
      
      public function ___MysteryOutcomeRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.rollOutHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldItem() : BriskImageDynaLib
      {
         return this._989375879playfieldItem;
      }
      
      public function set playfieldItem(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._989375879playfieldItem;
         if(_loc2_ !== param1)
         {
            this._989375879playfieldItem = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldItem",_loc2_,param1));
            }
         }
      }
   }
}

