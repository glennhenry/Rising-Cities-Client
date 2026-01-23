package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class BoosterpackItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _951530617content:GridItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BoosterpackVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function BoosterpackItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.width = 120;
         this.height = 150;
         this.mxmlContent = [this._BoosterpackItemRenderer_GridItemComponent1_i()];
         this.currentState = "normal";
         this.addEventListener("rollOut",this.___BoosterpackItemRenderer_ItemRenderer1_rollOut);
         this.addEventListener("rollOver",this.___BoosterpackItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("click",this.___BoosterpackItemRenderer_ItemRenderer1_click);
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
         if(param1 is BoosterpackVo)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               super.data = param1;
               this._data = param1 as BoosterpackVo;
               this._dataIsDirty = true;
               invalidateProperties();
            }
         }
      }
      
      protected function clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK,true);
         _loc2_.item = this._data;
         _loc2_.index = itemIndex;
         dispatchEvent(_loc2_);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.content.data = this._data;
            this.content.itemIndex = itemIndex;
         }
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,UIInfolayerDispatcherEvent.CALLER_TYPE_BOOSTER,this._data.config.id));
      }
      
      private function _BoosterpackItemRenderer_GridItemComponent1_i() : GridItemComponent
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
      
      public function ___BoosterpackItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.rollOutHandler(param1);
      }
      
      public function ___BoosterpackItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.rollOverHandler(param1);
      }
      
      public function ___BoosterpackItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.clickHandler(param1);
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

