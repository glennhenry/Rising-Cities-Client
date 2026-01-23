package net.bigpoint.cityrama.view.boosterpackstore.ui.components
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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.BoosterpackRewardListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   
   use namespace mx_internal;
   
   public class BoosterpackAnimationLayer extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const START_PACK_SPARKLE:String = "START_PACK_SPARKLE";
      
      public static const SKIP:String = "SKIP";
      
      private var _1411267059bonusfactorContainer:SpriteVisualElement;
      
      private var _1082992474boosterpackAnim:BriskMCDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _179476490boosterpackImagePartAnim:BriskMCDynaLib;
      
      private var _783569714boosterpackImageParts:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var _2091119771particleContainer:SpriteVisualElement;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _2104932052rewardParticleContainer:SpriteVisualElement;
      
      private var _319513199skipButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _autoStartAnim:Boolean = false;
      
      private var _autoStartPartAnim:Boolean = false;
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _laser:BitmapClip;
      
      private var _partAnim:BitmapClip;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BoosterpackAnimationLayer()
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
         bindings = this._BoosterpackAnimationLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackAnimationLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BoosterpackAnimationLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._BoosterpackAnimationLayer_HGroup1_c(),this._BoosterpackAnimationLayer_BriskMCDynaLib3_i(),this._BoosterpackAnimationLayer_UiInfolayerAlignmentLine1_i()];
         this.addEventListener("creationComplete",this.___BoosterpackAnimationLayer_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         BoosterpackAnimationLayer._watcherSetupUtil = param1;
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
      
      public function set data(param1:BoosterpackAnimationLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty)
         {
            this._isDirty = false;
            var _temp_1:* = this.boosterpackImagePartAnim;
            this.boosterpackImagePartAnim.includeInLayout = false;
            _temp_1.visible = false;
            this.boosterpackImagePartAnim.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onImagePartAnimLoaded);
            this.boosterpackImagePartAnim.dynaMCSourceName = "boosterPartAnim_" + this._data.boosterpackVo.gfxId;
            this.boosterpackImageParts.dynaBmpSourceName = "boosterPartImage_" + this._data.boosterpackVo.gfxId;
            this.boosterpackImage.dynaBmpSourceName = "large_" + this._data.boosterpackVo.gfxId;
            this.boosterpackLabel.text = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.boosterpackVo.locaId);
            this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.skip");
         }
      }
      
      public function showFinishState() : void
      {
         var _loc3_:RewardItemComponentVo = null;
         var _loc4_:BoosterpackBonusLabel = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:int = 0;
         for each(_loc3_ in this._data.rewards)
         {
            _loc3_.showCreationAnimation = false;
            _loc3_.orderId = _loc2_;
            _loc1_.addItem(_loc3_);
            if(_loc3_.bonusFactor > 1)
            {
               _loc4_ = new BoosterpackBonusLabel();
               _loc4_.bonusFactor = _loc3_.bonusFactor;
               _loc4_.index = _loc2_;
               this.bonusfactorContainer.addChild(_loc4_);
            }
            _loc2_++;
         }
         this.itemList.dataProvider = _loc1_;
         this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.back");
      }
      
      public function addRewardData(param1:RewardItemComponentVo) : void
      {
         if(this.itemList.dataProvider == null)
         {
            this.itemList.dataProvider = new ArrayCollection();
         }
         param1.showCreationAnimation = true;
         param1.orderId = this.itemList.dataProvider.length;
         this.itemList.dataProvider.addItem(param1);
      }
      
      public function stopBoosterPackAnim() : void
      {
         this._autoStartAnim = false;
         if(Boolean(this.boosterpackAnim.bitmapClip) && Boolean(this._laser))
         {
            this._laser.stop();
            var _temp_2:* = this.boosterpackAnim;
            this.boosterpackAnim.includeInLayout = false;
            _temp_2.visible = false;
         }
      }
      
      public function startBoosterPackAnim() : void
      {
         this._autoStartAnim = true;
         if(this._laser)
         {
            while(this.boosterpackAnim.numChildren > 0)
            {
               this.boosterpackAnim.removeChildAt(0);
            }
            this.boosterpackAnim.addChild(this._laser);
            var _temp_1:* = this.boosterpackAnim;
            this.boosterpackAnim.includeInLayout = true;
            _temp_1.visible = true;
            this._laser.removeAfterPlay = true;
            this._laser.addEventListener(Event.REMOVED,this.onRemoveLaser);
            this._laser.playOnce();
         }
      }
      
      private function onRemoveLaser(param1:Event) : void
      {
         this.onFinishCutPart1Anim();
         this.startPartAnim();
      }
      
      private function startPartAnim() : void
      {
         this._autoStartPartAnim = true;
         if(this._partAnim)
         {
            this.boosterpackImage.visible = false;
            this.boosterpackImagePartAnim.removeChildren();
            this.boosterpackImagePartAnim.addChild(this._partAnim);
            var _temp_1:* = this.boosterpackImagePartAnim;
            this.boosterpackImagePartAnim.includeInLayout = true;
            _temp_1.visible = true;
            this._partAnim.removeAfterPlay = true;
            this._partAnim.addEventListener(Event.REMOVED,this.onRemovePartAnim);
            this._partAnim.playOnce();
         }
      }
      
      private function onRemovePartAnim(param1:Event) : void
      {
         this.boosterpackImageParts.visible = true;
         var _temp_1:* = this.boosterpackImagePartAnim;
         this.boosterpackImagePartAnim.includeInLayout = false;
         _temp_1.visible = false;
      }
      
      private function onFinishCutPart1Anim() : void
      {
         dispatchEvent(new Event(START_PACK_SPARKLE));
      }
      
      private function onCreationComplete() : void
      {
         var _temp_1:* = this.boosterpackAnim;
         this.boosterpackAnim.includeInLayout = false;
         _temp_1.visible = false;
         this.boosterpackAnim.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
         this.boosterpackAnim.dynaMCSourceName = "testboosterpackAnim";
      }
      
      private function onAlarmLoaded(param1:Event) : void
      {
         this.boosterpackAnim.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAlarmLoaded);
         this._laser = new BitmapClip(this.boosterpackAnim.movieClip.getChildByName("laser") as MovieClip,"laser",24);
         if(this._autoStartAnim)
         {
            this.startBoosterPackAnim();
         }
         else
         {
            this.stopBoosterPackAnim();
         }
      }
      
      private function onImagePartAnimLoaded(param1:Event) : void
      {
         this.boosterpackImagePartAnim.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onImagePartAnimLoaded);
         this._partAnim = new BitmapClip(this.boosterpackImagePartAnim.movieClip.getChildByName("booster") as MovieClip,"boosterPartAnim_" + this._data.boosterpackVo.gfxId,12);
         if(this._autoStartPartAnim)
         {
            this.startPartAnim();
         }
      }
      
      private function handleSkip() : void
      {
         dispatchEvent(new Event(SKIP));
      }
      
      private function _BoosterpackAnimationLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = -20;
         _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_Group2_c(),this._BoosterpackAnimationLayer_Group4_c(),this._BoosterpackAnimationLayer_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 290;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_BriskImageDynaLib1_i(),this._BoosterpackAnimationLayer_BriskImageDynaLib2_c(),this._BoosterpackAnimationLayer_BriskImageDynaLib3_i(),this._BoosterpackAnimationLayer_BriskMCDynaLib1_c(),this._BoosterpackAnimationLayer_SpriteVisualElement1_i(),this._BoosterpackAnimationLayer_BriskImageDynaLib4_i(),this._BoosterpackAnimationLayer_BriskMCDynaLib2_i(),this._BoosterpackAnimationLayer_BriskImageDynaLib5_c(),this._BoosterpackAnimationLayer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 200;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
         _loc1_.id = "pricingBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pricingBg = _loc1_;
         BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 20;
         _loc1_.dynaBmpSourceName = "special_cardboard_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 54;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
         _loc1_.visible = true;
         _loc1_.id = "boosterpackImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackImage = _loc1_;
         BindingManager.executeBindings(this,"boosterpackImage",this.boosterpackImage);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.width = 110;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 13;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.includeInLayout = false;
         _loc1_.initialized(this,"particleContainer");
         this.particleContainer = _loc1_;
         BindingManager.executeBindings(this,"particleContainer",this.particleContainer);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 48;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.visible = false;
         _loc1_.id = "boosterpackImageParts";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackImageParts = _loc1_;
         BindingManager.executeBindings(this,"boosterpackImageParts",this.boosterpackImageParts);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.id = "boosterpackImagePartAnim";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackImagePartAnim = _loc1_;
         BindingManager.executeBindings(this,"boosterpackImagePartAnim",this.boosterpackImagePartAnim);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 40;
         _loc1_.dynaBmpSourceName = "sparkles_shadow";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 212;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_HGroup2_c(),this._BoosterpackAnimationLayer_Group3_c(),this._BoosterpackAnimationLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 170;
         _loc1_.height = 38;
         _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "boosterpackLabel";
         _loc1_.id = "boosterpackLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackLabel = _loc1_;
         BindingManager.executeBindings(this,"boosterpackLabel",this.boosterpackLabel);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 0;
         _loc1_.width = 205;
         _loc1_.horizontalCenter = 0;
         _loc1_.imageNameLeft = "button_icon_arrow_right";
         _loc1_.libNameLeft = "gui_popups_emergencyBook";
         _loc1_.addEventListener("click",this.__skipButton_click);
         _loc1_.id = "skipButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.skipButton = _loc1_;
         BindingManager.executeBindings(this,"skipButton",this.skipButton);
         return _loc1_;
      }
      
      public function __skipButton_click(param1:MouseEvent) : void
      {
         this.handleSkip();
      }
      
      private function _BoosterpackAnimationLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "blue_line_long";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackAnimationLayer_SpriteVisualElement2_i(),this._BoosterpackAnimationLayer_List1_i(),this._BoosterpackAnimationLayer_SpriteVisualElement3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_SpriteVisualElement2_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.includeInLayout = false;
         _loc1_.initialized(this,"rewardParticleContainer");
         this.rewardParticleContainer = _loc1_;
         BindingManager.executeBindings(this,"rewardParticleContainer",this.rewardParticleContainer);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._BoosterpackAnimationLayer_ClassFactory1_c();
         _loc1_.top = 60;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",BoosterpackRewardListSkin);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = BoosterpackRewardItemRenderer;
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_SpriteVisualElement3_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.includeInLayout = false;
         _loc1_.initialized(this,"bonusfactorContainer");
         this.bonusfactorContainer = _loc1_;
         BindingManager.executeBindings(this,"bonusfactorContainer",this.bonusfactorContainer);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_BriskMCDynaLib3_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.id = "boosterpackAnim";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackAnim = _loc1_;
         BindingManager.executeBindings(this,"boosterpackAnim",this.boosterpackAnim);
         return _loc1_;
      }
      
      private function _BoosterpackAnimationLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 312;
         _loc1_.top = 100;
         _loc1_.right = 60;
         _loc1_.lineId = 7;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      public function ___BoosterpackAnimationLayer_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete();
      }
      
      private function _BoosterpackAnimationLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return boosterpackImage.x;
         },null,"boosterpackAnim.x");
         result[1] = new Binding(this,function():Number
         {
            return boosterpackImage.y;
         },null,"boosterpackAnim.y");
         result[2] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bonusfactorContainer() : SpriteVisualElement
      {
         return this._1411267059bonusfactorContainer;
      }
      
      public function set bonusfactorContainer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1411267059bonusfactorContainer;
         if(_loc2_ !== param1)
         {
            this._1411267059bonusfactorContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bonusfactorContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackAnim() : BriskMCDynaLib
      {
         return this._1082992474boosterpackAnim;
      }
      
      public function set boosterpackAnim(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._1082992474boosterpackAnim;
         if(_loc2_ !== param1)
         {
            this._1082992474boosterpackAnim = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackAnim",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImage() : BriskImageDynaLib
      {
         return this._779621070boosterpackImage;
      }
      
      public function set boosterpackImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._779621070boosterpackImage;
         if(_loc2_ !== param1)
         {
            this._779621070boosterpackImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImagePartAnim() : BriskMCDynaLib
      {
         return this._179476490boosterpackImagePartAnim;
      }
      
      public function set boosterpackImagePartAnim(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._179476490boosterpackImagePartAnim;
         if(_loc2_ !== param1)
         {
            this._179476490boosterpackImagePartAnim = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImagePartAnim",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImageParts() : BriskImageDynaLib
      {
         return this._783569714boosterpackImageParts;
      }
      
      public function set boosterpackImageParts(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._783569714boosterpackImageParts;
         if(_loc2_ !== param1)
         {
            this._783569714boosterpackImageParts = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImageParts",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackLabel() : LocaLabel
      {
         return this._777207093boosterpackLabel;
      }
      
      public function set boosterpackLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._777207093boosterpackLabel;
         if(_loc2_ !== param1)
         {
            this._777207093boosterpackLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get particleContainer() : SpriteVisualElement
      {
         return this._2091119771particleContainer;
      }
      
      public function set particleContainer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._2091119771particleContainer;
         if(_loc2_ !== param1)
         {
            this._2091119771particleContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"particleContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingBg() : BriskImageDynaLib
      {
         return this._2121281877pricingBg;
      }
      
      public function set pricingBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2121281877pricingBg;
         if(_loc2_ !== param1)
         {
            this._2121281877pricingBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardParticleContainer() : SpriteVisualElement
      {
         return this._2104932052rewardParticleContainer;
      }
      
      public function set rewardParticleContainer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._2104932052rewardParticleContainer;
         if(_loc2_ !== param1)
         {
            this._2104932052rewardParticleContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardParticleContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skipButton() : MultistateButton
      {
         return this._319513199skipButton;
      }
      
      public function set skipButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._319513199skipButton;
         if(_loc2_ !== param1)
         {
            this._319513199skipButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc2_ !== param1)
         {
            this._1218573432uiInfolayerAlignmentLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
            }
         }
      }
   }
}

