package net.bigpoint.cityrama.view.mastery.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class MasteryTraitSelectionLayer extends PaperPopupWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _909664204traitList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _data:ArrayCollection;
      
      public function MasteryTraitSelectionLayer()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "masteryTraitSelection";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MasteryTraitSelectionLayer_Array1_c);
         this.addEventListener("creationComplete",this.___MasteryTraitSelectionLayer_PaperPopupWindow1_creationComplete);
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.flavor");
         this.title = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.title");
      }
      
      public function set data(param1:Object) : void
      {
         if(param1 is ArrayCollection)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               this._dataDirty = true;
               this._data = param1 as ArrayCollection;
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this.traitList.dataProvider = this._data;
         }
      }
      
      private function _MasteryTraitSelectionLayer_Array1_c() : Array
      {
         return [this._MasteryTraitSelectionLayer_VGroup1_c()];
      }
      
      private function _MasteryTraitSelectionLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 35;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryTraitSelectionLayer_LocaLabel1_i(),this._MasteryTraitSelectionLayer_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitSelectionLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "flavorText";
         _loc1_.percentWidth = 100;
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _MasteryTraitSelectionLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._MasteryTraitSelectionLayer_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",MasteryTraitListSkin);
         _loc1_.id = "traitList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.traitList = _loc1_;
         BindingManager.executeBindings(this,"traitList",this.traitList);
         return _loc1_;
      }
      
      private function _MasteryTraitSelectionLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MasteryTraitItemRenderer;
         return _loc1_;
      }
      
      public function ___MasteryTraitSelectionLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get traitList() : List
      {
         return this._909664204traitList;
      }
      
      public function set traitList(param1:List) : void
      {
         var _loc2_:Object = this._909664204traitList;
         if(_loc2_ !== param1)
         {
            this._909664204traitList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traitList",_loc2_,param1));
            }
         }
      }
   }
}

