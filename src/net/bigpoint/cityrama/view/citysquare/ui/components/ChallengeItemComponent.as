package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.events.CitysquareRewardPreviewButtonPressedEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ChallengeItemComponent extends ItemRenderer
   {
      
      private var _1776052574allGroup:VGroup;
      
      private var _585062481challengeLabel:LocaLabel;
      
      private var _1171630409challengeTypeLabel:LocaLabel;
      
      private var _1354855362goodGroup:HGroup;
      
      private var _2124921301rewardPreviewButton:MultistateButton;
      
      private var _1534234548slot1Group:Group;
      
      private var _2113293960slot1bg:BriskImageDynaLib;
      
      private var _644259718slot1item:BriskImageDynaLib;
      
      private var _1505605397slot2Group:Group;
      
      private var _2113292999slot2bg:BriskImageDynaLib;
      
      private var _645183239slot2item:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      public function ChallengeItemComponent()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.percentHeight = 100;
         this.percentWidth = 100;
         this.mxmlContent = [this._ChallengeItemComponent_StickyNoteComponent1_c()];
         this.addEventListener("creationComplete",this.___ChallengeItemComponent_ItemRenderer1_creationComplete);
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this._dataDirty = true;
         invalidateProperties();
      }
      
      private function checkHeight() : void
      {
         invalidateSize();
      }
      
      override protected function measure() : void
      {
         super.measure();
         this.height = this.allGroup.measuredHeight + 5;
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:EventChallengeDetailViewVo = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:EventChallengeStepDetailViewVo = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         if(this.data && this.data is EventChallengeDetailViewVo && this._dataDirty)
         {
            this._dataDirty = false;
            _loc1_ = this.data as EventChallengeDetailViewVo;
            _loc2_ = 0;
            _loc3_ = LocaUtils.getString("rcl.citysquare.popup.events","rcl.citysquare.popup.events.challenge.header2");
            this.slot1Group.visible = false;
            this.slot2Group.visible = false;
            this.slot1Group.includeInLayout = false;
            this.slot2Group.includeInLayout = false;
            _loc3_ = StringUtil.substitute(_loc3_,_loc1_.nbrOfThisChallenge,_loc1_.nbrOfChallengesOverall);
            this.challengeLabel.text = _loc3_;
            this.challengeTypeLabel.text = LocaUtils.getString("rcl.citysquare.challengetypes","rcl.citysquare.challengetypes." + _loc1_.challengeType);
            for each(_loc4_ in _loc1_.listOfSteps)
            {
               if(_loc4_.targetGoodIsEventGood)
               {
                  _loc5_ = LocaUtils.getString(String("rcl.citysquarequests." + _loc1_.eventLocaleId.toString()),String("rcl.citysquarequests." + _loc1_.eventLocaleId.toString() + ".goods.goodname." + _loc4_.gfxId));
               }
               else
               {
                  _loc5_ = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + _loc4_.localeId);
               }
               _loc6_ = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.challengestepgoodpreview",[_loc5_]);
               switch(_loc2_)
               {
                  case 0:
                     this.slot1bg.dynaLibName = "gui_popups_shopBook";
                     if(_loc4_.targetGoodIsEventGood)
                     {
                        this.slot1item.dynaSWFFileName = _loc1_.challengeGfxId.toString();
                        this.slot1item.dynaLibName = _loc1_.challengeGfxId.toString() + "_gui_popups_smallGoodIcons";
                        this.slot1item.dynaBmpSourceName = "small_" + _loc4_.gfxId;
                        this.slot1bg.dynaBmpSourceName = "eventgood_cardboard_mini";
                     }
                     else
                     {
                        this.slot1item.dynaSWFFileName = null;
                        this.slot1item.dynaLibName = "gui_popups_smallGoodIcons";
                        this.slot1item.dynaBmpSourceName = "small_" + _loc4_.gfxId;
                        this.slot1bg.dynaBmpSourceName = "ressource_cardboard_mini";
                     }
                     this.slot1Group.visible = true;
                     this.slot1Group.includeInLayout = true;
                     this.slot1Group.toolTip = _loc6_;
                     break;
                  case 1:
                     this.slot2bg.dynaLibName = "gui_popups_shopBook";
                     if(_loc4_.targetGoodIsEventGood)
                     {
                        this.slot2item.dynaSWFFileName = _loc1_.challengeGfxId.toString();
                        this.slot2item.dynaLibName = _loc1_.challengeGfxId.toString() + "_gui_popups_smallGoodIcons";
                        this.slot2item.dynaBmpSourceName = "small_" + _loc4_.gfxId;
                        this.slot2bg.dynaBmpSourceName = "eventgood_cardboard_mini";
                     }
                     else
                     {
                        this.slot2item.dynaSWFFileName = null;
                        this.slot2item.dynaLibName = "gui_popups_smallGoodIcons";
                        this.slot2item.dynaBmpSourceName = "small_" + _loc4_.gfxId;
                        this.slot2bg.dynaBmpSourceName = "ressource_cardboard_mini";
                     }
                     this.slot2Group.visible = true;
                     this.slot2Group.includeInLayout = true;
                     this.slot2Group.toolTip = _loc6_;
               }
               _loc2_++;
            }
         }
         super.commitProperties();
      }
      
      private function onCreationComplete() : void
      {
         this.rewardPreviewButton.label = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.button.rewardpreview");
         this.rewardPreviewButton.addEventListener(MouseEvent.CLICK,this.onRewardPreviewClick);
      }
      
      private function onRewardPreviewClick(param1:MouseEvent) : void
      {
         var _loc2_:CitysquareRewardPreviewButtonPressedEvent = new CitysquareRewardPreviewButtonPressedEvent(CitysquareRewardPreviewButtonPressedEvent.PREVIEW_BUTTON_PRESSED,true);
         _loc2_.challengeNumber = (data as EventChallengeDetailViewVo).nbrOfThisChallenge;
         dispatchEvent(_loc2_);
      }
      
      private function _ChallengeItemComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 215;
         _loc1_.height = 210;
         _loc1_.tapeTop = true;
         _loc1_.tapeBottom = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ChallengeItemComponent_Array2_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_Array2_c() : Array
      {
         return [this._ChallengeItemComponent_VGroup1_i()];
      }
      
      private function _ChallengeItemComponent_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ChallengeItemComponent_LocaLabel1_i(),this._ChallengeItemComponent_Group1_c(),this._ChallengeItemComponent_HGroup2_i(),this._ChallengeItemComponent_MultistateButton1_i()];
         _loc1_.id = "allGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.allGroup = _loc1_;
         BindingManager.executeBindings(this,"allGroup",this.allGroup);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.top = 4;
         _loc1_.text = "notSet challengeLabel";
         _loc1_.styleName = "challengeLabel";
         _loc1_.id = "challengeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeLabel = _loc1_;
         BindingManager.executeBindings(this,"challengeLabel",this.challengeLabel);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 90;
         _loc1_.mxmlContent = [this._ChallengeItemComponent_HGroup1_c(),this._ChallengeItemComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ChallengeItemComponent_BriskImageDynaLib1_c(),this._ChallengeItemComponent_BriskImageDynaLib2_c(),this._ChallengeItemComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "bluemarker_small_right";
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.top = 4;
         _loc1_.percentHeight = 100;
         _loc1_.styleName = "challengeTypeLabel";
         _loc1_.id = "challengeTypeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeTypeLabel = _loc1_;
         BindingManager.executeBindings(this,"challengeTypeLabel",this.challengeTypeLabel);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 2;
         _loc1_.mxmlContent = [this._ChallengeItemComponent_Group2_i(),this._ChallengeItemComponent_Group3_i()];
         _loc1_.id = "goodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodGroup = _loc1_;
         BindingManager.executeBindings(this,"goodGroup",this.goodGroup);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContent = [this._ChallengeItemComponent_BriskImageDynaLib4_i(),this._ChallengeItemComponent_BriskImageDynaLib5_i()];
         _loc1_.id = "slot1Group";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot1Group = _loc1_;
         BindingManager.executeBindings(this,"slot1Group",this.slot1Group);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_good_free";
         _loc1_.id = "slot1bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot1bg = _loc1_;
         BindingManager.executeBindings(this,"slot1bg",this.slot1bg);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "slot1item";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot1item = _loc1_;
         BindingManager.executeBindings(this,"slot1item",this.slot1item);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContent = [this._ChallengeItemComponent_BriskImageDynaLib6_i(),this._ChallengeItemComponent_BriskImageDynaLib7_i()];
         _loc1_.id = "slot2Group";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot2Group = _loc1_;
         BindingManager.executeBindings(this,"slot2Group",this.slot2Group);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_good_free";
         _loc1_.id = "slot2bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot2bg = _loc1_;
         BindingManager.executeBindings(this,"slot2bg",this.slot2bg);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "slot2item";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot2item = _loc1_;
         BindingManager.executeBindings(this,"slot2item",this.slot2item);
         return _loc1_;
      }
      
      private function _ChallengeItemComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.maxWidth = 180;
         _loc1_.width = 145;
         _loc1_.useSmallSkin = true;
         _loc1_.showSparkle = true;
         _loc1_.focusEnabled = false;
         _loc1_.tabFocusEnabled = false;
         _loc1_.id = "rewardPreviewButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardPreviewButton = _loc1_;
         BindingManager.executeBindings(this,"rewardPreviewButton",this.rewardPreviewButton);
         return _loc1_;
      }
      
      public function ___ChallengeItemComponent_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get allGroup() : VGroup
      {
         return this._1776052574allGroup;
      }
      
      public function set allGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1776052574allGroup;
         if(_loc2_ !== param1)
         {
            this._1776052574allGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeLabel() : LocaLabel
      {
         return this._585062481challengeLabel;
      }
      
      public function set challengeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._585062481challengeLabel;
         if(_loc2_ !== param1)
         {
            this._585062481challengeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeTypeLabel() : LocaLabel
      {
         return this._1171630409challengeTypeLabel;
      }
      
      public function set challengeTypeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1171630409challengeTypeLabel;
         if(_loc2_ !== param1)
         {
            this._1171630409challengeTypeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeTypeLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodGroup() : HGroup
      {
         return this._1354855362goodGroup;
      }
      
      public function set goodGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1354855362goodGroup;
         if(_loc2_ !== param1)
         {
            this._1354855362goodGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardPreviewButton() : MultistateButton
      {
         return this._2124921301rewardPreviewButton;
      }
      
      public function set rewardPreviewButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._2124921301rewardPreviewButton;
         if(_loc2_ !== param1)
         {
            this._2124921301rewardPreviewButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardPreviewButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1Group() : Group
      {
         return this._1534234548slot1Group;
      }
      
      public function set slot1Group(param1:Group) : void
      {
         var _loc2_:Object = this._1534234548slot1Group;
         if(_loc2_ !== param1)
         {
            this._1534234548slot1Group = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1Group",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1bg() : BriskImageDynaLib
      {
         return this._2113293960slot1bg;
      }
      
      public function set slot1bg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2113293960slot1bg;
         if(_loc2_ !== param1)
         {
            this._2113293960slot1bg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1bg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1item() : BriskImageDynaLib
      {
         return this._644259718slot1item;
      }
      
      public function set slot1item(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._644259718slot1item;
         if(_loc2_ !== param1)
         {
            this._644259718slot1item = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1item",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2Group() : Group
      {
         return this._1505605397slot2Group;
      }
      
      public function set slot2Group(param1:Group) : void
      {
         var _loc2_:Object = this._1505605397slot2Group;
         if(_loc2_ !== param1)
         {
            this._1505605397slot2Group = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2Group",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2bg() : BriskImageDynaLib
      {
         return this._2113292999slot2bg;
      }
      
      public function set slot2bg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2113292999slot2bg;
         if(_loc2_ !== param1)
         {
            this._2113292999slot2bg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2bg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2item() : BriskImageDynaLib
      {
         return this._645183239slot2item;
      }
      
      public function set slot2item(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._645183239slot2item;
         if(_loc2_ !== param1)
         {
            this._645183239slot2item = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2item",_loc2_,param1));
            }
         }
      }
   }
}

