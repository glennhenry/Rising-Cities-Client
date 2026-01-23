package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flashx.textLayout.conversion.TextConverter;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponentMultiline;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class MysteryConstructionMiniLayer extends MiniLayerWindow
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
      
      private var _505916676finishConstruction:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _391232536postIts:HGroup;
      
      private var _110364485timer:TimerBarComponent;
      
      private var _500208440timerComponent:StickyNoteComponent;
      
      private var _707097038timerHeader:PostitHeaderComponentMultiline;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _constructionData:ConstructionMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function MysteryConstructionMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MysteryConstructionMiniLayer_Array1_c);
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
         var _loc1_:TimerBarComponentVo = null;
         super.commitProperties();
         if(this._constructionData)
         {
            this.setTapes();
            this.title = LocaUtils.getString("rcl.miniLayer.mysteryConstruction","rcl.miniLayer.mysteryConstruction.title");
            this.flavourText.textFlow = TextConverter.importToFlow(LocaUtils.getString("rcl.miniLayer.mysteryConstruction","rcl.miniLayer.mysteryConstruction.flavour"),TextConverter.TEXT_FIELD_HTML_FORMAT);
            this.timerHeader.text = LocaUtils.getString("rcl.miniLayer.mysteryConstruction","rcl.miniLayer.mysteryConstruction.time");
            _loc1_ = new TimerBarComponentVo();
            _loc1_.startTime = this._constructionData.constructionStepEndTime - this._constructionData.constructionStepLength;
            _loc1_.currentTime = this._constructionData.constructionCurrentTime;
            _loc1_.targetTime = this._constructionData.constructionStepEndTime;
            _loc1_.cycleLength = this._constructionData.constructionStepLength;
            _loc1_.waitingForStart = !this._constructionData.hasStarted;
            _loc1_.userMayStart = true;
            this.timer.data = _loc1_;
            this.timerComponent.tapeLeft = true;
            this.finishConstruction.label = LocaUtils.getThousendSeperatedNumber(this._constructionData.realCurrencyCosts);
            this.setTooltips();
            this._isDirty = false;
         }
      }
      
      private function setTooltips() : void
      {
         this.timer.progressBar.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.mysteryConstruction.timer"));
      }
      
      public function setData(param1:ConstructionMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._constructionData))
         {
            this._isDirty = true;
            this._constructionData = param1;
            this.invalidateProperties();
         }
      }
      
      private function setTapes() : void
      {
         this.timerComponent.rightTape.setStyle("top",20);
         this.timerComponent.rightTape.setStyle("bottom",20);
         this.timerComponent.leftTape.setStyle("top",10);
         this.timerComponent.leftTape.setStyle("bottom",10);
      }
      
      private function _MysteryConstructionMiniLayer_Array1_c() : Array
      {
         return [this._MysteryConstructionMiniLayer_VGroup1_i()];
      }
      
      private function _MysteryConstructionMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 10;
         _loc1_.paddingBottom = 45;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -20;
         _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_LocaLabel1_i(),this._MysteryConstructionMiniLayer_HGroup1_i(),this._MysteryConstructionMiniLayer_Group1_c(),this._MysteryConstructionMiniLayer_HGroup2_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.height = 45;
         _loc1_.percentWidth = 85;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 170;
         _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_StickyNoteComponent1_i()];
         _loc1_.id = "postIts";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.postIts = _loc1_;
         BindingManager.executeBindings(this,"postIts",this.postIts);
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 240;
         _loc1_.height = 125;
         _loc1_.tapeRight = true;
         _loc1_.tapeLeft = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._MysteryConstructionMiniLayer_Array4_c);
         _loc1_.id = "timerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerComponent = _loc1_;
         BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_Array4_c() : Array
      {
         return [this._MysteryConstructionMiniLayer_VGroup2_c()];
      }
      
      private function _MysteryConstructionMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.height = 110;
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_PostitHeaderComponentMultiline1_i(),this._MysteryConstructionMiniLayer_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         _loc1_.id = "timerHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerHeader = _loc1_;
         BindingManager.executeBindings(this,"timerHeader",this.timerHeader);
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.id = "timer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timer = _loc1_;
         BindingManager.executeBindings(this,"timer",this.timer);
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 25;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 6;
         _loc1_.mxmlContent = [this._MysteryConstructionMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MysteryConstructionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "dd_button_icon";
         _loc1_.libNameLeft = "gui_resources_icons";
         _loc1_.id = "finishConstruction";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.finishConstruction = _loc1_;
         BindingManager.executeBindings(this,"finishConstruction",this.finishConstruction);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get finishConstruction() : MultistateButton
      {
         return this._505916676finishConstruction;
      }
      
      public function set finishConstruction(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._505916676finishConstruction;
         if(_loc2_ !== param1)
         {
            this._505916676finishConstruction = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishConstruction",_loc2_,param1));
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
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
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
      public function get postIts() : HGroup
      {
         return this._391232536postIts;
      }
      
      public function set postIts(param1:HGroup) : void
      {
         var _loc2_:Object = this._391232536postIts;
         if(_loc2_ !== param1)
         {
            this._391232536postIts = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"postIts",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timer() : TimerBarComponent
      {
         return this._110364485timer;
      }
      
      public function set timer(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._110364485timer;
         if(_loc2_ !== param1)
         {
            this._110364485timer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerComponent() : StickyNoteComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._500208440timerComponent;
         if(_loc2_ !== param1)
         {
            this._500208440timerComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerHeader() : PostitHeaderComponentMultiline
      {
         return this._707097038timerHeader;
      }
      
      public function set timerHeader(param1:PostitHeaderComponentMultiline) : void
      {
         var _loc2_:Object = this._707097038timerHeader;
         if(_loc2_ !== param1)
         {
            this._707097038timerHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerHeader",_loc2_,param1));
            }
         }
      }
   }
}

