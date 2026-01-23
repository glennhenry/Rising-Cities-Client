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
   import net.bigpoint.cityrama.view.architectBook.ui.components.ArchitectNeedItemRenderer;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectNeedsSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class BuildingConstructionStepsComponent extends Group implements IStateClient2
   {
      
      private var _1579675192_BuildingConstructionStepsComponent_Group2:Group;
      
      private var _1935639916materialHeader:PostitHeaderComponentMultiline;
      
      private var _1167242739materialLabel:LocaLabel;
      
      private var _2115854747materialList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayList;
      
      private var _dataDirty:Boolean;
      
      public function BuildingConstructionStepsComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._BuildingConstructionStepsComponent_StickyNoteComponent1_c()];
         this.currentState = "hasSteps";
         this.addEventListener("creationComplete",this.___BuildingConstructionStepsComponent_Group1_creationComplete);
         states = [new State({
            "name":"hasSteps",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_BuildingConstructionStepsComponent_Group2",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingConstructionStepsComponent_Group2",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"materialList",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"materialList",
               "name":"includeInLayout",
               "value":true
            })]
         }),new State({
            "name":"noSteps",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_BuildingConstructionStepsComponent_Group2",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_BuildingConstructionStepsComponent_Group2",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"materialList",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"materialList",
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
               this.materialList.dataProvider = this._data;
            }
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.materialLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.noConstructionSteps");
         this.materialHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.required");
         var _loc2_:String = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.material.arrowLeft");
         var _loc3_:String = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.material.arrowRight");
         this.materialList.setStyle("tooltipLeft",_loc2_);
         this.materialList.setStyle("tooltipRight",_loc3_);
      }
      
      private function _BuildingConstructionStepsComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.bottom = -10;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._BuildingConstructionStepsComponent_Array3_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_Array3_c() : Array
      {
         return [this._BuildingConstructionStepsComponent_VGroup1_c()];
      }
      
      private function _BuildingConstructionStepsComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BuildingConstructionStepsComponent_PostitHeaderComponentMultiline1_i(),this._BuildingConstructionStepsComponent_Group2_i(),this._BuildingConstructionStepsComponent_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         _loc1_.id = "materialHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialHeader = _loc1_;
         BindingManager.executeBindings(this,"materialHeader",this.materialHeader);
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BuildingConstructionStepsComponent_HGroup1_c()];
         _loc1_.id = "_BuildingConstructionStepsComponent_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BuildingConstructionStepsComponent_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_BuildingConstructionStepsComponent_Group2",this._BuildingConstructionStepsComponent_Group2);
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = -5;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._BuildingConstructionStepsComponent_BriskImageDynaLib1_c(),this._BuildingConstructionStepsComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _BuildingConstructionStepsComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 150;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "blueElevenCenter";
         _loc1_.id = "materialLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialLabel = _loc1_;
         BindingManager.executeBindings(this,"materialLabel",this.materialLabel);
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._BuildingConstructionStepsComponent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ArchitectNeedsSkin);
         _loc1_.id = "materialList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialList = _loc1_;
         BindingManager.executeBindings(this,"materialList",this.materialList);
         return _loc1_;
      }
      
      private function _BuildingConstructionStepsComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ArchitectNeedItemRenderer;
         return _loc1_;
      }
      
      public function ___BuildingConstructionStepsComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get _BuildingConstructionStepsComponent_Group2() : Group
      {
         return this._1579675192_BuildingConstructionStepsComponent_Group2;
      }
      
      public function set _BuildingConstructionStepsComponent_Group2(param1:Group) : void
      {
         var _loc2_:Object = this._1579675192_BuildingConstructionStepsComponent_Group2;
         if(_loc2_ !== param1)
         {
            this._1579675192_BuildingConstructionStepsComponent_Group2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BuildingConstructionStepsComponent_Group2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialHeader() : PostitHeaderComponentMultiline
      {
         return this._1935639916materialHeader;
      }
      
      public function set materialHeader(param1:PostitHeaderComponentMultiline) : void
      {
         var _loc2_:Object = this._1935639916materialHeader;
         if(_loc2_ !== param1)
         {
            this._1935639916materialHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialLabel() : LocaLabel
      {
         return this._1167242739materialLabel;
      }
      
      public function set materialLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1167242739materialLabel;
         if(_loc2_ !== param1)
         {
            this._1167242739materialLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialList() : List
      {
         return this._2115854747materialList;
      }
      
      public function set materialList(param1:List) : void
      {
         var _loc2_:Object = this._2115854747materialList;
         if(_loc2_ !== param1)
         {
            this._2115854747materialList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialList",_loc2_,param1));
            }
         }
      }
   }
}

