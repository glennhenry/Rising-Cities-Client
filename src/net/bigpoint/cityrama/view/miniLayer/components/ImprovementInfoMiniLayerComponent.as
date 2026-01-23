package net.bigpoint.cityrama.view.miniLayer.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementInfoMiniLayerComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.TimerDisplayComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public class ImprovementInfoMiniLayerComponent extends Group
   {
      
      public static const IMPROVEMENT_OVER:String = "IMPROVEMENT_OVER";
      
      public static const IMPROVEMENT_OUT:String = "IMPROVEMENT_OUT";
      
      private var _358730216deleteImg:BriskImageDynaLib;
      
      private var _197464874improvement:BriskImageDynaLib;
      
      private var _417625436improvementBackground:BriskImageDynaLib;
      
      private var _927640467improvementBadge:BriskImageDynaLib;
      
      private var _922505399improvementGroup:Group;
      
      private var _1215755049nameLabel:LocaLabel;
      
      private var _1211893293smallLabel:LocaLabel;
      
      private var _431284669timerDisplay:TimerDisplayComponent;
      
      private var _801236846timerProgress:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementInfoMiniLayerComponentVo;
      
      private var _isDirty:Boolean;
      
      public function ImprovementInfoMiniLayerComponent()
      {
         super();
         mx_internal::_document = this;
         this.width = 410;
         this.height = 154;
         this.mxmlContent = [this._ImprovementInfoMiniLayerComponent_StickyNoteComponent1_c()];
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
            this.smallLabel.text = this._data.smallLabelText;
            this.improvementBackground.briskDynaVo = this._data.improvementBackground;
            this.improvement.briskDynaVo = this._data.improvementGfx;
            this.improvementBadge.briskDynaVo = this._data.improvementBadge;
            this.nameLabel.text = this._data.name;
            this.timerDisplay.visible = this.timerDisplay.includeInLayout = this._data.showTimerDisplay;
            this.timerProgress.visible = this.timerProgress.includeInLayout = !this._data.showTimerDisplay;
            if(this._data.showTimerDisplay)
            {
               this.timerDisplay.setData(this._data.timerDisplayVo);
            }
            else
            {
               this.timerProgress.data = this._data.harvestProgressVo;
            }
            this.deleteImg.includeInLayout = this.deleteImg.visible = this._data.showDelete;
            if(this._data.showDelete)
            {
               this.improvement.alpha = 0.7;
               TweenMax.to(this.improvement,0,{"colorMatrixFilter":{
                  "amount":1,
                  "saturation":0
               }});
            }
         }
      }
      
      private function handleImproMouseOver() : void
      {
         dispatchEvent(new Event(IMPROVEMENT_OVER,true));
      }
      
      private function handleImproMouseOut() : void
      {
         dispatchEvent(new Event(IMPROVEMENT_OUT,true));
      }
      
      public function set data(param1:ImprovementInfoMiniLayerComponentVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
         }
      }
      
      private function _ImprovementInfoMiniLayerComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 410;
         _loc1_.height = 154;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementInfoMiniLayerComponent_Array2_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_Array2_c() : Array
      {
         return [this._ImprovementInfoMiniLayerComponent_HGroup1_c()];
      }
      
      private function _ImprovementInfoMiniLayerComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 20;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_VGroup1_c(),this._ImprovementInfoMiniLayerComponent_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_Group2_i(),this._ImprovementInfoMiniLayerComponent_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib1_i(),this._ImprovementInfoMiniLayerComponent_HGroup2_c(),this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib3_i(),this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib4_i()];
         _loc1_.addEventListener("mouseOver",this.__improvementGroup_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__improvementGroup_mouseOut);
         _loc1_.id = "improvementGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementGroup = _loc1_;
         BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "hip_cardboard_small";
         _loc1_.id = "improvementBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementBackground = _loc1_;
         BindingManager.executeBindings(this,"improvementBackground",this.improvementBackground);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 118;
         _loc1_.width = 118;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "improvement";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvement = _loc1_;
         BindingManager.executeBindings(this,"improvement",this.improvement);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.left = 3;
         _loc1_.dynaBmpSourceName = "hip_badge_common_small";
         _loc1_.id = "improvementBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementBadge = _loc1_;
         BindingManager.executeBindings(this,"improvementBadge",this.improvementBadge);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "delete_indicator";
         _loc1_.right = -6;
         _loc1_.top = -6;
         _loc1_.id = "deleteImg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.deleteImg = _loc1_;
         BindingManager.executeBindings(this,"deleteImg",this.deleteImg);
         return _loc1_;
      }
      
      public function __improvementGroup_mouseOver(param1:MouseEvent) : void
      {
         this.handleImproMouseOver();
      }
      
      public function __improvementGroup_mouseOut(param1:MouseEvent) : void
      {
         this.handleImproMouseOut();
      }
      
      private function _ImprovementInfoMiniLayerComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 8;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 230;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 8;
         _loc1_.paddingTop = 8;
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_Group4_c(),this._ImprovementInfoMiniLayerComponent_LocaLabel2_i(),this._ImprovementInfoMiniLayerComponent_TimerDisplayComponent1_i(),this._ImprovementInfoMiniLayerComponent_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_Rect1_c(),this._ImprovementInfoMiniLayerComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.width = 218;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 30;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 30;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 30;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 30;
         _loc1_.height = 40;
         _loc1_.minHeight = 40;
         _loc1_.fill = this._ImprovementInfoMiniLayerComponent_RadialGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._ImprovementInfoMiniLayerComponent_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 40;
         _loc1_.width = 218;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementInfoMiniLayerComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "infoLayerTitle";
         _loc1_.id = "nameLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.nameLabel = _loc1_;
         BindingManager.executeBindings(this,"nameLabel",this.nameLabel);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxWidth = 218;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "smallLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.smallLabel = _loc1_;
         BindingManager.executeBindings(this,"smallLabel",this.smallLabel);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_TimerDisplayComponent1_i() : TimerDisplayComponent
      {
         var _loc1_:TimerDisplayComponent = new TimerDisplayComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "timerDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerDisplay = _loc1_;
         BindingManager.executeBindings(this,"timerDisplay",this.timerDisplay);
         return _loc1_;
      }
      
      private function _ImprovementInfoMiniLayerComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.width = 181;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.revertFlow = true;
         _loc1_.id = "timerProgress";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerProgress = _loc1_;
         BindingManager.executeBindings(this,"timerProgress",this.timerProgress);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get deleteImg() : BriskImageDynaLib
      {
         return this._358730216deleteImg;
      }
      
      public function set deleteImg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._358730216deleteImg;
         if(_loc2_ !== param1)
         {
            this._358730216deleteImg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteImg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvement() : BriskImageDynaLib
      {
         return this._197464874improvement;
      }
      
      public function set improvement(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._197464874improvement;
         if(_loc2_ !== param1)
         {
            this._197464874improvement = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvement",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementBackground() : BriskImageDynaLib
      {
         return this._417625436improvementBackground;
      }
      
      public function set improvementBackground(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._417625436improvementBackground;
         if(_loc2_ !== param1)
         {
            this._417625436improvementBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementBadge() : BriskImageDynaLib
      {
         return this._927640467improvementBadge;
      }
      
      public function set improvementBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._927640467improvementBadge;
         if(_loc2_ !== param1)
         {
            this._927640467improvementBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementBadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementGroup() : Group
      {
         return this._922505399improvementGroup;
      }
      
      public function set improvementGroup(param1:Group) : void
      {
         var _loc2_:Object = this._922505399improvementGroup;
         if(_loc2_ !== param1)
         {
            this._922505399improvementGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel() : LocaLabel
      {
         return this._1215755049nameLabel;
      }
      
      public function set nameLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1215755049nameLabel;
         if(_loc2_ !== param1)
         {
            this._1215755049nameLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get smallLabel() : LocaLabel
      {
         return this._1211893293smallLabel;
      }
      
      public function set smallLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1211893293smallLabel;
         if(_loc2_ !== param1)
         {
            this._1211893293smallLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerDisplay() : TimerDisplayComponent
      {
         return this._431284669timerDisplay;
      }
      
      public function set timerDisplay(param1:TimerDisplayComponent) : void
      {
         var _loc2_:Object = this._431284669timerDisplay;
         if(_loc2_ !== param1)
         {
            this._431284669timerDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerProgress() : TimerBarComponent
      {
         return this._801236846timerProgress;
      }
      
      public function set timerProgress(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._801236846timerProgress;
         if(_loc2_ !== param1)
         {
            this._801236846timerProgress = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerProgress",_loc2_,param1));
            }
         }
      }
   }
}

