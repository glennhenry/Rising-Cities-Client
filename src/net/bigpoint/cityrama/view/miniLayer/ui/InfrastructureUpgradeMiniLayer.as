package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.miniLayer.vo.InfraUpgradeMiniLayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class InfrastructureUpgradeMiniLayer extends MiniLayerWindow
   {
      
      public static const START_UPGRADE:String = "START_UPGRADE";
      
      public static const OPEN_RC_REBUY:String = "OPEN_RC_REBUY";
      
      public static const START_INSTA_UPGRADE:String = "START_INSTA_UPGRADE";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _94849540cost1:RequirementMiniComponent;
      
      private var _94849541cost2:RequirementMiniComponent;
      
      private var _94849542cost3:RequirementMiniComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1221270899header:HeaderComponent;
      
      private var _273241018mainGroup:VGroup;
      
      private var _236614105rcBuyButton:DynamicPlusButton;
      
      private var _746926070rcCostLabel:LocaLabel;
      
      private var _1943111220startButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfraUpgradeMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function InfrastructureUpgradeMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._InfrastructureUpgradeMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___InfrastructureUpgradeMiniLayer_MiniLayerWindow1_creationComplete);
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
         attentionSign.dynaLibName = "gui_popups_miniLayer";
         attentionSign.dynaBmpSourceName = "icon_upgrade";
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Vector.<RequirementMiniComponent> = null;
         var _loc2_:RequirementMiniComponent = null;
         var _loc3_:int = 0;
         var _loc4_:ConfigOutputDTO = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.rcCostLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeBuy",[this._data.instantRCCost]);
            title = this._data.title;
            this.flavourText.text = this._data.flavourText;
            this.startButton.toolTip = this._data.startBtnTooltip;
            _loc1_ = new <RequirementMiniComponent>[this.cost1,this.cost2,this.cost3];
            for each(_loc2_ in _loc1_)
            {
               _loc2_.visible = _loc2_.includeInLayout = false;
            }
            _loc3_ = 0;
            for each(_loc4_ in this._data.upgradeCosts)
            {
               if(_loc4_.goodConfig)
               {
                  _loc1_[_loc3_].visible = _loc1_[_loc3_].includeInLayout = true;
                  _loc1_[_loc3_].setData(_loc4_,this._data.upgradeCostsAffordable[_loc3_]);
               }
               else if(_loc4_.resourceConfig)
               {
                  this.startButton.label = LocaUtils.getThousendSeperatedNumber(Math.abs(_loc4_.outputAmount));
               }
               _loc3_++;
            }
            this.rcBuyButton.showPlus = this._data.userRCStock < this._data.instantRCCost;
            this.rcBuyButton.priceToConfirm = this._data.instantRCCost;
            this.startButton.enabled = this._data.affordable;
            this.header.label = LocaUtils.getString("rcl.miniLayer.upgrade","rcl.miniLayer.upgrade.costs");
         }
      }
      
      public function set data(param1:InfraUpgradeMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function onUpgrade() : void
      {
         dispatchEvent(new Event(START_UPGRADE,true,true));
      }
      
      private function onInstaUpgrade() : void
      {
         if(this._data.userRCStock >= this._data.instantRCCost)
         {
            dispatchEvent(new Event(START_INSTA_UPGRADE,true,true));
         }
         else
         {
            dispatchEvent(new Event(OPEN_RC_REBUY,true,true));
         }
      }
      
      private function _InfrastructureUpgradeMiniLayer_Array1_c() : Array
      {
         return [this._InfrastructureUpgradeMiniLayer_VGroup1_i()];
      }
      
      private function _InfrastructureUpgradeMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingTop = -20;
         _loc1_.gap = 5;
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_HGroup1_c(),this._InfrastructureUpgradeMiniLayer_Group1_c(),this._InfrastructureUpgradeMiniLayer_HGroup3_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 474;
         _loc1_.height = 121;
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_BriskImageDynaLib1_c(),this._InfrastructureUpgradeMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "dept_upgrade_bg";
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.width = 474;
         _loc1_.height = 121;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 10;
         _loc1_.gap = 20;
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_HeaderComponent1_i(),this._InfrastructureUpgradeMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_HeaderComponent1_i() : HeaderComponent
      {
         var _loc1_:HeaderComponent = new HeaderComponent();
         _loc1_.height = 28;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 95;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.maxWidth = 470;
         _loc1_.minWidth = 1;
         _loc1_.gap = 16;
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_RequirementMiniComponent1_i(),this._InfrastructureUpgradeMiniLayer_RequirementMiniComponent2_i(),this._InfrastructureUpgradeMiniLayer_RequirementMiniComponent3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_RequirementMiniComponent1_i() : RequirementMiniComponent
      {
         var _loc1_:RequirementMiniComponent = new RequirementMiniComponent();
         _loc1_.id = "cost1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cost1 = _loc1_;
         BindingManager.executeBindings(this,"cost1",this.cost1);
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_RequirementMiniComponent2_i() : RequirementMiniComponent
      {
         var _loc1_:RequirementMiniComponent = new RequirementMiniComponent();
         _loc1_.id = "cost2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cost2 = _loc1_;
         BindingManager.executeBindings(this,"cost2",this.cost2);
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_RequirementMiniComponent3_i() : RequirementMiniComponent
      {
         var _loc1_:RequirementMiniComponent = new RequirementMiniComponent();
         _loc1_.id = "cost3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cost3 = _loc1_;
         BindingManager.executeBindings(this,"cost3",this.cost3);
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_Group2_c(),this._InfrastructureUpgradeMiniLayer_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_HGroup4_c(),this._InfrastructureUpgradeMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 204;
         _loc1_.percentHeight = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.minWidth = 1;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.visible = false;
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
      
      private function _InfrastructureUpgradeMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "confirm";
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "cc_icon_medium";
         _loc1_.libNameLeft = "gui_popups_paperPopup";
         _loc1_.addEventListener("click",this.__startButton_click);
         _loc1_.id = "startButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startButton = _loc1_;
         BindingManager.executeBindings(this,"startButton",this.startButton);
         return _loc1_;
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         this.onUpgrade();
      }
      
      private function _InfrastructureUpgradeMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.useConfirmation = true;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("click",this.__rcBuyButton_click);
         _loc1_.addEventListener("rollOut",this.__rcBuyButton_rollOut);
         _loc1_.addEventListener("rollOver",this.__rcBuyButton_rollOver);
         _loc1_.id = "rcBuyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rcBuyButton = _loc1_;
         BindingManager.executeBindings(this,"rcBuyButton",this.rcBuyButton);
         return _loc1_;
      }
      
      public function __rcBuyButton_click(param1:MouseEvent) : void
      {
         this.onInstaUpgrade();
      }
      
      public function __rcBuyButton_rollOut(param1:MouseEvent) : void
      {
         this.rcCostLabel.visible = false;
         this.startButton.visible = true;
      }
      
      public function __rcBuyButton_rollOver(param1:MouseEvent) : void
      {
         this.rcCostLabel.visible = true;
         this.startButton.visible = false;
      }
      
      public function ___InfrastructureUpgradeMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get cost1() : RequirementMiniComponent
      {
         return this._94849540cost1;
      }
      
      public function set cost1(param1:RequirementMiniComponent) : void
      {
         var _loc2_:Object = this._94849540cost1;
         if(_loc2_ !== param1)
         {
            this._94849540cost1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost2() : RequirementMiniComponent
      {
         return this._94849541cost2;
      }
      
      public function set cost2(param1:RequirementMiniComponent) : void
      {
         var _loc2_:Object = this._94849541cost2;
         if(_loc2_ !== param1)
         {
            this._94849541cost2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost3() : RequirementMiniComponent
      {
         return this._94849542cost3;
      }
      
      public function set cost3(param1:RequirementMiniComponent) : void
      {
         var _loc2_:Object = this._94849542cost3;
         if(_loc2_ !== param1)
         {
            this._94849542cost3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : HeaderComponent
      {
         return this._1221270899header;
      }
      
      public function set header(param1:HeaderComponent) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcBuyButton() : DynamicPlusButton
      {
         return this._236614105rcBuyButton;
      }
      
      public function set rcBuyButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._236614105rcBuyButton;
         if(_loc2_ !== param1)
         {
            this._236614105rcBuyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcBuyButton",_loc2_,param1));
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
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1943111220startButton;
         if(_loc2_ !== param1)
         {
            this._1943111220startButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
            }
         }
      }
   }
}

