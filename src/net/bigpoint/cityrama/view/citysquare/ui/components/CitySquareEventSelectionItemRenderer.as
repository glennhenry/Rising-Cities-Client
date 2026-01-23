package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.EventSelectionVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class CitySquareEventSelectionItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const ITEM_CLICKED:String = "ITEMCLICKED";
      
      private var _396715431availabilityLabel:LocaLabel;
      
      private var _15876775blueBar:BlueBarComponent;
      
      private var _221873225bottomPostitGroup:Group;
      
      private var _669363565eventHeaderLabel:LocaLabel;
      
      private var _31082035eventIcon:BriskImageDynaLib;
      
      private var _963827425eventImage:BriskImageDynaLib;
      
      private var _1161933810headerGroup:Group;
      
      private var _924938225lockedGfx:BriskImageDynaLib;
      
      private var _1950311277mainPartGroup:Group;
      
      private var _2085991647polaroidframe:BriskImageDynaLib;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _1574849497timerBarIcon:BriskImageDynaLib;
      
      private var _1639236154timerGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dirty:Boolean;
      
      private var _data:EventSelectionVo;
      
      public function CitySquareEventSelectionItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 205;
         this.width = 205;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._CitySquareEventSelectionItemRenderer_VGroup1_c()];
         this.currentState = "normal";
         this.addEventListener("removedFromStage",this.___CitySquareEventSelectionItemRenderer_ItemRenderer1_removedFromStage);
         this.addEventListener("click",this.___CitySquareEventSelectionItemRenderer_ItemRenderer1_click);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"bottomPostitGroup",
               "name":"top",
               "value":242
            }),new SetProperty().initializeFromObject({
               "target":"mainPartGroup",
               "name":"top",
               "value":32
            })]
         })];
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
         if(param1 is EventSelectionVo)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               super.data = param1;
               this._dirty = true;
               this._data = param1 as EventSelectionVo;
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         if(this._data != null && this._dirty)
         {
            this._dirty = false;
            TweenMax.killDelayedCallsTo(this.updateTimer);
            var _temp_2:* = this;
            this.mouseChildren = true;
            _temp_2.mouseEnabled = true;
            if(this._data.state != EventSelectionVo.EMPTY_SLOT)
            {
               this.eventImage.dynaSWFFileName = this._data.gfxPackId.toString();
               this.eventImage.dynaLibName = this._data.gfxPackId.toString() + "_gui_popup_events";
               this.eventImage.dynaBmpSourceName = "preview";
               this.eventImage.filters = [];
               var _temp_3:* = this.lockedGfx;
               var _loc1_:*;
               this.lockedGfx.visible = _loc1_ = false;
               _temp_3.includeInLayout = true;
            }
            _loc1_ = this._data.state;
            switch(true)
            {
               case EventSelectionVo.STATE_RUNNING:
                  this.eventHeaderLabel.text = LocaUtils.getString("rcl.citysquarequests." + this._data.localePackId,"rcl.citysquarequests." + this._data.localePackId + ".layer.name");
                  this.eventIcon.dynaBmpSourceName = "quest_bubble_icon_trophy";
                  this.eventIcon.dynaLibName = "gui_ui_questSide";
                  this.timerBarIcon.dynaLibName = "gui_popup_citysquare_general";
                  this.timerBarIcon.dynaBmpSourceName = "trophy_small";
                  this.availabilityLabel.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.running");
                  this.availabilityLabel.maxDisplayedLines = 1;
                  this.progressBar.progress = this._data.currentProgress;
                  this.progressBar.label = Math.floor(this._data.currentProgress * 100) + "%";
                  this.progressBar.barColours = ProgressBarComponent.YELLOW_BAR;
                  var _temp_4:* = this.timerGroup;
                  this.timerGroup.visible = _loc1_ = true;
                  _temp_4.includeInLayout = true;
                  break;
               case EventSelectionVo.STATE_AVAILABLE:
                  this.timerBarIcon.dynaLibName = "gui_popups_residentialPopup";
                  this.timerBarIcon.dynaBmpSourceName = "timer_clock";
                  this.eventHeaderLabel.text = LocaUtils.getString("rcl.citysquarequests." + this._data.localePackId,"rcl.citysquarequests." + this._data.localePackId + ".layer.name");
                  this.eventIcon.dynaLibName = "gui_popups_paperPopup";
                  this.eventIcon.dynaBmpSourceName = "new_icon";
                  var _temp_5:* = this.eventIcon;
                  this.eventIcon.visible = _loc1_ = true;
                  _temp_5.includeInLayout = true;
                  this.availabilityLabel.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.available");
                  this.availabilityLabel.maxDisplayedLines = 1;
                  this.setTimer();
                  TweenMax.delayedCall(1,this.updateTimer);
                  this.progressBar.barColours = ProgressBarComponent.BLUE_BAR;
                  var _temp_6:* = this.timerGroup;
                  this.timerGroup.visible = _loc1_ = true;
                  _temp_6.includeInLayout = true;
                  break;
               case EventSelectionVo.STATE_UPCOMING:
                  this.eventHeaderLabel.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.upcomming.header");
                  this.eventIcon.dynaLibName = "gui_popups_paperPopup";
                  this.eventIcon.dynaBmpSourceName = "architect_icon_blocked";
                  var _temp_7:* = this.eventIcon;
                  this.eventIcon.visible = _loc1_ = true;
                  _temp_7.includeInLayout = true;
                  this.availabilityLabel.text = this.upcomingText;
                  this.availabilityLabel.maxDisplayedLines = 4;
                  var _temp_8:* = this;
                  this.mouseChildren = _loc1_ = false;
                  _temp_8.mouseEnabled = true;
                  TweenMax.to(this.eventImage,0,{"colorMatrixFilter":{
                     "colorize":12960173,
                     "amount":1,
                     "saturation":0,
                     "brightness":2,
                     "hue":30
                  }});
                  var _temp_9:* = this.timerGroup;
                  this.timerGroup.visible = _loc1_ = false;
                  _temp_9.includeInLayout = true;
                  break;
               case EventSelectionVo.EMPTY_SLOT:
                  var _temp_10:* = this.eventIcon;
                  this.eventIcon.visible = _loc1_ = false;
                  _temp_10.includeInLayout = true;
                  this.eventHeaderLabel.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.empty.header");
                  this.eventImage.dynaSWFFileName = null;
                  this.eventImage.dynaLibName = "gui_popup_citysquare_general";
                  this.eventImage.dynaBmpSourceName = "no_event_polaroid";
                  this.availabilityLabel.text = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.empty");
                  this.availabilityLabel.maxDisplayedLines = 4;
                  var _temp_11:* = this.timerGroup;
                  this.timerGroup.visible = _loc1_ = false;
                  _temp_11.includeInLayout = true;
                  var _temp_12:* = this.lockedGfx;
                  this.lockedGfx.visible = _loc1_ = true;
                  _temp_12.includeInLayout = true;
                  var _temp_13:* = this;
                  this.mouseChildren = _loc1_ = false;
                  _temp_13.mouseEnabled = true;
                  break;
               default:
                  throw new RamaCityError(this + "unknown state: " + this._data.state);
            }
         }
         super.commitProperties();
      }
      
      private function updateTimer() : void
      {
         this._data.remainingTime -= 1000;
         this.setTimer();
         TweenMax.delayedCall(1,this.updateTimer);
      }
      
      private function setTimer() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Number = NaN;
         if(this._data)
         {
            _loc1_ = LocaUtils.getDaysFromSeconds(this._data.remainingTime / 1000);
            if(_loc1_ >= 2)
            {
               _loc2_ = LocaUtils.getExactDaysFromSecond(this._data.remainingTime / 1000);
               if(_loc1_ - _loc2_ < 0)
               {
                  this.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[">" + _loc1_]);
               }
               else
               {
                  this.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]);
               }
            }
            else
            {
               this.progressBar.label = LocaUtils.getDuration(this._data.remainingTime / 1000);
            }
            this.progressBar.progress = this._data.currentProgress;
         }
      }
      
      public function get eventQuestId() : Number
      {
         return this._data.configId;
      }
      
      private function get upcomingText() : String
      {
         var _loc1_:String = "";
         if(LocaUtils.getDaysFromSeconds(this._data.remainingTime / 1000) > 1)
         {
            _loc1_ = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.upcomming.days",[LocaUtils.getDaysFromSeconds(this._data.remainingTime / 1000)]);
         }
         else if(LocaUtils.getHoursFromSeconds(this._data.remainingTime / 1000) > 1)
         {
            _loc1_ = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.upcomming.hours",[LocaUtils.getHoursFromSeconds(this._data.remainingTime / 1000)]);
         }
         else
         {
            _loc1_ = LocaUtils.getString("rcl.citysquare.questselection","rcl.citysquare.questselection.state.upcomming.underonehourleft");
         }
         if(_loc1_ == "")
         {
            throw new RamaCityError(this + "invalid time left? ms:" + this._data.remainingTime);
         }
         return _loc1_;
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         if(this._data)
         {
            if(this._data.state != EventSelectionVo.STATE_UPCOMING && this._data.state != EventSelectionVo.EMPTY_SLOT)
            {
               dispatchEvent(new Event(ITEM_CLICKED,true));
            }
         }
      }
      
      private function onRemoved(param1:Event) : void
      {
         TweenMax.killDelayedCallsTo(this.updateTimer);
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      private function _CitySquareEventSelectionItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_Group2_i(),this._CitySquareEventSelectionItemRenderer_Group3_i(),this._CitySquareEventSelectionItemRenderer_Group4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 190;
         _loc1_.height = 30;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_BlueBarComponent1_i(),this._CitySquareEventSelectionItemRenderer_VGroup2_c()];
         _loc1_.id = "headerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerGroup = _loc1_;
         BindingManager.executeBindings(this,"headerGroup",this.headerGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BlueBarComponent1_i() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "blueBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blueBar = _loc1_;
         BindingManager.executeBindings(this,"blueBar",this.blueBar);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "emergencyComingSoonBarLabel";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 90;
         _loc1_.id = "eventHeaderLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventHeaderLabel = _loc1_;
         BindingManager.executeBindings(this,"eventHeaderLabel",this.eventHeaderLabel);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 84;
         _loc1_.width = 185;
         _loc1_.top = 244;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_StickyNoteComponent1_c()];
         _loc1_.id = "bottomPostitGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomPostitGroup = _loc1_;
         BindingManager.executeBindings(this,"bottomPostitGroup",this.bottomPostitGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventSelectionItemRenderer_Array8_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_Array8_c() : Array
      {
         return [this._CitySquareEventSelectionItemRenderer_VGroup3_c()];
      }
      
      private function _CitySquareEventSelectionItemRenderer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 3;
         _loc1_.height = 44;
         _loc1_.top = -6;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_LocaLabel2_i(),this._CitySquareEventSelectionItemRenderer_HGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 96;
         _loc1_.styleName = "flavorText";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "availabilityLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.availabilityLabel = _loc1_;
         BindingManager.executeBindings(this,"availabilityLabel",this.availabilityLabel);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 130;
         _loc1_.maxWidth = 130;
         _loc1_.gap = 4;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib1_i(),this._CitySquareEventSelectionItemRenderer_ProgressBarComponent1_i()];
         _loc1_.id = "timerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerGroup = _loc1_;
         BindingManager.executeBindings(this,"timerGroup",this.timerGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "timer_clock";
         _loc1_.id = "timerBarIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerBarIcon = _loc1_;
         BindingManager.executeBindings(this,"timerBarIcon",this.timerBarIcon);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         _loc1_.width = 100;
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 34;
         _loc1_.mxmlContent = [this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib2_i(),this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib3_i(),this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib4_i(),this._CitySquareEventSelectionItemRenderer_BriskImageDynaLib5_i()];
         _loc1_.id = "mainPartGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainPartGroup = _loc1_;
         BindingManager.executeBindings(this,"mainPartGroup",this.mainPartGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "polaroidframe";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidframe = _loc1_;
         BindingManager.executeBindings(this,"polaroidframe",this.polaroidframe);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 211;
         _loc1_.width = 169;
         _loc1_.top = 9;
         _loc1_.horizontalCenter = -1;
         _loc1_.id = "eventImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventImage = _loc1_;
         BindingManager.executeBindings(this,"eventImage",this.eventImage);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 90;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "locked_gfx";
         _loc1_.id = "lockedGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockedGfx = _loc1_;
         BindingManager.executeBindings(this,"lockedGfx",this.lockedGfx);
         return _loc1_;
      }
      
      private function _CitySquareEventSelectionItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = -5;
         _loc1_.top = -4;
         _loc1_.id = "eventIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventIcon = _loc1_;
         BindingManager.executeBindings(this,"eventIcon",this.eventIcon);
         return _loc1_;
      }
      
      public function ___CitySquareEventSelectionItemRenderer_ItemRenderer1_removedFromStage(param1:Event) : void
      {
         this.onRemoved(param1);
      }
      
      public function ___CitySquareEventSelectionItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.onClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get availabilityLabel() : LocaLabel
      {
         return this._396715431availabilityLabel;
      }
      
      public function set availabilityLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._396715431availabilityLabel;
         if(_loc2_ !== param1)
         {
            this._396715431availabilityLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"availabilityLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blueBar() : BlueBarComponent
      {
         return this._15876775blueBar;
      }
      
      public function set blueBar(param1:BlueBarComponent) : void
      {
         var _loc2_:Object = this._15876775blueBar;
         if(_loc2_ !== param1)
         {
            this._15876775blueBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomPostitGroup() : Group
      {
         return this._221873225bottomPostitGroup;
      }
      
      public function set bottomPostitGroup(param1:Group) : void
      {
         var _loc2_:Object = this._221873225bottomPostitGroup;
         if(_loc2_ !== param1)
         {
            this._221873225bottomPostitGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomPostitGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventHeaderLabel() : LocaLabel
      {
         return this._669363565eventHeaderLabel;
      }
      
      public function set eventHeaderLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._669363565eventHeaderLabel;
         if(_loc2_ !== param1)
         {
            this._669363565eventHeaderLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventHeaderLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventIcon() : BriskImageDynaLib
      {
         return this._31082035eventIcon;
      }
      
      public function set eventIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._31082035eventIcon;
         if(_loc2_ !== param1)
         {
            this._31082035eventIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventImage() : BriskImageDynaLib
      {
         return this._963827425eventImage;
      }
      
      public function set eventImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._963827425eventImage;
         if(_loc2_ !== param1)
         {
            this._963827425eventImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventImage",_loc2_,param1));
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
      public function get lockedGfx() : BriskImageDynaLib
      {
         return this._924938225lockedGfx;
      }
      
      public function set lockedGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._924938225lockedGfx;
         if(_loc2_ !== param1)
         {
            this._924938225lockedGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainPartGroup() : Group
      {
         return this._1950311277mainPartGroup;
      }
      
      public function set mainPartGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1950311277mainPartGroup;
         if(_loc2_ !== param1)
         {
            this._1950311277mainPartGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainPartGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidframe() : BriskImageDynaLib
      {
         return this._2085991647polaroidframe;
      }
      
      public function set polaroidframe(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2085991647polaroidframe;
         if(_loc2_ !== param1)
         {
            this._2085991647polaroidframe = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidframe",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerBarIcon() : BriskImageDynaLib
      {
         return this._1574849497timerBarIcon;
      }
      
      public function set timerBarIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1574849497timerBarIcon;
         if(_loc2_ !== param1)
         {
            this._1574849497timerBarIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerBarIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerGroup() : HGroup
      {
         return this._1639236154timerGroup;
      }
      
      public function set timerGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1639236154timerGroup;
         if(_loc2_ !== param1)
         {
            this._1639236154timerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerGroup",_loc2_,param1));
            }
         }
      }
   }
}

