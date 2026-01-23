package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _951530617content:GridItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _blueprintVo:BlueprintVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function ArchitectItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.width = 120;
         this.height = 150;
         this.mxmlContent = [this._ArchitectItemRenderer_GridItemComponent1_i()];
         this.currentState = "normal";
         this.addEventListener("click",this.___ArchitectItemRenderer_ItemRenderer1_click);
         this.addEventListener("rollOut",this.___ArchitectItemRenderer_ItemRenderer1_rollOut);
         this.addEventListener("rollOver",this.___ArchitectItemRenderer_ItemRenderer1_rollOver);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
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
         if(param1 is BlueprintVo || param1 == null)
         {
            if(!RandomUtilities.isEqual(param1,this._blueprintVo) || param1 == null)
            {
               super.data = param1;
               this._blueprintVo = param1 as BlueprintVo;
               this._dataIsDirty = true;
               invalidateProperties();
            }
         }
      }
      
      protected function clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK,true);
         _loc2_.item = data;
         _loc2_.index = itemIndex;
         this.updateVisibilityNewIconInGridItemComponent(false);
         dispatchEvent(_loc2_);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.content.data = this._blueprintVo;
            this.content.itemIndex = itemIndex;
         }
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         if(this._blueprintVo != null && this._blueprintVo.configObj != null)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,UIInfolayerDispatcherEvent.CALLER_TYPE_PFI,this._blueprintVo.configObj.id));
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         if(this._blueprintVo != null && this._blueprintVo.configObj != null)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,"",this._blueprintVo.configObj.id));
         }
      }
      
      public function updateVisibilityNewIconInGridItemComponent(param1:Boolean) : void
      {
         this.content.showNewIcon = param1;
      }
      
      private function _ArchitectItemRenderer_GridItemComponent1_i() : GridItemComponent
      {
         var _loc1_:GridItemComponent = new GridItemComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      public function ___ArchitectItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.clickHandler(param1);
      }
      
      public function ___ArchitectItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.rollOutHandler(param1);
      }
      
      public function ___ArchitectItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.rollOverHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : GridItemComponent
      {
         return this._951530617content;
      }
      
      public function set content(param1:GridItemComponent) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
   }
}

