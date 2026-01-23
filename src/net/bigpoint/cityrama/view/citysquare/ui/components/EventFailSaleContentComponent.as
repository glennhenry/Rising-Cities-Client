package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EventFailSaleContentComponent extends HGroup
   {
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1990131276cancelButton:MultistateButton;
      
      private var _292147534costGroup:HGroup;
      
      private var _288049369costLabel:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _934326481reward:RewardItemComponent;
      
      private var _2111053664xplanationLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RewardItemComponentVo;
      
      private var _price:Number = 0;
      
      private var _affordable:Boolean;
      
      private var _isDirty:Boolean;
      
      public function EventFailSaleContentComponent()
      {
         super();
         mx_internal::_document = this;
         this.verticalAlign = "middle";
         this.horizontalAlign = "center";
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.gap = 0;
         this.maxWidth = 480;
         this.mxmlContent = [this._EventFailSaleContentComponent_HGroup2_c(),this._EventFailSaleContentComponent_VGroup1_c()];
         this.addEventListener("creationComplete",this.___EventFailSaleContentComponent_HGroup1_creationComplete);
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.acceptButton.showSparkle = this._affordable;
            this.acceptButton.showPlus = !this._affordable;
            this.acceptButton.priceToConfirm = this._price;
            this.priceLabel.text = LocaUtils.getThousendSeperatedNumber(this._price);
            this.reward.data = this._data;
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.headerLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.header.sale");
         this.acceptButton.label = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.sale");
         this.acceptButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.tooltip.sale");
         this.cancelButton.label = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.cancelSale");
         this.cancelButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.tooltip.cancelSale");
         this.costLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.costs");
         this.xplanationLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.text.sale");
      }
      
      private function onButtonClick(param1:MouseEvent) : void
      {
         if(param1.target == this.acceptButton)
         {
            if(this.acceptButton.showPlus)
            {
               dispatchEvent(new Event(CitySquareEventFailPopup.OPEN_TREASURY,true,true));
            }
            else
            {
               dispatchEvent(new Event(CitySquareEventFailPopup.BUY_REWARD,true,true));
            }
         }
         else
         {
            dispatchEvent(new Event(CitySquareEventFailPopup.CANCEL_BUY_REWARD,true,true));
         }
      }
      
      public function setData(param1:RewardItemComponentVo, param2:Number, param3:Boolean) : void
      {
         this._data = param1;
         this._price = param2;
         this._affordable = param3;
         this._isDirty = true;
         invalidateProperties();
      }
      
      private function _EventFailSaleContentComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 42;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_RewardItemComponent1_i(),this._EventFailSaleContentComponent_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_RewardItemComponent1_i() : RewardItemComponent
      {
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         _loc1_.showBottomPaper = false;
         _loc1_.id = "reward";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.reward = _loc1_;
         BindingManager.executeBindings(this,"reward",this.reward);
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.left = -10;
         _loc1_.top = -5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = -5;
         _loc1_.gap = 6;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_Group2_c(),this._EventFailSaleContentComponent_HGroup5_c(),this._EventFailSaleContentComponent_BriskImageDynaLib6_c(),this._EventFailSaleContentComponent_HGroup6_i(),this._EventFailSaleContentComponent_HGroup7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_HGroup3_c(),this._EventFailSaleContentComponent_HGroup4_c(),this._EventFailSaleContentComponent_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.height = 40;
         _loc1_.minWidth = 240;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_BriskImageDynaLib2_c(),this._EventFailSaleContentComponent_BriskImageDynaLib3_c(),this._EventFailSaleContentComponent_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 80;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStyle";
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "sparkle_single_big";
         _loc1_.left = -10;
         _loc1_.top = -15;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 60;
         _loc1_.maxHeight = 60;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "avatarText";
         _loc1_.percentHeight = 100;
         _loc1_.maxWidth = 220;
         _loc1_.maxDisplayedLines = 5;
         _loc1_.id = "xplanationLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.xplanationLabel = _loc1_;
         BindingManager.executeBindings(this,"xplanationLabel",this.xplanationLabel);
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "head_line_long";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup6_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_LocaLabel3_i(),this._EventFailSaleContentComponent_BriskImageDynaLib7_c(),this._EventFailSaleContentComponent_LocaLabel4_i()];
         _loc1_.id = "costGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costGroup = _loc1_;
         BindingManager.executeBindings(this,"costGroup",this.costGroup);
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "avatarText";
         _loc1_.id = "costLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costLabel = _loc1_;
         BindingManager.executeBindings(this,"costLabel",this.costLabel);
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "rc_icon_small";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "avatarText";
         _loc1_.id = "priceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.priceLabel = _loc1_;
         BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 20;
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.mxmlContent = [this._EventFailSaleContentComponent_MultistateButton1_i(),this._EventFailSaleContentComponent_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailSaleContentComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "abort";
         _loc1_.addEventListener("click",this.__cancelButton_click);
         _loc1_.id = "cancelButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cancelButton = _loc1_;
         BindingManager.executeBindings(this,"cancelButton",this.cancelButton);
         return _loc1_;
      }
      
      public function __cancelButton_click(param1:MouseEvent) : void
      {
         this.onButtonClick(param1);
      }
      
      private function _EventFailSaleContentComponent_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "confirm";
         _loc1_.useConfirmation = true;
         _loc1_.addEventListener("click",this.__acceptButton_click);
         _loc1_.id = "acceptButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptButton = _loc1_;
         BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
         return _loc1_;
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         this.onButtonClick(param1);
      }
      
      public function ___EventFailSaleContentComponent_HGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc2_ !== param1)
         {
            this._1480909402acceptButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelButton() : MultistateButton
      {
         return this._1990131276cancelButton;
      }
      
      public function set cancelButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1990131276cancelButton;
         if(_loc2_ !== param1)
         {
            this._1990131276cancelButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costGroup() : HGroup
      {
         return this._292147534costGroup;
      }
      
      public function set costGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._292147534costGroup;
         if(_loc2_ !== param1)
         {
            this._292147534costGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
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
      public function get reward() : RewardItemComponent
      {
         return this._934326481reward;
      }
      
      public function set reward(param1:RewardItemComponent) : void
      {
         var _loc2_:Object = this._934326481reward;
         if(_loc2_ !== param1)
         {
            this._934326481reward = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xplanationLabel() : LocaLabel
      {
         return this._2111053664xplanationLabel;
      }
      
      public function set xplanationLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2111053664xplanationLabel;
         if(_loc2_ !== param1)
         {
            this._2111053664xplanationLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xplanationLabel",_loc2_,param1));
            }
         }
      }
   }
}

