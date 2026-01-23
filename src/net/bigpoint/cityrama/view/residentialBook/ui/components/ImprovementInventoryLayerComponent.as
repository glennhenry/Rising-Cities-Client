package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.StandardInventoryList;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.ImprovementInventoryLayerSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public class ImprovementInventoryLayerComponent extends Group
   {
      
      public static const DESELECT_ALL:String = "DESELECT_ALL";
      
      public static const ITEM_SELECTED:String = "ITEM_SELECTED";
      
      private var _1808398663improvementItemList:StandardInventoryList;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:IList;
      
      private var _isDirty:Boolean;
      
      public function ImprovementInventoryLayerComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ImprovementInventoryLayerComponent_StandardInventoryList1_i()];
         this.addEventListener("creationComplete",this.___ImprovementInventoryLayerComponent_Group1_creationComplete);
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
      
      private function handleCreationComplete() : void
      {
         this.improvementItemList.addEventListener(IndexChangeEvent.CHANGE,this.handleInventoryIndexChanged);
         this.improvementItemList.addEventListener(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this.handleItemSelected);
      }
      
      private function handleItemSelected(param1:ImprovementInventoryItemRendererEvent) : void
      {
         dispatchEvent(new Event(ITEM_SELECTED,true));
      }
      
      private function handleInventoryIndexChanged(param1:IndexChangeEvent) : void
      {
         if(param1.newIndex == -1)
         {
            dispatchEvent(new Event(DESELECT_ALL,true));
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.improvementItemList.dataProvider = this._data;
         }
      }
      
      public function set data(param1:IList) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function _ImprovementInventoryLayerComponent_StandardInventoryList1_i() : StandardInventoryList
      {
         var _loc1_:StandardInventoryList = new StandardInventoryList();
         _loc1_.itemRenderer = this._ImprovementInventoryLayerComponent_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",ImprovementInventoryLayerSkin);
         _loc1_.id = "improvementItemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementItemList = _loc1_;
         BindingManager.executeBindings(this,"improvementItemList",this.improvementItemList);
         return _loc1_;
      }
      
      private function _ImprovementInventoryLayerComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ImprovementInventoryItemRenderer;
         return _loc1_;
      }
      
      public function ___ImprovementInventoryLayerComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementItemList() : StandardInventoryList
      {
         return this._1808398663improvementItemList;
      }
      
      public function set improvementItemList(param1:StandardInventoryList) : void
      {
         var _loc2_:Object = this._1808398663improvementItemList;
         if(_loc2_ !== param1)
         {
            this._1808398663improvementItemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementItemList",_loc2_,param1));
            }
         }
      }
   }
}

