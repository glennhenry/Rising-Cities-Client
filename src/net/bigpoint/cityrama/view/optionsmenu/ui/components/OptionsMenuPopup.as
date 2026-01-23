package net.bigpoint.cityrama.view.optionsmenu.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.OptionsDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.optionsmenu.ui.skins.VerticalBgScrollListSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class OptionsMenuPopup extends PaperPopupWindow
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
      
      private var _531548239accountOptions:LocaLabel;
      
      private var _1623437438accountOptionsText:LocaLabel;
      
      private var _39840213editAccountButton:MultistateButton;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1383014836gameOptions:LocaLabel;
      
      private var _341169060optionsList:List;
      
      private var _750240179scrollShadow:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:OptionsDetailViewVo;
      
      public function OptionsMenuPopup()
      {
         super();
         mx_internal::_document = this;
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.styleName = "optionsPopupWindow";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._OptionsMenuPopup_Array1_c);
         this.addEventListener("creationComplete",this.___OptionsMenuPopup_PaperPopupWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.title");
         this.flavorText.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.flavorText");
         this.gameOptions.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.gameOptions");
         this.accountOptions.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.accountOptions");
         this.accountOptionsText.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.accountOptionsText");
         this.editAccountButton.label = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.accountOptionsButton");
      }
      
      public function set data(param1:OptionsDetailViewVo) : void
      {
         if(param1)
         {
            this._data = param1;
            invalidateProperties();
         }
      }
      
      public function get data() : OptionsDetailViewVo
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._data)
         {
            this.optionsList.dataProvider = new ArrayCollection(this._data.optionsList);
            this.editAccountButton.enabled = !this._data.isSsoUser;
         }
      }
      
      private function handleEditAccountClick() : void
      {
         dispatchEvent(new Event(OptionsItemRenderer.EVENT_EDIT_ACCOUNT));
      }
      
      private function _OptionsMenuPopup_Array1_c() : Array
      {
         return [this._OptionsMenuPopup_VGroup1_c()];
      }
      
      private function _OptionsMenuPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 340;
         _loc1_.bottom = 0;
         _loc1_.gap = 18;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel1_i(),this._OptionsMenuPopup_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 700;
         _loc1_.height = 25;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 280;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 5;
         _loc1_.top = 18;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_Group1_c(),this._OptionsMenuPopup_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 355;
         _loc1_.height = 300;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_DebossedBackgroundComponent1_c(),this._OptionsMenuPopup_Group2_c(),this._OptionsMenuPopup_Group4_c(),this._OptionsMenuPopup_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 55;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_HGroup2_c(),this._OptionsMenuPopup_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._OptionsMenuPopup_BlueBarComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.width = 340;
         _loc1_.height = 33;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._OptionsMenuPopup_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 18;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.maxWidth = 500;
         _loc1_.styleName = "sixteenWhiteCenter";
         _loc1_.top = 4;
         _loc1_.id = "gameOptions";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.gameOptions = _loc1_;
         BindingManager.executeBindings(this,"gameOptions",this.gameOptions);
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 270;
         _loc1_.left = 12;
         _loc1_.top = 48;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._OptionsMenuPopup_ClassFactory1_c();
         _loc1_.useVirtualLayout = false;
         _loc1_.percentWidth = 100;
         _loc1_.height = 247;
         _loc1_.top = 2;
         _loc1_.right = 4;
         _loc1_.setStyle("skinClass",VerticalBgScrollListSkin);
         _loc1_.id = "optionsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.optionsList = _loc1_;
         BindingManager.executeBindings(this,"optionsList",this.optionsList);
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = OptionsItemRenderer;
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "shadow_bottom";
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 3;
         _loc1_.left = 0;
         _loc1_.right = 2;
         _loc1_.id = "scrollShadow";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollShadow = _loc1_;
         BindingManager.executeBindings(this,"scrollShadow",this.scrollShadow);
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 355;
         _loc1_.height = 300;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_DebossedBackgroundComponent2_c(),this._OptionsMenuPopup_Group6_c(),this._OptionsMenuPopup_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_DebossedBackgroundComponent2_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 55;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_HGroup4_c(),this._OptionsMenuPopup_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._OptionsMenuPopup_BlueBarComponent2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_BlueBarComponent2_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.width = 340;
         _loc1_.height = 33;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._OptionsMenuPopup_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 18;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "sixteenWhiteCenter";
         _loc1_.top = 4;
         _loc1_.id = "accountOptions";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.accountOptions = _loc1_;
         BindingManager.executeBindings(this,"accountOptions",this.accountOptions);
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 200;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 55;
         _loc1_.gap = 40;
         _loc1_.mxmlContent = [this._OptionsMenuPopup_LocaLabel4_i(),this._OptionsMenuPopup_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 220;
         _loc1_.styleName = "optionsText";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "accountOptionsText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.accountOptionsText = _loc1_;
         BindingManager.executeBindings(this,"accountOptionsText",this.accountOptionsText);
         return _loc1_;
      }
      
      private function _OptionsMenuPopup_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 210;
         _loc1_.addEventListener("click",this.__editAccountButton_click);
         _loc1_.id = "editAccountButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.editAccountButton = _loc1_;
         BindingManager.executeBindings(this,"editAccountButton",this.editAccountButton);
         return _loc1_;
      }
      
      public function __editAccountButton_click(param1:MouseEvent) : void
      {
         this.handleEditAccountClick();
      }
      
      public function ___OptionsMenuPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get accountOptions() : LocaLabel
      {
         return this._531548239accountOptions;
      }
      
      public function set accountOptions(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._531548239accountOptions;
         if(_loc2_ !== param1)
         {
            this._531548239accountOptions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"accountOptions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get accountOptionsText() : LocaLabel
      {
         return this._1623437438accountOptionsText;
      }
      
      public function set accountOptionsText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1623437438accountOptionsText;
         if(_loc2_ !== param1)
         {
            this._1623437438accountOptionsText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"accountOptionsText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get editAccountButton() : MultistateButton
      {
         return this._39840213editAccountButton;
      }
      
      public function set editAccountButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._39840213editAccountButton;
         if(_loc2_ !== param1)
         {
            this._39840213editAccountButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"editAccountButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc2_ !== param1)
         {
            this._1684755691flavorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameOptions() : LocaLabel
      {
         return this._1383014836gameOptions;
      }
      
      public function set gameOptions(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1383014836gameOptions;
         if(_loc2_ !== param1)
         {
            this._1383014836gameOptions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameOptions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get optionsList() : List
      {
         return this._341169060optionsList;
      }
      
      public function set optionsList(param1:List) : void
      {
         var _loc2_:Object = this._341169060optionsList;
         if(_loc2_ !== param1)
         {
            this._341169060optionsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optionsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollShadow() : BriskImageDynaLib
      {
         return this._750240179scrollShadow;
      }
      
      public function set scrollShadow(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._750240179scrollShadow;
         if(_loc2_ !== param1)
         {
            this._750240179scrollShadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollShadow",_loc2_,param1));
            }
         }
      }
   }
}

