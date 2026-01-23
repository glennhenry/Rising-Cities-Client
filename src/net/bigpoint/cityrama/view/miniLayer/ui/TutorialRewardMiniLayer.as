package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.miniLayer.vo.TutorialRewardMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TextValueWithImage_GroupComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class TutorialRewardMiniLayer extends MiniLayerWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _97921but:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1963343900headerReward:LocaLabel;
      
      private var _3321844line:BriskImageDynaLib;
      
      private var _273241018mainGroup:HGroup;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1690973142rewardLeft:TextValueWithImage_GroupComponent;
      
      private var _886220845rewardRight:TextValueWithImage_GroupComponent;
      
      private var _1170720944tutorialRewardComponent:StickyNoteComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TutorialRewardMiniLayerVo;
      
      public function TutorialRewardMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showSparkle = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._TutorialRewardMiniLayer_Array1_c);
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
         this.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.title"));
         this.flavourText.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.flavour"));
         this.but.label = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.button"));
         this.headerReward.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.tutorialreward"),String("rcl.miniLayer.tutorialreward.output"));
         this.rewardLeft.textLabel.text = "10x";
         this.rewardLeft.visual.dynaBmpSourceName = "xpresso_icon_clean";
         this.rewardRight.textLabel.text = "5x";
         this.rewardRight.visual.dynaBmpSourceName = "dd_button_icon";
      }
      
      public function setData(param1:TutorialRewardMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this.invalidateProperties();
         }
      }
      
      private function _TutorialRewardMiniLayer_Array1_c() : Array
      {
         return [this._TutorialRewardMiniLayer_HGroup1_i()];
      }
      
      private function _TutorialRewardMiniLayer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = -4;
         _loc1_.paddingBottom = 45;
         _loc1_.paddingLeft = 14;
         _loc1_.horizontalAlign = "left";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group1_c(),this._TutorialRewardMiniLayer_VGroup1_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group2_c(),this._TutorialRewardMiniLayer_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 5;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_BriskImageDynaLib1_c(),this._TutorialRewardMiniLayer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_polaroid_gift";
         _loc1_.verticalCenter = -1;
         _loc1_.horizontalCenter = -1;
         _loc1_.id = "polaroidImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidImage = _loc1_;
         BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.top = 0;
         _loc1_.width = 130;
         _loc1_.horizontalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group3_c(),this._TutorialRewardMiniLayer_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_BriskImageDynaLib4_c(),this._TutorialRewardMiniLayer_BriskImageDynaLib5_c(),this._TutorialRewardMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "moneylayer_bubble";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -14;
         _loc1_.left = 10;
         _loc1_.measuredWidth = 0;
         _loc1_.measuredHeight = 0;
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 40;
         _loc1_.top = -12;
         _loc1_.horizontalAlign = "left";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_Group4_c(),this._TutorialRewardMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 46;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 200;
         _loc1_.maxHeight = 65;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingLeft = 6;
         _loc1_.paddingTop = -8;
         _loc1_.gap = -14;
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_StickyNoteComponent1_i(),this._TutorialRewardMiniLayer_Group6_c(),this._TutorialRewardMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 274;
         _loc1_.height = 96;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._TutorialRewardMiniLayer_Array10_c);
         _loc1_.id = "tutorialRewardComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tutorialRewardComponent = _loc1_;
         BindingManager.executeBindings(this,"tutorialRewardComponent",this.tutorialRewardComponent);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Array10_c() : Array
      {
         return [this._TutorialRewardMiniLayer_VGroup4_c(),this._TutorialRewardMiniLayer_HGroup3_c()];
      }
      
      private function _TutorialRewardMiniLayer_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.paddingTop = -4;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_LocaLabel2_i(),this._TutorialRewardMiniLayer_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 20;
         _loc1_.styleName = "postitBlueHeader";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "headerReward";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerReward = _loc1_;
         BindingManager.executeBindings(this,"headerReward",this.headerReward);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "head_line";
         _loc1_.id = "line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.line = _loc1_;
         BindingManager.executeBindings(this,"line",this.line);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = 6;
         _loc1_.paddingTop = 18;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._TutorialRewardMiniLayer_TextValueWithImage_GroupComponent1_i(),this._TutorialRewardMiniLayer_Group5_c(),this._TutorialRewardMiniLayer_TextValueWithImage_GroupComponent2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_TextValueWithImage_GroupComponent1_i() : TextValueWithImage_GroupComponent
      {
         var _loc1_:TextValueWithImage_GroupComponent = new TextValueWithImage_GroupComponent();
         _loc1_.id = "rewardLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardLeft = _loc1_;
         BindingManager.executeBindings(this,"rewardLeft",this.rewardLeft);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_TextValueWithImage_GroupComponent2_i() : TextValueWithImage_GroupComponent
      {
         var _loc1_:TextValueWithImage_GroupComponent = new TextValueWithImage_GroupComponent();
         _loc1_.id = "rewardRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardRight = _loc1_;
         BindingManager.executeBindings(this,"rewardRight",this.rewardRight);
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TutorialRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "confirm";
         _loc1_.showSparkle = true;
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 184;
         _loc1_.label = "Button";
         _loc1_.id = "but";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.but = _loc1_;
         BindingManager.executeBindings(this,"but",this.but);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get but() : MultistateButton
      {
         return this._97921but;
      }
      
      public function set but(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._97921but;
         if(_loc2_ !== param1)
         {
            this._97921but = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"but",_loc2_,param1));
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
      public function get headerReward() : LocaLabel
      {
         return this._1963343900headerReward;
      }
      
      public function set headerReward(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1963343900headerReward;
         if(_loc2_ !== param1)
         {
            this._1963343900headerReward = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerReward",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get line() : BriskImageDynaLib
      {
         return this._3321844line;
      }
      
      public function set line(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3321844line;
         if(_loc2_ !== param1)
         {
            this._3321844line = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"line",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : HGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:HGroup) : void
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
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2112922897polaroidImage;
         if(_loc2_ !== param1)
         {
            this._2112922897polaroidImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardLeft() : TextValueWithImage_GroupComponent
      {
         return this._1690973142rewardLeft;
      }
      
      public function set rewardLeft(param1:TextValueWithImage_GroupComponent) : void
      {
         var _loc2_:Object = this._1690973142rewardLeft;
         if(_loc2_ !== param1)
         {
            this._1690973142rewardLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardRight() : TextValueWithImage_GroupComponent
      {
         return this._886220845rewardRight;
      }
      
      public function set rewardRight(param1:TextValueWithImage_GroupComponent) : void
      {
         var _loc2_:Object = this._886220845rewardRight;
         if(_loc2_ !== param1)
         {
            this._886220845rewardRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tutorialRewardComponent() : StickyNoteComponent
      {
         return this._1170720944tutorialRewardComponent;
      }
      
      public function set tutorialRewardComponent(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._1170720944tutorialRewardComponent;
         if(_loc2_ !== param1)
         {
            this._1170720944tutorialRewardComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tutorialRewardComponent",_loc2_,param1));
            }
         }
      }
   }
}

