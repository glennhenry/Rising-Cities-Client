package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class InfraUpgradeProgressComponent extends Group
   {
      
      public static const UPGRADE_BUILDING:String = "UPGRADE_BUILDING";
      
      public static const INSTA_UPGRADE_BUILDING:String = "INSTA_UPGRADE_BUILDING";
      
      public static const OPEN_RC_REBUY:String = "OPEN_RC_REBUY";
      
      private var _936519491instaBuyButton:DynamicPlusButton;
      
      private var _746926070rcCostLabel:LocaLabel;
      
      private var _676505710upgradeButton:MultistateButton;
      
      private var _1844912971upgradeIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpgradeProgressVo;
      
      private var _dataIsDirty:Boolean;
      
      public function InfraUpgradeProgressComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._InfraUpgradeProgressComponent_HGroup1_c()];
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
      
      public function set data(param1:UpgradeProgressVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty && Boolean(this._data))
         {
            this._dataIsDirty = false;
            if(this._data.upgradeCurrentLevel != this._data.upgradeNextLevel)
            {
               this.rcCostLabel.setStyle("styleName","residentialProgressComment");
               this.rcCostLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeBuy",[this._data.instaFinishRCCost]);
               this.rcCostLabel.visible = false;
               this.upgradeButton.label = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeReady");
               this.upgradeButton.sparkle.visible = true;
               this.upgradeButton.sparkle.includeInLayout = true;
               this.instaBuyButton.visible = this.instaBuyButton.includeInLayout = true;
               this.instaBuyButton.showPlus = !this._data.affordableByRc;
               this.instaBuyButton.priceToConfirm = this._data.instaFinishRCCost;
               this.upgradeButton.visible = this.upgradeButton.includeInLayout = true;
            }
            else
            {
               this.upgradeButton.includeInLayout = false;
               this.upgradeButton.visible = false;
               this.instaBuyButton.visible = this.instaBuyButton.includeInLayout = false;
               this.upgradeIcon.dynaBmpSourceName = "upgrade_icon_all";
               this.rcCostLabel.setStyle("styleName","residentialProgressCommentGold");
               this.rcCostLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeMax");
               this.rcCostLabel.visible = true;
            }
         }
      }
      
      private function handleInstaBuyClick(param1:MouseEvent) : void
      {
         if(this._data.affordableByRc)
         {
            dispatchEvent(new Event(INSTA_UPGRADE_BUILDING,true));
         }
         else
         {
            dispatchEvent(new Event(OPEN_RC_REBUY,true));
         }
      }
      
      private function handleUpgradeClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(UPGRADE_BUILDING,true));
      }
      
      private function _InfraUpgradeProgressComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 210;
         _loc1_.mxmlContent = [this._InfraUpgradeProgressComponent_BriskImageDynaLib1_i(),this._InfraUpgradeProgressComponent_Group2_c(),this._InfraUpgradeProgressComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfraUpgradeProgressComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "upgrade_icon";
         _loc1_.width = 31;
         _loc1_.height = 36;
         _loc1_.id = "upgradeIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeIcon = _loc1_;
         BindingManager.executeBindings(this,"upgradeIcon",this.upgradeIcon);
         return _loc1_;
      }
      
      private function _InfraUpgradeProgressComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.minWidth = 1;
         _loc1_.mxmlContent = [this._InfraUpgradeProgressComponent_HGroup2_c(),this._InfraUpgradeProgressComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfraUpgradeProgressComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfraUpgradeProgressComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfraUpgradeProgressComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.visible = false;
         _loc1_.minWidth = 1;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.percentWidth = 100;
         _loc1_.minHeight = 1;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.id = "rcCostLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rcCostLabel = _loc1_;
         BindingManager.executeBindings(this,"rcCostLabel",this.rcCostLabel);
         return _loc1_;
      }
      
      private function _InfraUpgradeProgressComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.includeInLayout = false;
         _loc1_.addEventListener("click",this.__upgradeButton_click);
         _loc1_.id = "upgradeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeButton = _loc1_;
         BindingManager.executeBindings(this,"upgradeButton",this.upgradeButton);
         return _loc1_;
      }
      
      public function __upgradeButton_click(param1:MouseEvent) : void
      {
         this.handleUpgradeClick(param1);
      }
      
      private function _InfraUpgradeProgressComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.useConfirmation = true;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("rollOver",this.__instaBuyButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__instaBuyButton_rollOut);
         _loc1_.addEventListener("click",this.__instaBuyButton_click);
         _loc1_.id = "instaBuyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.instaBuyButton = _loc1_;
         BindingManager.executeBindings(this,"instaBuyButton",this.instaBuyButton);
         return _loc1_;
      }
      
      public function __instaBuyButton_rollOver(param1:MouseEvent) : void
      {
         this.upgradeButton.visible = false;
         this.rcCostLabel.visible = true;
      }
      
      public function __instaBuyButton_rollOut(param1:MouseEvent) : void
      {
         this.upgradeButton.visible = true;
         this.rcCostLabel.visible = false;
      }
      
      public function __instaBuyButton_click(param1:MouseEvent) : void
      {
         this.handleInstaBuyClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get instaBuyButton() : DynamicPlusButton
      {
         return this._936519491instaBuyButton;
      }
      
      public function set instaBuyButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._936519491instaBuyButton;
         if(_loc2_ !== param1)
         {
            this._936519491instaBuyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instaBuyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcCostLabel() : LocaLabel
      {
         return this._746926070rcCostLabel;
      }
      
      public function set rcCostLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._746926070rcCostLabel;
         if(_loc2_ !== param1)
         {
            this._746926070rcCostLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcCostLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeButton() : MultistateButton
      {
         return this._676505710upgradeButton;
      }
      
      public function set upgradeButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._676505710upgradeButton;
         if(_loc2_ !== param1)
         {
            this._676505710upgradeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeIcon() : BriskImageDynaLib
      {
         return this._1844912971upgradeIcon;
      }
      
      public function set upgradeIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1844912971upgradeIcon;
         if(_loc2_ !== param1)
         {
            this._1844912971upgradeIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeIcon",_loc2_,param1));
            }
         }
      }
   }
}

