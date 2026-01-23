package net.bigpoint.cityrama.view.assistants.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProgressBarMiniVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   
   public class RentCollectorSideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const SHOW_HIRE_INFO:String = "SHOW_HIRE_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const USE_COLLECTOR:String = "USE_COLLECTOR";
      
      public static const PLUS_CLICKED:String = "PLUS_CLICKED";
      
      private var _738471190iconBase:BriskImageDynaLib;
      
      private var _1412649594iconGroup:Group;
      
      private var _1784090142menuContainer:Group;
      
      private var _398457948miniProgress:ProgressBarMini;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _402978835rentCollectorIcon:BriskImageDynaLib;
      
      private var _1397564793rentCollectorSparkleSprite:SpriteVisualElement;
      
      private var _1935734112saleIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RentCollectorSideMenuVo;
      
      private var _isDirty:Boolean;
      
      private var _saleTimer:Timer;
      
      private var _salePulseOver:Boolean;
      
      private var _pulsatingDone:Boolean;
      
      public function RentCollectorSideMenu()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 55;
         this.minHeight = 53;
         this.mxmlContent = [this._RentCollectorSideMenu_VGroup1_c(),this._RentCollectorSideMenu_Group3_i()];
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
         if(this._isDirty && Boolean(this._data))
         {
            this._isDirty = false;
            this.rentCollectorIcon.briskDynaVo = this._data.iconVo;
            this.plusIcon.includeInLayout = this.plusIcon.visible = !this._data.saleActive;
            this.saleIcon.includeInLayout = this.saleIcon.visible = this._data.saleActive;
            if(this._data.rentCollectorRunning)
            {
               this.iconBase.briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base_noShadow");
               var _loc1_:ProgressBarMiniVo = new ProgressBarMiniVo();
               null.currentTime = this._data.timerVo.currentTime;
               null.endTime = this._data.timerVo.targetTime;
               null.startTime = this._data.timerVo.startTime;
               this.miniProgress.data = null;
               this.miniProgress.includeInLayout = this.miniProgress.visible = true;
               TweenMax.to(this.iconBase,0,{"glowFilter":{
                  "color":15844410,
                  "alpha":1,
                  "blurX":20,
                  "blurY":20,
                  "strength":2,
                  "quality":1
               }});
            }
            else
            {
               this.iconBase.briskDynaVo = new BriskDynaVo("gui_ui_questSide","questmarker_base");
               this.miniProgress.includeInLayout = this.miniProgress.visible = false;
               this.iconBase.filters = [];
            }
            if(this._data.saleActive && !this._saleTimer && !this._pulsatingDone)
            {
               this._saleTimer = new Timer(500,120);
               this._saleTimer.addEventListener(TimerEvent.TIMER,this.handleSaleTimer);
               this._saleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.handleSaleTimerComplete);
               this._saleTimer.start();
               this._pulsatingDone = true;
            }
            else if(!this._data.saleActive)
            {
               if(this._saleTimer)
               {
                  this.handleSaleTimerComplete();
               }
            }
         }
      }
      
      private function handleSaleTimerComplete(param1:TimerEvent = null) : void
      {
         if(this._saleTimer)
         {
            this._saleTimer.removeEventListener(TimerEvent.TIMER,this.handleSaleTimer);
            this._saleTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.handleSaleTimerComplete);
            this._saleTimer = null;
         }
      }
      
      private function handleSaleTimer(param1:TimerEvent) : void
      {
         if(this._salePulseOver)
         {
            this.saleIcon.dynaBmpSourceName = "salebadge_mini_normal";
            this._salePulseOver = false;
         }
         else
         {
            this.saleIcon.dynaBmpSourceName = "salebadge_mini_over";
            this._salePulseOver = true;
         }
      }
      
      private function onIconOver() : void
      {
         if(this._data.rentCollectorRunning)
         {
            this.rentCollectorIcon.briskDynaVo = this._data.overIconVo;
            dispatchEvent(new Event(SHOW_INFO,true,true));
         }
      }
      
      private function onIconOut() : void
      {
         if(this._data.rentCollectorRunning)
         {
            this.rentCollectorIcon.briskDynaVo = this._data.iconVo;
         }
         dispatchEvent(new Event(HIDE_INFO,true,true));
      }
      
      private function onIconClick() : void
      {
         if(this._data.rentCollectorRunning)
         {
            dispatchEvent(new Event(USE_COLLECTOR,true,true));
         }
      }
      
      private function onPlusMouseOver() : void
      {
         if(this.plusIcon.includeInLayout)
         {
            this.plusIcon.scaleX += 0.05;
            this.plusIcon.scaleY += 0.05;
         }
         else if(this.saleIcon.includeInLayout)
         {
            if(Boolean(this._saleTimer) && this._saleTimer.running)
            {
               this._saleTimer.stop();
               this._salePulseOver = true;
            }
            this.saleIcon.dynaBmpSourceName = "salebadge_mini_over";
         }
         dispatchEvent(new Event(SHOW_HIRE_INFO,true,true));
      }
      
      private function onPlusMouseOut() : void
      {
         if(this.plusIcon.includeInLayout)
         {
            this.plusIcon.scaleX = 1;
            this.plusIcon.scaleY = 1;
         }
         else if(this.saleIcon.includeInLayout)
         {
            if(Boolean(this._saleTimer) && this._saleTimer.currentCount < this._saleTimer.repeatCount)
            {
               this._saleTimer.start();
               this._salePulseOver = false;
            }
            this.saleIcon.dynaBmpSourceName = "salebadge_mini_normal";
         }
         dispatchEvent(new Event(HIDE_INFO,true,true));
      }
      
      private function onPlusClick() : void
      {
         if(Boolean(this._saleTimer) && this._saleTimer.currentCount < this._saleTimer.repeatCount)
         {
            this._saleTimer.stop();
            this.handleSaleTimerComplete();
         }
         dispatchEvent(new Event(PLUS_CLICKED,true,true));
      }
      
      public function set data(param1:RentCollectorSideMenuVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override public function get measuredHeight() : Number
      {
         if(this.miniProgress.includeInLayout)
         {
            return this.minHeight + this.miniProgress.height - 3;
         }
         return this.minHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      private function _RentCollectorSideMenu_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -3;
         _loc1_.maxWidth = 55;
         _loc1_.width = 55;
         _loc1_.mxmlContent = [this._RentCollectorSideMenu_Group2_i(),this._RentCollectorSideMenu_ProgressBarMini1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSideMenu_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mouseEnabledWhereTransparent = false;
         _loc1_.mxmlContent = [this._RentCollectorSideMenu_BriskImageDynaLib1_i(),this._RentCollectorSideMenu_BriskImageDynaLib2_i(),this._RentCollectorSideMenu_BriskImageDynaLib3_i(),this._RentCollectorSideMenu_BriskImageDynaLib4_i(),this._RentCollectorSideMenu_SpriteVisualElement1_i()];
         _loc1_.id = "iconGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconGroup = _loc1_;
         BindingManager.executeBindings(this,"iconGroup",this.iconGroup);
         return _loc1_;
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "questmarker_base";
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.addEventListener("rollOver",this.__iconBase_rollOver);
         _loc1_.addEventListener("rollOut",this.__iconBase_rollOut);
         _loc1_.addEventListener("click",this.__iconBase_click);
         _loc1_.id = "iconBase";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconBase = _loc1_;
         BindingManager.executeBindings(this,"iconBase",this.iconBase);
         return _loc1_;
      }
      
      public function __iconBase_rollOver(param1:MouseEvent) : void
      {
         this.onIconOver();
      }
      
      public function __iconBase_rollOut(param1:MouseEvent) : void
      {
         this.onIconOut();
      }
      
      public function __iconBase_click(param1:MouseEvent) : void
      {
         this.onIconClick();
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "collector_inactive_icon";
         _loc1_.width = 55;
         _loc1_.height = 48;
         _loc1_.top = 2;
         _loc1_.left = 6;
         _loc1_.addEventListener("rollOver",this.__rentCollectorIcon_rollOver);
         _loc1_.addEventListener("rollOut",this.__rentCollectorIcon_rollOut);
         _loc1_.addEventListener("click",this.__rentCollectorIcon_click);
         _loc1_.id = "rentCollectorIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rentCollectorIcon = _loc1_;
         BindingManager.executeBindings(this,"rentCollectorIcon",this.rentCollectorIcon);
         return _loc1_;
      }
      
      public function __rentCollectorIcon_rollOver(param1:MouseEvent) : void
      {
         this.onIconOver();
      }
      
      public function __rentCollectorIcon_rollOut(param1:MouseEvent) : void
      {
         this.onIconOut();
      }
      
      public function __rentCollectorIcon_click(param1:MouseEvent) : void
      {
         this.onIconClick();
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.top = 0;
         _loc1_.right = 3;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.addEventListener("click",this.__plusIcon_click);
         _loc1_.addEventListener("rollOver",this.__plusIcon_rollOver);
         _loc1_.addEventListener("rollOut",this.__plusIcon_rollOut);
         _loc1_.id = "plusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusIcon = _loc1_;
         BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
         return _loc1_;
      }
      
      public function __plusIcon_click(param1:MouseEvent) : void
      {
         this.onPlusClick();
      }
      
      public function __plusIcon_rollOver(param1:MouseEvent) : void
      {
         this.onPlusMouseOver();
      }
      
      public function __plusIcon_rollOut(param1:MouseEvent) : void
      {
         this.onPlusMouseOut();
      }
      
      private function _RentCollectorSideMenu_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "salebadge_mini_normal";
         _loc1_.top = 0;
         _loc1_.right = 3;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.addEventListener("click",this.__saleIcon_click);
         _loc1_.addEventListener("rollOver",this.__saleIcon_rollOver);
         _loc1_.addEventListener("rollOut",this.__saleIcon_rollOut);
         _loc1_.id = "saleIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleIcon = _loc1_;
         BindingManager.executeBindings(this,"saleIcon",this.saleIcon);
         return _loc1_;
      }
      
      public function __saleIcon_click(param1:MouseEvent) : void
      {
         this.onPlusClick();
      }
      
      public function __saleIcon_rollOver(param1:MouseEvent) : void
      {
         this.onPlusMouseOver();
      }
      
      public function __saleIcon_rollOut(param1:MouseEvent) : void
      {
         this.onPlusMouseOut();
      }
      
      private function _RentCollectorSideMenu_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.initialized(this,"rentCollectorSparkleSprite");
         this.rentCollectorSparkleSprite = _loc1_;
         BindingManager.executeBindings(this,"rentCollectorSparkleSprite",this.rentCollectorSparkleSprite);
         return _loc1_;
      }
      
      private function _RentCollectorSideMenu_ProgressBarMini1_i() : ProgressBarMini
      {
         var _loc1_:ProgressBarMini = new ProgressBarMini();
         _loc1_.width = 40;
         _loc1_.revertProgress = true;
         _loc1_.id = "miniProgress";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.miniProgress = _loc1_;
         BindingManager.executeBindings(this,"miniProgress",this.miniProgress);
         return _loc1_;
      }
      
      private function _RentCollectorSideMenu_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = -250;
         _loc1_.top = -5;
         _loc1_.id = "menuContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.menuContainer = _loc1_;
         BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconBase() : BriskImageDynaLib
      {
         return this._738471190iconBase;
      }
      
      public function set iconBase(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._738471190iconBase;
         if(_loc2_ !== param1)
         {
            this._738471190iconBase = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconBase",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGroup() : Group
      {
         return this._1412649594iconGroup;
      }
      
      public function set iconGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1412649594iconGroup;
         if(_loc2_ !== param1)
         {
            this._1412649594iconGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get menuContainer() : Group
      {
         return this._1784090142menuContainer;
      }
      
      public function set menuContainer(param1:Group) : void
      {
         var _loc2_:Object = this._1784090142menuContainer;
         if(_loc2_ !== param1)
         {
            this._1784090142menuContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get miniProgress() : ProgressBarMini
      {
         return this._398457948miniProgress;
      }
      
      public function set miniProgress(param1:ProgressBarMini) : void
      {
         var _loc2_:Object = this._398457948miniProgress;
         if(_loc2_ !== param1)
         {
            this._398457948miniProgress = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniProgress",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc2_ !== param1)
         {
            this._1849499341plusIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rentCollectorIcon() : BriskImageDynaLib
      {
         return this._402978835rentCollectorIcon;
      }
      
      public function set rentCollectorIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._402978835rentCollectorIcon;
         if(_loc2_ !== param1)
         {
            this._402978835rentCollectorIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rentCollectorIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rentCollectorSparkleSprite() : SpriteVisualElement
      {
         return this._1397564793rentCollectorSparkleSprite;
      }
      
      public function set rentCollectorSparkleSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1397564793rentCollectorSparkleSprite;
         if(_loc2_ !== param1)
         {
            this._1397564793rentCollectorSparkleSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rentCollectorSparkleSprite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleIcon() : BriskImageDynaLib
      {
         return this._1935734112saleIcon;
      }
      
      public function set saleIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1935734112saleIcon;
         if(_loc2_ !== param1)
         {
            this._1935734112saleIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleIcon",_loc2_,param1));
            }
         }
      }
   }
}

