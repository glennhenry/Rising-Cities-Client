package net.bigpoint.cityrama.view.miniLayer.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class PatrolOptionsItemRenderer extends ItemRenderer
   {
      
      public static const PATROL_SELECTED:String = "PATROL_SELECTED";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      private var _1443223590characterImg:BriskImageDynaLib;
      
      private var _1004941354currencyIcon:BriskImageDynaLib;
      
      private var _1221270899header:LocaLabel;
      
      private var _1161933810headerGroup:Group;
      
      private var _1914490085patrolIcon:BriskImageDynaLib;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _198462964rateLabel:LocaLabel;
      
      private var _1569151597rightSide:VGroup;
      
      private var _1716002880selectBtn:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PatrolOptionVo;
      
      private var _isDirty:Boolean;
      
      public function PatrolOptionsItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.minWidth = 385;
         this.minHeight = 194;
         this.mxmlContent = [this._PatrolOptionsItemRenderer_Group1_c()];
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
            this.header.text = this._data.name;
            this.header.addEventListener(FlexEvent.CREATION_COMPLETE,this.headerCreationComplete);
            this.rateLabel.text = this._data.rateText;
            this.selectBtn.label = this._data.btnText;
            this.selectBtn.toolTip = this._data.btnTooltip;
            this.selectBtn.showPlus = !this._data.affordable;
            this.selectBtn.showSparkle = this._data.affordable;
            this.selectBtn.priceToConfirm = this._data.price;
            this.patrolIcon.dynaLibName = "gui_main_hud";
            this.patrolIcon.dynaBmpSourceName = "patrolIcon_" + this._data.gfxId;
            this.priceLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.price);
         }
      }
      
      private function headerCreationComplete(param1:FlexEvent) : void
      {
         this.header.removeEventListener(FlexEvent.CREATION_COMPLETE,this.headerCreationComplete);
         this.header.maxWidth = 118;
         if(this.header.width >= this.header.maxWidth || this.header.height >= this.header.maxHeight)
         {
            this.header.setStyle("fontSize",this.header.getStyle("fontSize") - 2);
         }
         this.header.maxDisplayedLines = 2;
      }
      
      private function onSelect(param1:MouseEvent) : void
      {
         if(this.selectBtn.showPlus)
         {
            dispatchEvent(new Event(OPEN_TREASURY,true,true));
         }
         else
         {
            dispatchEvent(new Event(PATROL_SELECTED,true,true));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 is PatrolOptionVo)
         {
            if(!RandomUtilities.isEqual(PatrolOptionVo(param1),this._data))
            {
               this._data = param1 as PatrolOptionVo;
               this._isDirty = true;
               invalidateProperties();
            }
         }
      }
      
      public function get assistConfigId() : Number
      {
         if(this._data)
         {
            return this._data.configId;
         }
         return -1;
      }
      
      private function _PatrolOptionsItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib1_c(),this._PatrolOptionsItemRenderer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "paper_quadrille_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_Group2_c(),this._PatrolOptionsItemRenderer_VGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib2_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib3_i(),this._PatrolOptionsItemRenderer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
         _loc1_.width = 111;
         _loc1_.top = 115;
         _loc1_.left = 13;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_giver_52004";
         _loc1_.top = 10;
         _loc1_.id = "characterImg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterImg = _loc1_;
         BindingManager.executeBindings(this,"characterImg",this.characterImg);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 10;
         _loc1_.paddingTop = 140;
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib4_i(),this._PatrolOptionsItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "rc_icon_small";
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.id = "currencyIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencyIcon = _loc1_;
         BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "DataGridStatisticNames";
         _loc1_.id = "priceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.priceLabel = _loc1_;
         BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 227;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 20;
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_Group3_i(),this._PatrolOptionsItemRenderer_LocaLabel3_i(),this._PatrolOptionsItemRenderer_MultistateButton1_i()];
         _loc1_.id = "rightSide";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rightSide = _loc1_;
         BindingManager.executeBindings(this,"rightSide",this.rightSide);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_HGroup3_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib8_i(),this._PatrolOptionsItemRenderer_HGroup4_c()];
         _loc1_.id = "headerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerGroup = _loc1_;
         BindingManager.executeBindings(this,"headerGroup",this.headerGroup);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 227;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_BriskImageDynaLib5_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib6_c(),this._PatrolOptionsItemRenderer_BriskImageDynaLib7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib5_c() : BriskImageDynaLib
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
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib6_c() : BriskImageDynaLib
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
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib7_c() : BriskImageDynaLib
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
      
      private function _PatrolOptionsItemRenderer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.top = -5;
         _loc1_.left = 10;
         _loc1_.id = "patrolIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.patrolIcon = _loc1_;
         BindingManager.executeBindings(this,"patrolIcon",this.patrolIcon);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 33;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._PatrolOptionsItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "eventName";
         _loc1_.maxHeight = 30;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "postitBlueHeaderBig";
         _loc1_.id = "rateLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rateLabel = _loc1_;
         BindingManager.executeBindings(this,"rateLabel",this.rateLabel);
         return _loc1_;
      }
      
      private function _PatrolOptionsItemRenderer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.useConfirmation = true;
         _loc1_.addEventListener("click",this.__selectBtn_click);
         _loc1_.id = "selectBtn";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.selectBtn = _loc1_;
         BindingManager.executeBindings(this,"selectBtn",this.selectBtn);
         return _loc1_;
      }
      
      public function __selectBtn_click(param1:MouseEvent) : void
      {
         this.onSelect(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get characterImg() : BriskImageDynaLib
      {
         return this._1443223590characterImg;
      }
      
      public function set characterImg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1443223590characterImg;
         if(_loc2_ !== param1)
         {
            this._1443223590characterImg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterImg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyIcon() : BriskImageDynaLib
      {
         return this._1004941354currencyIcon;
      }
      
      public function set currencyIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1004941354currencyIcon;
         if(_loc2_ !== param1)
         {
            this._1004941354currencyIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
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
      public function get headerGroup() : Group
      {
         return this._1161933810headerGroup;
      }
      
      public function set headerGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1161933810headerGroup;
         if(_loc2_ !== param1)
         {
            this._1161933810headerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolIcon() : BriskImageDynaLib
      {
         return this._1914490085patrolIcon;
      }
      
      public function set patrolIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1914490085patrolIcon;
         if(_loc2_ !== param1)
         {
            this._1914490085patrolIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolIcon",_loc2_,param1));
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
      public function get rateLabel() : LocaLabel
      {
         return this._198462964rateLabel;
      }
      
      public function set rateLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._198462964rateLabel;
         if(_loc2_ !== param1)
         {
            this._198462964rateLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rateLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rightSide() : VGroup
      {
         return this._1569151597rightSide;
      }
      
      public function set rightSide(param1:VGroup) : void
      {
         var _loc2_:Object = this._1569151597rightSide;
         if(_loc2_ !== param1)
         {
            this._1569151597rightSide = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightSide",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectBtn() : MultistateButton
      {
         return this._1716002880selectBtn;
      }
      
      public function set selectBtn(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1716002880selectBtn;
         if(_loc2_ !== param1)
         {
            this._1716002880selectBtn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectBtn",_loc2_,param1));
            }
         }
      }
   }
}

