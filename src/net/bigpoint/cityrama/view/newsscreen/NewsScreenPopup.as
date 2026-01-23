package net.bigpoint.cityrama.view.newsscreen
{
   import com.greensock.TweenMax;
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.newsscreen.components.BubblePagingItemRenderer;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsScreenSlideVo;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsscreenPopupVo;
   import net.bigpoint.cityrama.view.quest.ui.skin.BubblePagingListSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class NewsScreenPopup extends PaperPopupWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static const SLIDE_DURATION:int = 4;
      
      private static const SLIDE_ANIMATION_DURATION:int = 1;
      
      public static const SHOW_FORUM:String = "SHOW_FORUM";
      
      public static const OPEN_LINK:String = "OPEN_LINK";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _1389200807bigGfx:BriskMCDynaLib;
      
      private var _623702286bigGfxOld:BriskMCDynaLib;
      
      private var _1781625235buttonGroup:HGroup;
      
      private var _78821332buttonToForum:MultistateButton;
      
      private var _972546791buttonToLink:MultistateButton;
      
      private var _223781260detailFlavourLabel:LocaLabel;
      
      private var _1760597841detailHeadlineLabel:LocaLabel;
      
      private var _1302042186pagingList:List;
      
      private var _417762822scrollBar:VScrollBar;
      
      private var _2043238322scrollGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:NewsscreenPopupVo;
      
      private var _dataDirty:Boolean;
      
      private var _mouseIsOver:Boolean;
      
      private var _tween:TweenMax;
      
      private var _slideTween:TweenMax;
      
      private var _slideTweenOld:TweenMax;
      
      private var _headlineTween:TweenMax;
      
      private var _scrollGroupTween:TweenMax;
      
      private var _buttonGroupTween:TweenMax;
      
      private var _newIndex:int = -1;
      
      private var _oldIndex:int = -1;
      
      private var _disposing:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NewsScreenPopup()
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
         bindings = this._NewsScreenPopup_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_newsscreen_NewsScreenPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NewsScreenPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.styleName = "newsScreen";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._NewsScreenPopup_Array1_c);
         this.addEventListener("creationComplete",this.___NewsScreenPopup_PaperPopupWindow1_creationComplete);
         this.addEventListener("rollOver",this.___NewsScreenPopup_PaperPopupWindow1_rollOver);
         this.addEventListener("rollOut",this.___NewsScreenPopup_PaperPopupWindow1_rollOut);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         NewsScreenPopup._watcherSetupUtil = param1;
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
         this.buttonToForum.label = LocaUtils.getString("rcl.newsscreens.layer","rcl.newsscreens.layer.button.toForum.capital");
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemoveHandler);
      }
      
      public function setData(param1:NewsscreenPopupVo) : void
      {
         if(param1 != null)
         {
            this._data = param1;
            this._dataDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc2_:ArrayCollection = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:NewsScreenSlideVo = null;
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            _loc2_ = new ArrayCollection();
            _loc3_ = new ArrayCollection();
            for each(_loc4_ in this._data.slides)
            {
               _loc2_.addItem(++_loc1_);
               _loc3_.addItem(_loc4_);
            }
            this.pagingList.dataProvider = _loc2_;
            this.pagingList.selectedIndex = 0;
            if(this._data.slides.length > 1)
            {
               this.scrollGroup.maxHeight = 65;
               this.scrollGroup.height = 65;
               this._tween = TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
            }
            else
            {
               this.pagingList.visible = this.pagingList.includeInLayout = false;
               this.scrollGroup.maxHeight = 80;
               this.scrollGroup.height = 80;
            }
            this.displaySlide();
         }
      }
      
      private function handlePagingChanged(param1:Event = null) : void
      {
         if(this._disposing)
         {
            return;
         }
         TweenMax.killDelayedCallsTo(this.changeSlide);
         if(param1)
         {
            this._newIndex = this.pagingList.selectedIndex;
         }
         this.displaySlide();
         this._tween = TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
      }
      
      private function changeSlide() : void
      {
         if(this._disposing)
         {
            return;
         }
         if(!this._mouseIsOver)
         {
            this._newIndex = this.pagingList.selectedIndex + 1;
            if(this.pagingList.selectedIndex < this._data.slides.length - 1)
            {
               ++this.pagingList.selectedIndex;
            }
            else
            {
               this.pagingList.selectedIndex = 0;
            }
            this.handlePagingChanged();
         }
      }
      
      private function displaySlide() : void
      {
         var _loc1_:int = 0;
         if(this._disposing)
         {
            return;
         }
         if(this._oldIndex != -1 && this._data.slides.length > 1)
         {
            this.bigGfxOld.dynaLibName = this.bigGfx.dynaLibName;
            this.bigGfxOld.dynaMCSourceName = this.bigGfx.dynaMCSourceName;
            if(this._slideTweenOld)
            {
               this._slideTweenOld.kill();
            }
            this.bigGfxOld.x = 0;
            if(this._oldIndex < this._newIndex)
            {
               _loc1_ = -724;
            }
            else
            {
               _loc1_ = 724;
            }
            var _temp_2:* = this.bigGfxOld;
            this.bigGfxOld.includeInLayout = true;
            _temp_2.visible = true;
            this._slideTweenOld = TweenMax.to(this.bigGfxOld,SLIDE_ANIMATION_DURATION,{"x":_loc1_});
         }
         this.bigGfx.dynaLibName = this._data.slides[this.pagingList.selectedIndex].gfxId.toString();
         this.bigGfx.dynaMCSourceName = "news" + this._data.slides[this.pagingList.selectedIndex].gfxId;
         if(this._oldIndex != -1 && this._data.slides.length > 1)
         {
            this.bigGfx.dynaLibName = this.bigGfx.dynaLibName;
            this.bigGfx.dynaMCSourceName = this.bigGfx.dynaMCSourceName;
            if(this._slideTween)
            {
               this._slideTween.kill();
            }
            if(this._oldIndex < this._newIndex)
            {
               this.bigGfx.x = 724;
            }
            else
            {
               this.bigGfx.x = -724;
            }
            this._slideTween = TweenMax.to(this.bigGfx,SLIDE_ANIMATION_DURATION,{
               "x":0,
               "onComplete":this.slideAnimationCompleted
            });
            if(this._scrollGroupTween)
            {
               this._scrollGroupTween.kill();
            }
            this.scrollGroup.alpha = 1;
            this._scrollGroupTween = TweenMax.to(this.scrollGroup,SLIDE_ANIMATION_DURATION - 0.1,{"alpha":0});
            if(this._headlineTween)
            {
               this._headlineTween.kill();
            }
            this.detailHeadlineLabel.alpha = 1;
            this._headlineTween = TweenMax.to(this.detailHeadlineLabel,SLIDE_ANIMATION_DURATION - 0.1,{"alpha":0});
            if(this._buttonGroupTween)
            {
               this._buttonGroupTween.kill();
            }
            this.buttonGroup.alpha = 1;
            this._buttonGroupTween = TweenMax.to(this.buttonGroup,SLIDE_ANIMATION_DURATION - 0.1,{"alpha":0});
         }
         else
         {
            this.setTexts();
         }
         this._oldIndex = this.pagingList.selectedIndex;
      }
      
      private function setTexts() : void
      {
         title = LocaUtils.getString("rcl.newsscreens","rcl.newsscreens." + this._data.slides[this.pagingList.selectedIndex].localeId + ".title.capital");
         this.detailHeadlineLabel.text = LocaUtils.getString("rcl.newsscreens","rcl.newsscreens." + this._data.slides[this.pagingList.selectedIndex].localeId + ".header");
         this.detailFlavourLabel.text = LocaUtils.getString("rcl.newsscreens","rcl.newsscreens." + this._data.slides[this.pagingList.selectedIndex].localeId + ".flavour");
         this.buttonToLink.label = LocaUtils.getString("rcl.newsscreens.layer","rcl.newsscreens.layer.button." + this._data.slides[this.pagingList.selectedIndex].buttonLabelIdentifier + ".capital");
      }
      
      private function slideAnimationCompleted() : void
      {
         var _temp_1:* = this.bigGfxOld;
         this.bigGfxOld.includeInLayout = false;
         _temp_1.visible = false;
         this.setTexts();
         this.scrollGroup.alpha = 0;
         this.detailHeadlineLabel.alpha = 0;
         this.buttonGroup.alpha = 0;
         this.scrollBar.value = 0;
         if(this._scrollGroupTween)
         {
            this._scrollGroupTween.kill();
         }
         this._scrollGroupTween = TweenMax.to(this.scrollGroup,SLIDE_ANIMATION_DURATION * 0.5,{"alpha":1});
         if(this._headlineTween)
         {
            this._headlineTween.kill();
         }
         this._headlineTween = TweenMax.to(this.detailHeadlineLabel,SLIDE_ANIMATION_DURATION * 0.5,{"alpha":1});
         if(this._buttonGroupTween)
         {
            this._buttonGroupTween.kill();
         }
         this._buttonGroupTween = TweenMax.to(this.buttonGroup,SLIDE_ANIMATION_DURATION * 0.5,{"alpha":1});
      }
      
      private function handleRemoved() : void
      {
         TweenMax.killDelayedCallsTo(this.changeSlide);
         this._tween = null;
      }
      
      private function overHandler(param1:Event) : void
      {
         this._mouseIsOver = true;
         if(this._tween)
         {
            this._tween.pause();
         }
      }
      
      private function outHandler(param1:Event) : void
      {
         this._mouseIsOver = false;
         if(this._tween)
         {
            this._tween.resume();
         }
      }
      
      private function onForumClicked(param1:Event) : void
      {
         dispatchEvent(new Event(SHOW_FORUM));
      }
      
      private function onLinkButtonClicked(param1:Event) : void
      {
         dispatchEvent(new ItemClickEvent(OPEN_LINK,false,false,null,this.pagingList.selectedIndex));
      }
      
      private function onRemoveHandler(param1:Event) : void
      {
         this._disposing = true;
         if(this._tween)
         {
            this._tween.kill();
         }
         if(this._slideTween)
         {
            this._slideTween.kill();
         }
         if(this._slideTweenOld)
         {
            this._slideTweenOld.kill();
         }
         if(this._scrollGroupTween)
         {
            this._scrollGroupTween.kill();
         }
         if(this._headlineTween)
         {
            this._headlineTween.kill();
         }
         if(this._buttonGroupTween)
         {
            this._buttonGroupTween.kill();
         }
      }
      
      private function _NewsScreenPopup_Array1_c() : Array
      {
         return [this._NewsScreenPopup_Group1_c()];
      }
      
      private function _NewsScreenPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._NewsScreenPopup_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._NewsScreenPopup_Group2_c(),this._NewsScreenPopup_Group3_c(),this._NewsScreenPopup_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 724;
         _loc1_.height = 190;
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.mxmlContent = [this._NewsScreenPopup_BriskMCDynaLib1_i(),this._NewsScreenPopup_BriskMCDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.addEventListener("click",this.__bigGfx_click);
         _loc1_.id = "bigGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bigGfx = _loc1_;
         BindingManager.executeBindings(this,"bigGfx",this.bigGfx);
         return _loc1_;
      }
      
      public function __bigGfx_click(param1:MouseEvent) : void
      {
         this.onLinkButtonClicked(param1);
      }
      
      private function _NewsScreenPopup_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "bigGfxOld";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bigGfxOld = _loc1_;
         BindingManager.executeBindings(this,"bigGfxOld",this.bigGfxOld);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 125;
         _loc1_.mxmlContent = [this._NewsScreenPopup_Rect1_c(),this._NewsScreenPopup_Rect2_c(),this._NewsScreenPopup_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.bottom = 7;
         _loc1_.fill = this._NewsScreenPopup_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 2;
         _loc1_.left = 2;
         _loc1_.right = 2;
         _loc1_.bottom = 9;
         _loc1_.fill = this._NewsScreenPopup_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._NewsScreenPopup_GradientEntry1_c(),this._NewsScreenPopup_GradientEntry2_c()];
         return _loc1_;
      }
      
      private function _NewsScreenPopup_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16513776;
         return _loc1_;
      }
      
      private function _NewsScreenPopup_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 14999501;
         return _loc1_;
      }
      
      private function _NewsScreenPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._NewsScreenPopup_Group4_c(),this._NewsScreenPopup_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.minHeight = 10;
         _loc1_.mxmlContent = [this._NewsScreenPopup_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._NewsScreenPopup_ClassFactory1_c();
         _loc1_.selectedIndex = 0;
         _loc1_.percentWidth = 100;
         _loc1_.height = 25;
         _loc1_.setStyle("skinClass",BubblePagingListSkin);
         _loc1_.addEventListener("change",this.__pagingList_change);
         _loc1_.id = "pagingList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pagingList = _loc1_;
         BindingManager.executeBindings(this,"pagingList",this.pagingList);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = BubblePagingItemRenderer;
         return _loc1_;
      }
      
      public function __pagingList_change(param1:IndexChangeEvent) : void
      {
         this.handlePagingChanged(param1);
      }
      
      private function _NewsScreenPopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._NewsScreenPopup_HGroup1_c(),this._NewsScreenPopup_VScrollBar1_i(),this._NewsScreenPopup_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._NewsScreenPopup_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 605;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._NewsScreenPopup_LocaLabel1_i(),this._NewsScreenPopup_Group6_c(),this._NewsScreenPopup_Group7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "blueThirteenCenter";
         _loc1_.maxWidth = 605;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "detailHeadlineLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.detailHeadlineLabel = _loc1_;
         BindingManager.executeBindings(this,"detailHeadlineLabel",this.detailHeadlineLabel);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 4;
         _loc1_.mxmlContent = [this._NewsScreenPopup_Line1_c(),this._NewsScreenPopup_Line2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Line1_c() : Line
      {
         var _loc1_:Line = new Line();
         _loc1_.xFrom = 0;
         _loc1_.yFrom = 1;
         _loc1_.xTo = 600;
         _loc1_.yTo = 1;
         _loc1_.stroke = this._NewsScreenPopup_SolidColorStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 12171707;
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Line2_c() : Line
      {
         var _loc1_:Line = new Line();
         _loc1_.xFrom = 0;
         _loc1_.yFrom = 2;
         _loc1_.xTo = 600;
         _loc1_.yTo = 2;
         _loc1_.stroke = this._NewsScreenPopup_SolidColorStroke2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_SolidColorStroke2_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16711673;
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.maxHeight = 65;
         _loc1_.height = 65;
         _loc1_.width = 605;
         _loc1_.mxmlContent = [this._NewsScreenPopup_VGroup4_c()];
         _loc1_.id = "scrollGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollGroup = _loc1_;
         BindingManager.executeBindings(this,"scrollGroup",this.scrollGroup);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._NewsScreenPopup_LocaLabel2_i(),this._NewsScreenPopup_Group8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "greyElevenCenter";
         _loc1_.maxWidth = 605;
         _loc1_.id = "detailFlavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.detailFlavourLabel = _loc1_;
         BindingManager.executeBindings(this,"detailFlavourLabel",this.detailFlavourLabel);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_VScrollBar1_i() : VScrollBar
      {
         var _loc1_:VScrollBar = new VScrollBar();
         _loc1_.right = 7;
         _loc1_.percentHeight = 100;
         _loc1_.styleName = "slimVScrollBar";
         _loc1_.id = "scrollBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollBar = _loc1_;
         BindingManager.executeBindings(this,"scrollBar",this.scrollBar);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_newsScreenPopup";
         _loc1_.dynaBmpSourceName = "shadow_bottom";
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsScreenPopup_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 55;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._NewsScreenPopup_MultistateButton1_i(),this._NewsScreenPopup_MultistateButton2_i()];
         _loc1_.id = "buttonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonGroup = _loc1_;
         BindingManager.executeBindings(this,"buttonGroup",this.buttonGroup);
         return _loc1_;
      }
      
      private function _NewsScreenPopup_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 185;
         _loc1_.addEventListener("click",this.__buttonToForum_click);
         _loc1_.id = "buttonToForum";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonToForum = _loc1_;
         BindingManager.executeBindings(this,"buttonToForum",this.buttonToForum);
         return _loc1_;
      }
      
      public function __buttonToForum_click(param1:MouseEvent) : void
      {
         this.onForumClicked(param1);
      }
      
      private function _NewsScreenPopup_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 185;
         _loc1_.addEventListener("click",this.__buttonToLink_click);
         _loc1_.id = "buttonToLink";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonToLink = _loc1_;
         BindingManager.executeBindings(this,"buttonToLink",this.buttonToLink);
         return _loc1_;
      }
      
      public function __buttonToLink_click(param1:MouseEvent) : void
      {
         this.onLinkButtonClicked(param1);
      }
      
      public function ___NewsScreenPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public function ___NewsScreenPopup_PaperPopupWindow1_rollOver(param1:MouseEvent) : void
      {
         this.overHandler(param1);
      }
      
      public function ___NewsScreenPopup_PaperPopupWindow1_rollOut(param1:MouseEvent) : void
      {
         this.outHandler(param1);
      }
      
      private function _NewsScreenPopup_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"scrollBar.viewport","scrollGroup");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bigGfx() : BriskMCDynaLib
      {
         return this._1389200807bigGfx;
      }
      
      public function set bigGfx(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._1389200807bigGfx;
         if(_loc2_ !== param1)
         {
            this._1389200807bigGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bigGfxOld() : BriskMCDynaLib
      {
         return this._623702286bigGfxOld;
      }
      
      public function set bigGfxOld(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._623702286bigGfxOld;
         if(_loc2_ !== param1)
         {
            this._623702286bigGfxOld = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigGfxOld",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonGroup() : HGroup
      {
         return this._1781625235buttonGroup;
      }
      
      public function set buttonGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1781625235buttonGroup;
         if(_loc2_ !== param1)
         {
            this._1781625235buttonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonToForum() : MultistateButton
      {
         return this._78821332buttonToForum;
      }
      
      public function set buttonToForum(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._78821332buttonToForum;
         if(_loc2_ !== param1)
         {
            this._78821332buttonToForum = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonToForum",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonToLink() : MultistateButton
      {
         return this._972546791buttonToLink;
      }
      
      public function set buttonToLink(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._972546791buttonToLink;
         if(_loc2_ !== param1)
         {
            this._972546791buttonToLink = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonToLink",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detailFlavourLabel() : LocaLabel
      {
         return this._223781260detailFlavourLabel;
      }
      
      public function set detailFlavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._223781260detailFlavourLabel;
         if(_loc2_ !== param1)
         {
            this._223781260detailFlavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailFlavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detailHeadlineLabel() : LocaLabel
      {
         return this._1760597841detailHeadlineLabel;
      }
      
      public function set detailHeadlineLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1760597841detailHeadlineLabel;
         if(_loc2_ !== param1)
         {
            this._1760597841detailHeadlineLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailHeadlineLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pagingList() : List
      {
         return this._1302042186pagingList;
      }
      
      public function set pagingList(param1:List) : void
      {
         var _loc2_:Object = this._1302042186pagingList;
         if(_loc2_ !== param1)
         {
            this._1302042186pagingList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pagingList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollBar() : VScrollBar
      {
         return this._417762822scrollBar;
      }
      
      public function set scrollBar(param1:VScrollBar) : void
      {
         var _loc2_:Object = this._417762822scrollBar;
         if(_loc2_ !== param1)
         {
            this._417762822scrollBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollGroup() : Group
      {
         return this._2043238322scrollGroup;
      }
      
      public function set scrollGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2043238322scrollGroup;
         if(_loc2_ !== param1)
         {
            this._2043238322scrollGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollGroup",_loc2_,param1));
            }
         }
      }
   }
}

