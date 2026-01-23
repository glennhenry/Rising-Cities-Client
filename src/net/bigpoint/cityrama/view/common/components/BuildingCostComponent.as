package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.ArchitectImageValueItemRenderer;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectImageValueSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class BuildingCostComponent extends Group implements IStateClient2
   {
      
      private var _1515913739_BuildingCostComponent_Group2:Group;
      
      private var _89636871_BuildingCostComponent_HGroup2:HGroup;
      
      private var _450449222costHeader:PostitHeaderComponent;
      
      private var _288049369costLabel:LocaLabel;
      
      private var _424925685costList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayList;
      
      private var _dataDirty:Boolean;
      
      public function BuildingCostComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._BuildingCostComponent_StickyNoteComponent1_c()];
         this.currentState = "hasCosts";
         this.addEventListener("creationComplete",this.___BuildingCostComponent_Group1_creationComplete);
         states = [new State({
            "name":"hasCosts",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_Group2",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_Group2",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_HGroup2",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_HGroup2",
               "name":"includeInLayout",
               "value":true
            })]
         }),new State({
            "name":"noCosts",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_Group2",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_Group2",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_HGroup2",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingCostComponent_HGroup2",
               "name":"includeInLayout",
               "value":false
            })]
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
      
      public function setData(param1:ArrayList) : void
      {
         this._data = param1;
         this._dataDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            if(this._data)
            {
               this.costList.dataProvider = this._data;
            }
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.costHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.price");
         this.costLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.noAdditionalCost");
      }
      
      private function _BuildingCostComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.tapeTop = true;
         _loc1_.tapeBottom = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._BuildingCostComponent_Array3_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildingCostComponent_Array3_c() : Array
      {
         return [this._BuildingCostComponent_VGroup1_c()];
      }
      
      private function _BuildingCostComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BuildingCostComponent_PostitHeaderComponent1_i(),this._BuildingCostComponent_Group2_i(),this._BuildingCostComponent_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildingCostComponent_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.id = "costHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costHeader = _loc1_;
         BindingManager.executeBindings(this,"costHeader",this.costHeader);
         return _loc1_;
      }
      
      private function _BuildingCostComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BuildingCostComponent_HGroup1_c()];
         _loc1_.id = "_BuildingCostComponent_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BuildingCostComponent_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_BuildingCostComponent_Group2",this._BuildingCostComponent_Group2);
         return _loc1_;
      }
      
      private function _BuildingCostComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = -5;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BuildingCostComponent_BriskImageDynaLib1_c(),this._BuildingCostComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildingCostComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "noCosts_star";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildingCostComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 150;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "blueElevenCenter";
         _loc1_.id = "costLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costLabel = _loc1_;
         BindingManager.executeBindings(this,"costLabel",this.costLabel);
         return _loc1_;
      }
      
      private function _BuildingCostComponent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._BuildingCostComponent_List1_i()];
         _loc1_.id = "_BuildingCostComponent_HGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BuildingCostComponent_HGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_BuildingCostComponent_HGroup2",this._BuildingCostComponent_HGroup2);
         return _loc1_;
      }
      
      private function _BuildingCostComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.itemRenderer = this._BuildingCostComponent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
         _loc1_.id = "costList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costList = _loc1_;
         BindingManager.executeBindings(this,"costList",this.costList);
         return _loc1_;
      }
      
      private function _BuildingCostComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ArchitectImageValueItemRenderer;
         return _loc1_;
      }
      
      public function ___BuildingCostComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get _BuildingCostComponent_Group2() : Group
      {
         return this._1515913739_BuildingCostComponent_Group2;
      }
      
      public function set _BuildingCostComponent_Group2(param1:Group) : void
      {
         var _loc2_:Object = this._1515913739_BuildingCostComponent_Group2;
         if(_loc2_ !== param1)
         {
            this._1515913739_BuildingCostComponent_Group2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BuildingCostComponent_Group2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _BuildingCostComponent_HGroup2() : HGroup
      {
         return this._89636871_BuildingCostComponent_HGroup2;
      }
      
      public function set _BuildingCostComponent_HGroup2(param1:HGroup) : void
      {
         var _loc2_:Object = this._89636871_BuildingCostComponent_HGroup2;
         if(_loc2_ !== param1)
         {
            this._89636871_BuildingCostComponent_HGroup2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BuildingCostComponent_HGroup2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costHeader() : PostitHeaderComponent
      {
         return this._450449222costHeader;
      }
      
      public function set costHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._450449222costHeader;
         if(_loc2_ !== param1)
         {
            this._450449222costHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costLabel() : LocaLabel
      {
         return this._288049369costLabel;
      }
      
      public function set costLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._288049369costLabel;
         if(_loc2_ !== param1)
         {
            this._288049369costLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costList() : List
      {
         return this._424925685costList;
      }
      
      public function set costList(param1:List) : void
      {
         var _loc2_:Object = this._424925685costList;
         if(_loc2_ !== param1)
         {
            this._424925685costList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costList",_loc2_,param1));
            }
         }
      }
   }
}

