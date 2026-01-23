package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EmergencyTimeUpMiniLayer extends MiniLayerWindow
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
      
      private var _1853377972emergencyFailImage:BriskImageDynaLib;
      
      private var _2086709339explanationLabel:LocaLabel;
      
      private var _3387378note:StickyNoteComponent;
      
      private var _1641788370okButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyTimeUpMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function EmergencyTimeUpMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyTimeUpMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___EmergencyTimeUpMiniLayer_MiniLayerWindow1_creationComplete);
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
            this.title = this._data.title;
            this.emergencyFailImage.dynaSWFFileName = this._data.emergencySWFName;
            this.emergencyFailImage.dynaLibName = this._data.emergencyLibName;
            this.emergencyFailImage.dynaBmpSourceName = this._data.emergencyBmpName;
            this.explanationLabel.text = this._data.explanationText;
            this.okButton.label = this._data.buttonLabel;
         }
      }
      
      public function setData(param1:EmergencyTimeUpMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.note.topTape.setStyle("left",60);
         this.note.topTape.setStyle("right",60);
      }
      
      private function onButtonClick() : void
      {
         dispatchEvent(new Event("buttonClose",true));
      }
      
      private function _EmergencyTimeUpMiniLayer_Array1_c() : Array
      {
         return [this._EmergencyTimeUpMiniLayer_HGroup1_c()];
      }
      
      private function _EmergencyTimeUpMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 25;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_Group1_c(),this._EmergencyTimeUpMiniLayer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_BriskImageDynaLib1_c(),this._EmergencyTimeUpMiniLayer_BriskImageDynaLib2_i(),this._EmergencyTimeUpMiniLayer_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 9;
         _loc1_.left = 10;
         _loc1_.id = "emergencyFailImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyFailImage = _loc1_;
         BindingManager.executeBindings(this,"emergencyFailImage",this.emergencyFailImage);
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = -6;
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 80;
         _loc1_.height = 24;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 265;
         _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 5;
         _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_Group3_c(),this._EmergencyTimeUpMiniLayer_Group4_c(),this._EmergencyTimeUpMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 15;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_StickyNoteComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 242;
         _loc1_.height = 160;
         _loc1_.tapeTop = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyTimeUpMiniLayer_Array7_c);
         _loc1_.id = "note";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.note = _loc1_;
         BindingManager.executeBindings(this,"note",this.note);
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_Array7_c() : Array
      {
         return [this._EmergencyTimeUpMiniLayer_BriskImageDynaLib3_c(),this._EmergencyTimeUpMiniLayer_VGroup2_c()];
      }
      
      private function _EmergencyTimeUpMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_demolish";
         _loc1_.top = -30;
         _loc1_.left = -15;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 200;
         _loc1_.height = 150;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalCenter = -5;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencyTimeUpMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxWidth = 200;
         _loc1_.maxDisplayedLines = 6;
         _loc1_.id = "explanationLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.explanationLabel = _loc1_;
         BindingManager.executeBindings(this,"explanationLabel",this.explanationLabel);
         return _loc1_;
      }
      
      private function _EmergencyTimeUpMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.addEventListener("click",this.__okButton_click);
         _loc1_.id = "okButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.okButton = _loc1_;
         BindingManager.executeBindings(this,"okButton",this.okButton);
         return _loc1_;
      }
      
      public function __okButton_click(param1:MouseEvent) : void
      {
         this.onButtonClick();
      }
      
      public function ___EmergencyTimeUpMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyFailImage() : BriskImageDynaLib
      {
         return this._1853377972emergencyFailImage;
      }
      
      public function set emergencyFailImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1853377972emergencyFailImage;
         if(_loc2_ !== param1)
         {
            this._1853377972emergencyFailImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyFailImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get explanationLabel() : LocaLabel
      {
         return this._2086709339explanationLabel;
      }
      
      public function set explanationLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2086709339explanationLabel;
         if(_loc2_ !== param1)
         {
            this._2086709339explanationLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"explanationLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get note() : StickyNoteComponent
      {
         return this._3387378note;
      }
      
      public function set note(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._3387378note;
         if(_loc2_ !== param1)
         {
            this._3387378note = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"note",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1641788370okButton;
         if(_loc2_ !== param1)
         {
            this._1641788370okButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
            }
         }
      }
   }
}

