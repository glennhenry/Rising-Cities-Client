package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageVO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectNeedItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _816216256visual:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintImageVO;
      
      private var _dataIsDirty:Boolean;
      
      public function ArchitectNeedItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._ArchitectNeedItemRenderer_Group1_c()];
         this.currentState = "normal";
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
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as BlueprintImageVO;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.visual.dynaLibName = this._data.visualLibName;
            this.visual.dynaBmpSourceName = this._data.visualName;
            this.visual.toolTip = this._data.toolTip;
         }
      }
      
      private function _ArchitectNeedItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 50;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._ArchitectNeedItemRenderer_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectNeedItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.bottom = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "visual";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.visual = _loc1_;
         BindingManager.executeBindings(this,"visual",this.visual);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get visual() : BriskImageDynaLib
      {
         return this._816216256visual;
      }
      
      public function set visual(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._816216256visual;
         if(_loc2_ !== param1)
         {
            this._816216256visual = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"visual",_loc2_,param1));
            }
         }
      }
   }
}

