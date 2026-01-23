package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Expo;
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.ChallengeBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class ChallengeBarComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const UPSELL_GOOD:String = "UPSELL_GOOD";
      
      public static const OPEN_PAYMENT:String = "OPEN_PAYMENT";
      
      private var _97299bar:HGroup;
      
      private var _1396262968barEnd:BriskImageDynaLib;
      
      private var _334036562barTint:HGroup;
      
      private var _1089021804eventStepProgressBarLabel:LocaLabel;
      
      private var _1240248862goodBg:BriskImageDynaLib;
      
      private var _273241018mainGroup:Group;
      
      private var _1565735381movingGood:BriskImageDynaLib;
      
      private var _1440572180movingGoodGroup:HGroup;
      
      private var _937542070rcIcon:BriskImageDynaLib;
      
      private var _110699445staticGood:BriskImageDynaLib;
      
      private var _74854140staticTargetGood:BriskImageDynaLib;
      
      private var _2040933149staticTargetGoodGroup:Group;
      
      private var _2141414911upsellButton:DynamicPlusButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var barPercentWidth:Number = 0;
      
      private var _animationIsPlaying:Boolean;
      
      private var _progressText:String = "";
      
      private var _upsellText:String = "";
      
      private var _progress:Number;
      
      private var _animationTween:TweenMax;
      
      private var _data:ChallengeBarVo;
      
      private var _dataIsDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ChallengeBarComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._ChallengeBarComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_citysquare_ui_components_ChallengeBarComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ChallengeBarComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentHeight = 100;
         this.percentWidth = 100;
         this.mxmlContent = [this._ChallengeBarComponent_HGroup1_c()];
         this.addEventListener("creationComplete",this.___ChallengeBarComponent_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ChallengeBarComponent._watcherSetupUtil = param1;
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
         var _loc2_:uint = 0;
         if(getStyle("tint") == null)
         {
            _loc2_ = 53236;
         }
         else
         {
            _loc2_ = getStyle("tint") as uint;
         }
         TweenMax.to(this.barTint,0,{"tint":_loc2_});
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty && Boolean(this._data))
         {
            this._dataIsDirty = false;
            if(this._data.isEventGood)
            {
               this.goodBg.dynaBmpSourceName = "eventgood_cardboard_mini";
               this.movingGood.dynaSWFFileName = this._data.eventGFXId.toString();
               this.movingGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
               this.movingGood.dynaLibName = this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons";
               this.staticGood.dynaSWFFileName = this._data.eventGFXId.toString();
               this.staticGood.dynaLibName = this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons";
               this.staticGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
            }
            else
            {
               this.movingGood.dynaSWFFileName = null;
               this.movingGood.dynaLibName = "gui_popups_smallGoodIcons";
               this.movingGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
               this.goodBg.dynaBmpSourceName = "ressource_cardboard_mini";
               this.staticGood.dynaSWFFileName = null;
               this.staticGood.dynaLibName = "gui_popups_smallGoodIcons";
               this.staticGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
            }
            this.upsellButton.enabled = this._data.currentValue < this._data.maxValue && this._data.upsellingPrice > 0;
            if(this.upsellButton.enabled)
            {
               this.upsellButton.showPlus = !this._data.upsellingAffordable;
               this.upsellButton.showSparkle = this._data.upsellingAffordable;
               this.upsellButton.priceToConfirm = this._data.upsellingPrice;
            }
            else
            {
               this.upsellButton.showSparkle = false;
            }
            this._progress = this.progress;
            this.updateBar();
            this.setToolTips();
         }
      }
      
      private function setToolTips() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(this._data.isEventGood)
         {
            _loc1_ = LocaUtils.getString("rcl.citysquarequests." + this._data.eventLocalId,"rcl.citysquarequests." + this._data.eventLocalId + ".goods.goodname." + this._data.goodLocaleId);
            _loc2_ = LocaUtils.getString("rcl.citysquarequests." + this._data.eventLocalId,"rcl.citysquarequests." + this._data.eventLocalId + ".goods.tooltip." + this._data.goodLocaleId);
         }
         else
         {
            _loc2_ = _loc1_ = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.goodLocaleId);
         }
         this.movingGood.toolTip = this.staticGood.toolTip = _loc2_;
         this.staticTargetGoodGroup.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.emptybox",[_loc1_]);
         this.upsellButton.toolTip = LocaUtils.getString(String("rcl.citysquare.popup.runningevent"),String("rcl.citysquare.popup.runningevent.upselling.tooltip"));
      }
      
      private function animationComplete() : void
      {
         this._animationIsPlaying = false;
      }
      
      private function updateBar() : void
      {
         if(this._progress == 0)
         {
            this.bar.visible = this.barTint.visible = false;
            this.eventStepProgressBarLabel.setStyle("color",8092539);
            this.movingGoodGroup.visible = this.movingGoodGroup.includeInLayout = false;
            this.staticGood.alpha = 1;
            this.staticGood.dynaSWFFileName = this._data.isEventGood ? this._data.eventGFXId.toString() : null;
            this.staticGood.dynaLibName = this._data.isEventGood ? this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons" : "gui_popups_smallGoodIcons";
            this.staticGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
            this.staticGood.visible = this.staticGood.includeInLayout = true;
            this.staticTargetGood.includeInLayout = this.staticTargetGood.visible = false;
         }
         else if(this._progress == 1)
         {
            this.barPercentWidth = 100;
            this.onAnimationUpdate();
            this.eventStepProgressBarLabel.setStyle("color",4302010);
            this.movingGoodGroup.visible = this.movingGoodGroup.includeInLayout = false;
            this.bar.visible = true;
            this.barTint.visible = true;
            this.staticGood.alpha = 1;
            this.staticGood.visible = this.staticGood.includeInLayout = true;
            this.staticGood.dynaLibName = "gui_ui_questSide";
            this.staticGood.dynaBmpSourceName = "quest51006";
            this.staticTargetGoodGroup.toolTip = LocaUtils.getString(String("rcl.citysquare.popup.tooltips"),String("rcl.citysquare.popup.tooltips.fullbox"));
            if(this._data.isEventGood)
            {
               this.staticTargetGood.dynaSWFFileName = this._data.eventGFXId.toString();
               this.staticTargetGood.dynaLibName = this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons";
               this.staticTargetGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
            }
            else
            {
               this.staticTargetGood.dynaSWFFileName = null;
               this.staticTargetGood.dynaLibName = "gui_popups_smallGoodIcons";
               this.staticTargetGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
            }
            this.staticTargetGood.includeInLayout = this.staticTargetGood.visible = true;
         }
         else
         {
            if(!this._animationIsPlaying && Math.floor(this._progress * 100) != this.barPercentWidth)
            {
               this._animationIsPlaying = true;
               this._animationTween = TweenMax.to(this,1,{
                  "barPercentWidth":Math.floor(this._progress * 100),
                  "onComplete":this.animationComplete,
                  "onUpdate":this.onAnimationUpdate,
                  "ease":Expo.easeOut
               });
            }
            this.bar.visible = this.barTint.visible = true;
            this.movingGoodGroup.visible = this.movingGoodGroup.includeInLayout = true;
            this.eventStepProgressBarLabel.setStyle("color",8092539);
            this.staticGood.alpha = 0.5;
            this.staticGood.dynaSWFFileName = this._data.isEventGood ? this._data.eventGFXId.toString() : null;
            this.staticGood.dynaLibName = this._data.isEventGood ? this._data.eventGFXId.toString() + "_gui_popups_smallGoodIcons" : "gui_popups_smallGoodIcons";
            this.staticGood.dynaBmpSourceName = "small_" + this._data.goodGFXId;
            this.staticGood.visible = this.staticGood.includeInLayout = true;
            this.staticTargetGood.includeInLayout = this.staticTargetGood.visible = false;
         }
         this.setProgressBarLabelText();
      }
      
      private function setProgressBarLabelText() : void
      {
         if(this._progressText == "")
         {
            this._progressText = LocaUtils.getString(String("rcl.citysquare.popup.runningevent"),String("rcl.citysquare.popup.runningevent.goodamountseperator"));
            this._progressText = StringUtil.substitute(this._progressText,LocaUtils.getThousendSeperatedNumber(this._data.currentValue),LocaUtils.getThousendSeperatedNumber(this._data.maxValue));
         }
         this.eventStepProgressBarLabel.text = this._progressText;
      }
      
      private function setProgressBarUpsellPriceText() : void
      {
         if(this._upsellText == "")
         {
            this._upsellText = this._data.upsellingPrice.toString();
         }
         this.eventStepProgressBarLabel.text = this._upsellText;
      }
      
      private function onAnimationUpdate() : void
      {
         this.barTint.percentWidth = this.barPercentWidth;
         this.bar.percentWidth = this.barPercentWidth;
      }
      
      private function getMovingGoodPadding() : Number
      {
         var _loc1_:Number = NaN;
         if(this.barEnd.width != 0 && this.movingGood.width != 0)
         {
            _loc1_ = this.barEnd.x + (this.barEnd.width - this.movingGood.width / 2);
            if(_loc1_ < 60)
            {
               _loc1_ = 60 - this.movingGood.width / 2;
            }
            return _loc1_;
         }
         return 0;
      }
      
      private function setNewPadding() : void
      {
         this.movingGoodGroup.paddingLeft = this.getMovingGoodPadding();
      }
      
      private function get progress() : Number
      {
         return this._data.currentValue / this._data.maxValue;
      }
      
      private function onUpsellClick() : void
      {
         if(this._data.upsellingAffordable)
         {
            this.upsellButton.enabled = false;
            dispatchEvent(new Event(UPSELL_GOOD,true,true));
         }
         else
         {
            dispatchEvent(new Event(OPEN_PAYMENT,true,true));
         }
      }
      
      private function onUpsellRollOver() : void
      {
         if(this._animationIsPlaying)
         {
            this._animationIsPlaying = false;
            this._animationTween.kill();
         }
         this._progress = 1;
         this.updateBar();
         this.setProgressBarUpsellPriceText();
         var _temp_1:* = this.rcIcon;
         this.rcIcon.includeInLayout = true;
         _temp_1.visible = true;
      }
      
      private function onUpsellRollOut() : void
      {
         if(this._animationIsPlaying)
         {
            this._animationIsPlaying = false;
            this._animationTween.kill();
         }
         this._progress = this.progress;
         this.updateBar();
         this.setProgressBarLabelText();
         var _temp_1:* = this.rcIcon;
         this.rcIcon.includeInLayout = false;
         _temp_1.visible = false;
      }
      
      public function set data(param1:ChallengeBarVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._upsellText = "";
            this._progressText = "";
            this._data = param1;
            this._dataIsDirty = true;
            this.commitProperties();
         }
      }
      
      public function get data() : ChallengeBarVo
      {
         return this._data;
      }
      
      private function _ChallengeBarComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 40;
         _loc1_.mxmlContent = [this._ChallengeBarComponent_Group2_i(),this._ChallengeBarComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ChallengeBarComponent_HGroup2_c(),this._ChallengeBarComponent_HGroup3_i(),this._ChallengeBarComponent_HGroup4_i(),this._ChallengeBarComponent_BriskImageDynaLib10_c(),this._ChallengeBarComponent_Group3_c(),this._ChallengeBarComponent_Group4_i(),this._ChallengeBarComponent_HGroup5_c(),this._ChallengeBarComponent_HGroup6_i()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib1_c(),this._ChallengeBarComponent_BriskImageDynaLib2_c(),this._ChallengeBarComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bgbar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bgbar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bgbar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingLeft = 2;
         _loc1_.paddingRight = 2;
         _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib4_c(),this._ChallengeBarComponent_BriskImageDynaLib5_c(),this._ChallengeBarComponent_BriskImageDynaLib6_i()];
         _loc1_.id = "bar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bar = _loc1_;
         BindingManager.executeBindings(this,"bar",this.bar);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.addEventListener("sizeChanged",this.___ChallengeBarComponent_BriskImageDynaLib5_sizeChanged);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___ChallengeBarComponent_BriskImageDynaLib5_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         this.setNewPadding();
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_right";
         _loc1_.id = "barEnd";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barEnd = _loc1_;
         BindingManager.executeBindings(this,"barEnd",this.barEnd);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingLeft = 2;
         _loc1_.paddingRight = 2;
         _loc1_.blendMode = "overlay";
         _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib7_c(),this._ChallengeBarComponent_BriskImageDynaLib8_c(),this._ChallengeBarComponent_BriskImageDynaLib9_c()];
         _loc1_.id = "barTint";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barTint = _loc1_;
         BindingManager.executeBindings(this,"barTint",this.barTint);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_divider";
         _loc1_.alpha = 0.5;
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib11_i(),this._ChallengeBarComponent_BriskImageDynaLib12_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "ressource_cardboard_mini";
         _loc1_.id = "goodBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodBg = _loc1_;
         BindingManager.executeBindings(this,"goodBg",this.goodBg);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "staticGood";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.staticGood = _loc1_;
         BindingManager.executeBindings(this,"staticGood",this.staticGood);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 3;
         _loc1_.right = -35;
         _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib13_c(),this._ChallengeBarComponent_BriskImageDynaLib14_i(),this._ChallengeBarComponent_BriskImageDynaLib15_c()];
         _loc1_.id = "staticTargetGoodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.staticTargetGoodGroup = _loc1_;
         BindingManager.executeBindings(this,"staticTargetGoodGroup",this.staticTargetGoodGroup);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "donebox_back";
         _loc1_.left = -3;
         _loc1_.top = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib14_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
         _loc1_.id = "staticTargetGood";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.staticTargetGood = _loc1_;
         BindingManager.executeBindings(this,"staticTargetGood",this.staticTargetGood);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "donebox_front";
         _loc1_.left = -6;
         _loc1_.top = 12;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 30;
         _loc1_.height = 30;
         _loc1_.paddingBottom = 22;
         _loc1_.mxmlContent = [this._ChallengeBarComponent_LocaLabel1_i(),this._ChallengeBarComponent_BriskImageDynaLib16_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.text = "dev : 0/0";
         _loc1_.styleName = "depositPlayerstockLabel";
         _loc1_.id = "eventStepProgressBarLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventStepProgressBarLabel = _loc1_;
         BindingManager.executeBindings(this,"eventStepProgressBarLabel",this.eventStepProgressBarLabel);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "rc_icon_small";
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "rcIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rcIcon = _loc1_;
         BindingManager.executeBindings(this,"rcIcon",this.rcIcon);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_HGroup6_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ChallengeBarComponent_BriskImageDynaLib17_i()];
         _loc1_.id = "movingGoodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.movingGoodGroup = _loc1_;
         BindingManager.executeBindings(this,"movingGoodGroup",this.movingGoodGroup);
         return _loc1_;
      }
      
      private function _ChallengeBarComponent_BriskImageDynaLib17_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
         _loc1_.addEventListener("sizeChanged",this.__movingGood_sizeChanged);
         _loc1_.id = "movingGood";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.movingGood = _loc1_;
         BindingManager.executeBindings(this,"movingGood",this.movingGood);
         return _loc1_;
      }
      
      public function __movingGood_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         this.setNewPadding();
      }
      
      private function _ChallengeBarComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.right = 0;
         _loc1_.showSparkle = false;
         _loc1_.useConfirmation = true;
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("click",this.__upsellButton_click);
         _loc1_.addEventListener("rollOver",this.__upsellButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__upsellButton_rollOut);
         _loc1_.id = "upsellButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upsellButton = _loc1_;
         BindingManager.executeBindings(this,"upsellButton",this.upsellButton);
         return _loc1_;
      }
      
      public function __upsellButton_click(param1:MouseEvent) : void
      {
         this.onUpsellClick();
      }
      
      public function __upsellButton_rollOver(param1:MouseEvent) : void
      {
         this.onUpsellRollOver();
      }
      
      public function __upsellButton_rollOut(param1:MouseEvent) : void
      {
         this.onUpsellRollOut();
      }
      
      public function ___ChallengeBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _ChallengeBarComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return this.width - 50;
         },null,"mainGroup.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : HGroup
      {
         return this._97299bar;
      }
      
      public function set bar(param1:HGroup) : void
      {
         var _loc2_:Object = this._97299bar;
         if(_loc2_ !== param1)
         {
            this._97299bar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barEnd() : BriskImageDynaLib
      {
         return this._1396262968barEnd;
      }
      
      public function set barEnd(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1396262968barEnd;
         if(_loc2_ !== param1)
         {
            this._1396262968barEnd = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barEnd",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barTint() : HGroup
      {
         return this._334036562barTint;
      }
      
      public function set barTint(param1:HGroup) : void
      {
         var _loc2_:Object = this._334036562barTint;
         if(_loc2_ !== param1)
         {
            this._334036562barTint = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTint",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventStepProgressBarLabel() : LocaLabel
      {
         return this._1089021804eventStepProgressBarLabel;
      }
      
      public function set eventStepProgressBarLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1089021804eventStepProgressBarLabel;
         if(_loc2_ !== param1)
         {
            this._1089021804eventStepProgressBarLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventStepProgressBarLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodBg() : BriskImageDynaLib
      {
         return this._1240248862goodBg;
      }
      
      public function set goodBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1240248862goodBg;
         if(_loc2_ !== param1)
         {
            this._1240248862goodBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : Group
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:Group) : void
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
      public function get movingGood() : BriskImageDynaLib
      {
         return this._1565735381movingGood;
      }
      
      public function set movingGood(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1565735381movingGood;
         if(_loc2_ !== param1)
         {
            this._1565735381movingGood = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movingGood",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get movingGoodGroup() : HGroup
      {
         return this._1440572180movingGoodGroup;
      }
      
      public function set movingGoodGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1440572180movingGoodGroup;
         if(_loc2_ !== param1)
         {
            this._1440572180movingGoodGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movingGoodGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcIcon() : BriskImageDynaLib
      {
         return this._937542070rcIcon;
      }
      
      public function set rcIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._937542070rcIcon;
         if(_loc2_ !== param1)
         {
            this._937542070rcIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get staticGood() : BriskImageDynaLib
      {
         return this._110699445staticGood;
      }
      
      public function set staticGood(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._110699445staticGood;
         if(_loc2_ !== param1)
         {
            this._110699445staticGood = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticGood",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get staticTargetGood() : BriskImageDynaLib
      {
         return this._74854140staticTargetGood;
      }
      
      public function set staticTargetGood(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._74854140staticTargetGood;
         if(_loc2_ !== param1)
         {
            this._74854140staticTargetGood = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticTargetGood",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get staticTargetGoodGroup() : Group
      {
         return this._2040933149staticTargetGoodGroup;
      }
      
      public function set staticTargetGoodGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2040933149staticTargetGoodGroup;
         if(_loc2_ !== param1)
         {
            this._2040933149staticTargetGoodGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticTargetGoodGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upsellButton() : DynamicPlusButton
      {
         return this._2141414911upsellButton;
      }
      
      public function set upsellButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._2141414911upsellButton;
         if(_loc2_ !== param1)
         {
            this._2141414911upsellButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upsellButton",_loc2_,param1));
            }
         }
      }
   }
}

