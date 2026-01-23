package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryPackItemRenderer;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryInternalPackSkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _1664307000blueHeaderGroup:Group;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _784021346itemInfoGroup:VGroup;
      
      private var _691190551listHeaderLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _241268558oldPriceLabel:LocaLabel;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _979153895packIconGfx:BriskImageDynaLib;
      
      private var _750244439packList:List;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _2125985571priceLine:Rect;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryInternalPackSkin()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._CityTreasuryInternalPackSkin_VGroup1_c()];
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
      
      private function _CityTreasuryInternalPackSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_HGroup1_c(),this._CityTreasuryInternalPackSkin_Group6_c(),this._CityTreasuryInternalPackSkin_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_Group1_i(),this._CityTreasuryInternalPackSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BriskImageDynaLib1_i(),this._CityTreasuryInternalPackSkin_HGroup2_c(),this._CityTreasuryInternalPackSkin_BriskImageDynaLib3_i()];
         _loc1_.id = "bigItemGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bigItemGroup = _loc1_;
         BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "special_cardboard_big";
         _loc1_.id = "bigItemBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bigItemBg = _loc1_;
         BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.id = "packGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.packGfx = _loc1_;
         BindingManager.executeBindings(this,"packGfx",this.packGfx);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.id = "packIconGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.packIconGfx = _loc1_;
         BindingManager.executeBindings(this,"packIconGfx",this.packIconGfx);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 190;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryInternalPackSkin_VGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 195;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "bottom";
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_VGroup3_c(),this._CityTreasuryInternalPackSkin_Group5_c()];
         _loc1_.id = "itemInfoGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemInfoGroup = _loc1_;
         BindingManager.executeBindings(this,"itemInfoGroup",this.itemInfoGroup);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 10;
         _loc1_.gap = 10;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_Group3_i(),this._CityTreasuryInternalPackSkin_HGroup4_c(),this._CityTreasuryInternalPackSkin_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         _loc1_.percentWidth = 95;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BlueBarComponent1_c(),this._CityTreasuryInternalPackSkin_HGroup3_c()];
         _loc1_.id = "blueHeaderGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blueHeaderGroup = _loc1_;
         BindingManager.executeBindings(this,"blueHeaderGroup",this.blueHeaderGroup);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "InfoBarStyle";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 95;
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourTextXpresso";
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.id = "mainText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainText = _loc1_;
         BindingManager.executeBindings(this,"mainText",this.mainText);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_Group4_c(),this._CityTreasuryInternalPackSkin_LocaLabel4_i(),this._CityTreasuryInternalPackSkin_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.minWidth = 15;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel3_i(),this._CityTreasuryInternalPackSkin_Rect1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceTreasuryOld";
         _loc1_.percentWidth = 100;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "oldPriceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.oldPriceLabel = _loc1_;
         BindingManager.executeBindings(this,"oldPriceLabel",this.oldPriceLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.height = 2;
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 4;
         _loc1_.percentWidth = 100;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.fill = this._CityTreasuryInternalPackSkin_SolidColor1_c();
         _loc1_.initialized(this,"priceLine");
         this.priceLine = _loc1_;
         BindingManager.executeBindings(this,"priceLine",this.priceLine);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16733995;
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceTreasury";
         _loc1_.id = "priceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.priceLabel = _loc1_;
         BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "layer_rc_icon";
         _loc1_.dynaLibName = "gui_resources_icons";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 188;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "purchaseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseButton = _loc1_;
         BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 24;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BlueBarComponent2_c(),this._CityTreasuryInternalPackSkin_HGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_BlueBarComponent2_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 3;
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "InfoBarStyle";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 95;
         _loc1_.id = "listHeaderLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.listHeaderLabel = _loc1_;
         BindingManager.executeBindings(this,"listHeaderLabel",this.listHeaderLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.width = 550;
         _loc1_.height = 90;
         _loc1_.itemRenderer = this._CityTreasuryInternalPackSkin_ClassFactory1_c();
         _loc1_.setStyle("skinClass",CityTreasuryInternalPackListSkin);
         _loc1_.id = "packList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.packList = _loc1_;
         BindingManager.executeBindings(this,"packList",this.packList);
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CityTreasuryPackItemRenderer;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bigItemBg() : BriskImageDynaLib
      {
         return this._693351384bigItemBg;
      }
      
      public function set bigItemBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._693351384bigItemBg;
         if(_loc2_ !== param1)
         {
            this._693351384bigItemBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bigItemGroup() : Group
      {
         return this._1138409996bigItemGroup;
      }
      
      public function set bigItemGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1138409996bigItemGroup;
         if(_loc2_ !== param1)
         {
            this._1138409996bigItemGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blueHeaderGroup() : Group
      {
         return this._1664307000blueHeaderGroup;
      }
      
      public function set blueHeaderGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1664307000blueHeaderGroup;
         if(_loc2_ !== param1)
         {
            this._1664307000blueHeaderGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueHeaderGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc2_ !== param1)
         {
            this._1166031975headerLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemInfoGroup() : VGroup
      {
         return this._784021346itemInfoGroup;
      }
      
      public function set itemInfoGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._784021346itemInfoGroup;
         if(_loc2_ !== param1)
         {
            this._784021346itemInfoGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemInfoGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get listHeaderLabel() : LocaLabel
      {
         return this._691190551listHeaderLabel;
      }
      
      public function set listHeaderLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._691190551listHeaderLabel;
         if(_loc2_ !== param1)
         {
            this._691190551listHeaderLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listHeaderLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._8439162mainText;
         if(_loc2_ !== param1)
         {
            this._8439162mainText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPriceLabel() : LocaLabel
      {
         return this._241268558oldPriceLabel;
      }
      
      public function set oldPriceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._241268558oldPriceLabel;
         if(_loc2_ !== param1)
         {
            this._241268558oldPriceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPriceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get packGfx() : BriskImageDynaLib
      {
         return this._807087456packGfx;
      }
      
      public function set packGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._807087456packGfx;
         if(_loc2_ !== param1)
         {
            this._807087456packGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get packIconGfx() : BriskImageDynaLib
      {
         return this._979153895packIconGfx;
      }
      
      public function set packIconGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._979153895packIconGfx;
         if(_loc2_ !== param1)
         {
            this._979153895packIconGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packIconGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get packList() : List
      {
         return this._750244439packList;
      }
      
      public function set packList(param1:List) : void
      {
         var _loc2_:Object = this._750244439packList;
         if(_loc2_ !== param1)
         {
            this._750244439packList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1481293013priceLabel;
         if(_loc2_ !== param1)
         {
            this._1481293013priceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLine() : Rect
      {
         return this._2125985571priceLine;
      }
      
      public function set priceLine(param1:Rect) : void
      {
         var _loc2_:Object = this._2125985571priceLine;
         if(_loc2_ !== param1)
         {
            this._2125985571priceLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLine",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseButton() : MultistateButton
      {
         return this._1082037139purchaseButton;
      }
      
      public function set purchaseButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1082037139purchaseButton;
         if(_loc2_ !== param1)
         {
            this._1082037139purchaseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CityTreasuryContentComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CityTreasuryContentComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

