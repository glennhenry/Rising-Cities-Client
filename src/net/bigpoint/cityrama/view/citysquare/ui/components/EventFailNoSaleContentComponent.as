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
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EventFailNoSaleContentComponent extends HGroup
   {
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1984686051layerButton:MultistateButton;
      
      private var _934326481reward:RewardItemComponent;
      
      private var _2111053664xplanationLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RewardItemComponentVo;
      
      private var _isDirty:Boolean;
      
      public function EventFailNoSaleContentComponent()
      {
         super();
         mx_internal::_document = this;
         this.verticalAlign = "middle";
         this.horizontalAlign = "center";
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.gap = 0;
         this.maxWidth = 480;
         this.mxmlContent = [this._EventFailNoSaleContentComponent_HGroup2_c(),this._EventFailNoSaleContentComponent_VGroup1_c()];
         this.addEventListener("creationComplete",this.___EventFailNoSaleContentComponent_HGroup1_creationComplete);
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
            this.reward.data = this._data;
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.headerLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.header.noSale");
         this.layerButton.label = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.noSale");
         this.layerButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.btn.tooltip.noSale");
         this.xplanationLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.text.noSale");
      }
      
      private function onButtonClick() : void
      {
         dispatchEvent(new Event(CitySquareEventFailPopup.CANCEL_BUY_REWARD,true,true));
      }
      
      public function set data(param1:RewardItemComponentVo) : void
      {
         if(RandomUtilities.isUnEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            this.commitProperties();
         }
      }
      
      private function _EventFailNoSaleContentComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 42;
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_RewardItemComponent1_i(),this._EventFailNoSaleContentComponent_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_RewardItemComponent1_i() : RewardItemComponent
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
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_demolish";
         _loc1_.left = -10;
         _loc1_.top = -5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = -5;
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_Group2_c(),this._EventFailNoSaleContentComponent_HGroup5_c(),this._EventFailNoSaleContentComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_HGroup3_c(),this._EventFailNoSaleContentComponent_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.height = 40;
         _loc1_.minWidth = 240;
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_BriskImageDynaLib2_c(),this._EventFailNoSaleContentComponent_BriskImageDynaLib3_c(),this._EventFailNoSaleContentComponent_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _EventFailNoSaleContentComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
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
      
      private function _EventFailNoSaleContentComponent_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 80;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_LocaLabel1_i() : LocaLabel
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
      
      private function _EventFailNoSaleContentComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 105;
         _loc1_.mxmlContent = [this._EventFailNoSaleContentComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EventFailNoSaleContentComponent_LocaLabel2_i() : LocaLabel
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
      
      private function _EventFailNoSaleContentComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 207;
         _loc1_.addEventListener("click",this.__layerButton_click);
         _loc1_.id = "layerButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.layerButton = _loc1_;
         BindingManager.executeBindings(this,"layerButton",this.layerButton);
         return _loc1_;
      }
      
      public function __layerButton_click(param1:MouseEvent) : void
      {
         this.onButtonClick();
      }
      
      public function ___EventFailNoSaleContentComponent_HGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
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
      public function get layerButton() : MultistateButton
      {
         return this._1984686051layerButton;
      }
      
      public function set layerButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1984686051layerButton;
         if(_loc2_ !== param1)
         {
            this._1984686051layerButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerButton",_loc2_,param1));
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

