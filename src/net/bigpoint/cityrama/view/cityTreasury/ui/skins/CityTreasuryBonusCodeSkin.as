package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.BonusCodeEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TextInputCursorSave;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.GlowFilter;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryBonusCodeSkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _748427390bonusCodeInput:TextInputCursorSave;
      
      private var _1618067916errorLabel:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _stdValueLabel:String;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryBonusCodeSkin()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._CityTreasuryBonusCodeSkin_HGroup1_c()];
         this.addEventListener("creationComplete",this.___CityTreasuryBonusCodeSkin_SparkSkin1_creationComplete);
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         this._stdValueLabel = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.inputfield.default");
         this.bonusCodeInput.setStyle("backgroundAlpha",0);
         this.bonusCodeInput.filters = [new GlowFilter(0,1,2,2,10)];
         this.bonusCodeInput.text = this._stdValueLabel;
      }
      
      private function sendBonusCode(param1:MouseEvent) : void
      {
         this.errorLabel.text = "";
         var _loc2_:BonusCodeEvent = new BonusCodeEvent(BonusCodeEvent.BONUS_CODE_SEND,true,true);
         _loc2_.bonusCode = this.bonusCodeInput.text;
         if(_loc2_.bonusCode != "" && _loc2_.bonusCode != " " && _loc2_.bonusCode != null && _loc2_.bonusCode != this._stdValueLabel)
         {
            dispatchEvent(_loc2_);
         }
         this.bonusCodeInput.text = this._stdValueLabel;
      }
      
      private function handleBonusCodeClick(param1:MouseEvent) : void
      {
         if(this.bonusCodeInput.text == this._stdValueLabel)
         {
            this.bonusCodeInput.text = "";
         }
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_VGroup1_c(),this._CityTreasuryBonusCodeSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_Group1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BriskImageDynaLib1_i(),this._CityTreasuryBonusCodeSkin_HGroup2_c()];
         _loc1_.id = "bigItemGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bigItemGroup = _loc1_;
         BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _CityTreasuryBonusCodeSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _CityTreasuryBonusCodeSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 310;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryBonusCodeSkin_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 98;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 10;
         _loc1_.percentWidth = 95;
         _loc1_.percentHeight = 80;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_Group3_c(),this._CityTreasuryBonusCodeSkin_HGroup4_c(),this._CityTreasuryBonusCodeSkin_Group4_c(),this._CityTreasuryBonusCodeSkin_MultistateButton1_i(),this._CityTreasuryBonusCodeSkin_HGroup7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BlueBarComponent1_c(),this._CityTreasuryBonusCodeSkin_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BlueBarComponent1_c() : BlueBarComponent
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
      
      private function _CityTreasuryBonusCodeSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "InfoBarStyle";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 95;
         _loc1_.height = 100;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerFlavourTextXpresso";
         _loc1_.maxDisplayedLines = 4;
         _loc1_.id = "mainText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainText = _loc1_;
         BindingManager.executeBindings(this,"mainText",this.mainText);
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 300;
         _loc1_.height = 34;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_HGroup5_c(),this._CityTreasuryBonusCodeSkin_HGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BriskImageDynaLib3_c(),this._CityTreasuryBonusCodeSkin_BriskImageDynaLib4_c(),this._CityTreasuryBonusCodeSkin_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "bonuscode_left";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "bonuscode_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "bonuscode_right";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 90;
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 10;
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_TextInputCursorSave1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         _loc1_.selectable = true;
         _loc1_.styleName = "numStepper";
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.__bonusCodeInput_click);
         _loc1_.id = "bonusCodeInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bonusCodeInput = _loc1_;
         BindingManager.executeBindings(this,"bonusCodeInput",this.bonusCodeInput);
         return _loc1_;
      }
      
      public function __bonusCodeInput_click(param1:MouseEvent) : void
      {
         this.handleBonusCodeClick(param1);
      }
      
      private function _CityTreasuryBonusCodeSkin_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 188;
         _loc1_.addEventListener("click",this.__purchaseButton_click);
         _loc1_.id = "purchaseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseButton = _loc1_;
         BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
         return _loc1_;
      }
      
      public function __purchaseButton_click(param1:MouseEvent) : void
      {
         this.sendBonusCode(param1);
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "orangeElevenCenter";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "errorLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.errorLabel = _loc1_;
         BindingManager.executeBindings(this,"errorLabel",this.errorLabel);
         return _loc1_;
      }
      
      public function ___CityTreasuryBonusCodeSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
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
      public function get bonusCodeInput() : TextInputCursorSave
      {
         return this._748427390bonusCodeInput;
      }
      
      public function set bonusCodeInput(param1:TextInputCursorSave) : void
      {
         var _loc2_:Object = this._748427390bonusCodeInput;
         if(_loc2_ !== param1)
         {
            this._748427390bonusCodeInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bonusCodeInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get errorLabel() : LocaLabel
      {
         return this._1618067916errorLabel;
      }
      
      public function set errorLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1618067916errorLabel;
         if(_loc2_ !== param1)
         {
            this._1618067916errorLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorLabel",_loc2_,param1));
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

