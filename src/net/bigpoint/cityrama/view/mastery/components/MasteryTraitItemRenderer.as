package net.bigpoint.cityrama.view.mastery.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusTraitGroupVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class MasteryTraitItemRenderer extends ItemRenderer
   {
      
      public static const TRAIT_SELECTED:String = "TRAIT_SELECTED";
      
      private var _1402774487chooseButton:MultistateButton;
      
      private var _778749455flavour:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _3575610type:LocaLabel;
      
      private var _2025208835valueLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:MasteryBonusTraitGroupVo;
      
      private var _dataDirty:Boolean;
      
      public function MasteryTraitItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.maxWidth = 200;
         this.height = 280;
         this.maxHeight = 280;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._MasteryTraitItemRenderer_VGroup1_c()];
         this.addEventListener("creationComplete",this.___MasteryTraitItemRenderer_ItemRenderer1_creationComplete);
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
         this.chooseButton.label = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.button.capital");
      }
      
      private function choseClickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new ItemClickEvent(TRAIT_SELECTED,true,false,null,itemIndex));
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as MasteryBonusTraitGroupVo;
            this._dataDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.icon.dynaBmpSourceName = this._data.gfxId;
            _loc1_ = this._data.locaId;
            this.type.text = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.name." + _loc1_);
            this.flavour.text = LocaUtils.getString("rcl.booklayer.masterycomplete","rcl.booklayer.masterycomplete.flavour." + _loc1_);
            _loc2_ = Math.ceil(this._data.value * 100);
            if(_loc2_ >= 0)
            {
               _loc3_ = "+ ";
            }
            else
            {
               _loc3_ = "- ";
            }
            _loc2_ = Math.abs(_loc2_);
            if(_loc2_ < 10)
            {
               _loc3_ += " ";
            }
            _loc3_ += _loc2_ + "%";
            this.valueLabel.text = _loc3_;
         }
      }
      
      private function _MasteryTraitItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_Group1_c(),this._MasteryTraitItemRenderer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_BriskImageDynaLib1_c(),this._MasteryTraitItemRenderer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_masterySelectionPopup";
         _loc1_.dynaBmpSourceName = "mastery_trait_background";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 5;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_HGroup1_c(),this._MasteryTraitItemRenderer_VGroup3_c(),this._MasteryTraitItemRenderer_VGroup4_c(),this._MasteryTraitItemRenderer_VGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 166;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_masterySelectionPopup";
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 28;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 180;
         _loc1_.maxWidth = 180;
         _loc1_.styleName = "elevenWhiteCenter";
         _loc1_.id = "type";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.type = _loc1_;
         BindingManager.executeBindings(this,"type",this.type);
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 42;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 180;
         _loc1_.maxWidth = 180;
         _loc1_.styleName = "improvementStoreDescription";
         _loc1_.id = "flavour";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavour = _loc1_;
         BindingManager.executeBindings(this,"flavour",this.flavour);
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 35;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryTraitItemRenderer_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 180;
         _loc1_.maxWidth = 180;
         _loc1_.styleName = "masteryTraitValue";
         _loc1_.id = "valueLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.valueLabel = _loc1_;
         BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
         return _loc1_;
      }
      
      private function _MasteryTraitItemRenderer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.label = "DEV: CHOOSE";
         _loc1_.width = 178;
         _loc1_.addEventListener("click",this.__chooseButton_click);
         _loc1_.id = "chooseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.chooseButton = _loc1_;
         BindingManager.executeBindings(this,"chooseButton",this.chooseButton);
         return _loc1_;
      }
      
      public function __chooseButton_click(param1:MouseEvent) : void
      {
         this.choseClickHandler(param1);
      }
      
      public function ___MasteryTraitItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get chooseButton() : MultistateButton
      {
         return this._1402774487chooseButton;
      }
      
      public function set chooseButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1402774487chooseButton;
         if(_loc2_ !== param1)
         {
            this._1402774487chooseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chooseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavour() : LocaLabel
      {
         return this._778749455flavour;
      }
      
      public function set flavour(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._778749455flavour;
         if(_loc2_ !== param1)
         {
            this._778749455flavour = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavour",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : LocaLabel
      {
         return this._3575610type;
      }
      
      public function set type(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._3575610type;
         if(_loc2_ !== param1)
         {
            this._3575610type = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : LocaLabel
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2025208835valueLabel;
         if(_loc2_ !== param1)
         {
            this._2025208835valueLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
            }
         }
      }
   }
}

