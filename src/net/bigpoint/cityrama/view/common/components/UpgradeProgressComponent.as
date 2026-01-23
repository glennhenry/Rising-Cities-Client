package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class UpgradeProgressComponent extends Group
   {
      
      public static const UPGRADE_BUILDING:String = "upgradeBuilding";
      
      public static const BUY_DD:String = "buyDD";
      
      public static const BUY_UPGRADE:String = "buyUpgrade";
      
      private var _1271589544buyButton:DynamicPlusButton;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _676505710upgradeButton:MultistateButton;
      
      private var _1844912971upgradeIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpgradeProgressVo;
      
      private var _dataIsDirty:Boolean;
      
      public function UpgradeProgressComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._UpgradeProgressComponent_HGroup1_c()];
         this.addEventListener("creationComplete",this.___UpgradeProgressComponent_Group1_creationComplete);
         this.addEventListener("removedFromStage",this.___UpgradeProgressComponent_Group1_removedFromStage);
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
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            if(this._data.upgradeCurrentLevel != this._data.upgradeNextLevel)
            {
               this.upgradeButton.label = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeReady");
               this.upgradeButton.sparkle.visible = true;
               this.upgradeButton.sparkle.includeInLayout = true;
               this.progressBar.progress = this._data.currentProgress / this._data.neededProgress;
               this.progressBar.label = this._data.currentProgress + "/" + this._data.neededProgress;
               if(this._data.currentProgress == this._data.neededProgress)
               {
                  this.infoLabel.visible = this.infoLabel.includeInLayout = false;
                  this.progressBar.visible = this.progressBar.includeInLayout = false;
                  this.buyButton.visible = this.buyButton.includeInLayout = true;
                  this.upgradeButton.visible = this.upgradeButton.includeInLayout = true;
               }
               else
               {
                  this.infoLabel.visible = this.infoLabel.includeInLayout = true;
                  this.progressBar.visible = this.progressBar.includeInLayout = true;
                  this.buyButton.visible = this.buyButton.includeInLayout = true;
                  this.upgradeButton.visible = this.upgradeButton.includeInLayout = false;
               }
               this.buyButton.showPlus = !this._data.hasEnoughMoney;
               this.buyButton.priceToConfirm = this._data.price;
               this.buyButton.addEventListener(MouseEvent.CLICK,this.handleBuyUpgradeClick);
               this.upgradeButton.addEventListener(MouseEvent.CLICK,this.handleUpgradeClick);
               this.infoLabel.setStyle("styleName","residentialProgressComment");
               this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.untillUpgrade",[this._data.upgradeNextLevel]);
            }
            else
            {
               this.buyButton.includeInLayout = false;
               this.buyButton.visible = false;
               this.upgradeButton.includeInLayout = false;
               this.upgradeButton.visible = false;
               this.upgradeIcon.dynaBmpSourceName = "upgrade_icon_all";
               this.progressBar.includeInLayout = false;
               this.progressBar.visible = false;
               this.infoLabel.setStyle("styleName","residentialProgressCommentGold");
               this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeMax");
            }
         }
      }
      
      private function handleUpgradeClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(UPGRADE_BUILDING,true));
      }
      
      private function handleBuyUpgradeClick(param1:Event) : void
      {
         if(this.buyButton.showPlus)
         {
            dispatchEvent(new Event(BUY_DD,true));
         }
         else
         {
            this._data.currentProgress = this._data.neededProgress;
            dispatchEvent(new Event(BUY_UPGRADE,true));
            this.data = this._data;
         }
      }
      
      private function handleCreationComplete() : void
      {
         this.buyButton.addEventListener(MouseEvent.MOUSE_OVER,this.handleMouseOver);
         this.buyButton.addEventListener(MouseEvent.MOUSE_OUT,this.handleMouseOut);
         invalidateProperties();
      }
      
      private function handleRemoved() : void
      {
         this.buyButton.removeEventListener(MouseEvent.MOUSE_OVER,this.handleMouseOver);
         this.buyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.handleMouseOut);
         this.buyButton.removeEventListener(MouseEvent.CLICK,this.handleBuyUpgradeClick);
         this.upgradeButton.removeEventListener(MouseEvent.CLICK,this.handleUpgradeClick);
      }
      
      private function handleMouseOut(param1:MouseEvent) : void
      {
         if(this._data.currentProgress != this._data.neededProgress)
         {
            this.progressBar.visible = true;
            this.progressBar.includeInLayout = true;
         }
         else
         {
            var _temp_1:* = this.upgradeButton;
            this.upgradeButton.includeInLayout = true;
            _temp_1.visible = true;
            var _temp_2:* = this.infoLabel;
            var _loc2_:Boolean;
            this.infoLabel.includeInLayout = _loc2_ = false;
            _temp_2.visible = true;
         }
         this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.untillUpgrade",[this._data.upgradeNextLevel]);
      }
      
      private function handleMouseOver(param1:MouseEvent) : void
      {
         if(this._data.currentProgress != this._data.neededProgress)
         {
            this.progressBar.visible = false;
            this.progressBar.includeInLayout = false;
         }
         else
         {
            var _temp_1:* = this.upgradeButton;
            this.upgradeButton.includeInLayout = false;
            _temp_1.visible = false;
            var _temp_2:* = this.infoLabel;
            var _loc2_:Boolean;
            this.infoLabel.includeInLayout = _loc2_ = true;
            _temp_2.visible = false;
         }
         this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeBuy",[LocaUtils.getThousendSeperatedNumber(this._data.price)]);
      }
      
      private function _UpgradeProgressComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 218;
         _loc1_.mxmlContent = [this._UpgradeProgressComponent_Group2_c(),this._UpgradeProgressComponent_VGroup1_c(),this._UpgradeProgressComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 31;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._UpgradeProgressComponent_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "upgrade_icon";
         _loc1_.id = "upgradeIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeIcon = _loc1_;
         BindingManager.executeBindings(this,"upgradeIcon",this.upgradeIcon);
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 4;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._UpgradeProgressComponent_ProgressBarComponent1_i(),this._UpgradeProgressComponent_LocaLabel1_i(),this._UpgradeProgressComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         _loc1_.progress = 0.5;
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.id = "infoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoLabel = _loc1_;
         BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.includeInLayout = false;
         _loc1_.id = "upgradeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeButton = _loc1_;
         BindingManager.executeBindings(this,"upgradeButton",this.upgradeButton);
         return _loc1_;
      }
      
      private function _UpgradeProgressComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.useConfirmation = true;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.id = "buyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyButton = _loc1_;
         BindingManager.executeBindings(this,"buyButton",this.buyButton);
         return _loc1_;
      }
      
      public function ___UpgradeProgressComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      public function ___UpgradeProgressComponent_Group1_removedFromStage(param1:Event) : void
      {
         this.handleRemoved();
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : DynamicPlusButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc2_ !== param1)
         {
            this._1271589544buyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc2_ !== param1)
         {
            this._1213523686infoLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
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

