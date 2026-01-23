package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.LargeDetailComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailComponentNoPermissionAvailableSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _478644083sizeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailComponent;
      
      public function LargeDetailComponentNoPermissionAvailableSkin()
      {
         super();
         mx_internal::_document = this;
         this.height = 250;
         this.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_Group1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"itemLabel",
               "name":"styleName",
               "value":"orangeThirteenCenter"
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"premium",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"itemLabel",
               "name":"styleName",
               "value":"orangeThirteenCenter"
            }),new SetProperty().initializeFromObject({
               "target":"backgroundPrint",
               "name":"dynaBmpSourceName",
               "value":"architect_goldprint_big"
            })]
         }),new State({
            "name":"unlimited",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"itemLabel",
               "name":"styleName",
               "value":"blueThirteenCenter"
            }),new SetProperty().initializeFromObject({
               "target":"backgroundPrint",
               "name":"dynaBmpSourceName",
               "value":"architect_blueprint_big"
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.bottomStickerComponent)
         {
            if(this.hostComponent.showBottomSticker)
            {
               this.bottomStickerComponent.includeInLayout = true;
               this.bottomStickerComponent.visible = true;
            }
            else
            {
               this.bottomStickerComponent.includeInLayout = false;
               this.bottomStickerComponent.visible = false;
            }
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         super.setCurrentState(param1,param2);
         if(param1 == "premium")
         {
            TweenMax.to(this.image,0,{"glowFilter":{
               "color":15984814,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
         }
         else
         {
            TweenMax.to(this.image,0,{"glowFilter":{
               "color":11462643,
               "alpha":1,
               "blurX":2,
               "blurY":2,
               "strength":20
            }});
         }
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_Group2_i(),this._LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib1_i(),this._LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib2_i(),this._LargeDetailComponentNoPermissionAvailableSkin_LocaLabel2_i(),this._LargeDetailComponentNoPermissionAvailableSkin_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = -15;
         _loc1_.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_StickyNoteComponent1_c()];
         _loc1_.id = "bottomStickerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomStickerComponent = _loc1_;
         BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 85;
         _loc1_.percentWidth = 90;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentNoPermissionAvailableSkin_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentNoPermissionAvailableSkin_VGroup1_c()];
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._LargeDetailComponentNoPermissionAvailableSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 180;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 6;
         _loc1_.dynaBmpSourceName = "architect_blueprint_big";
         _loc1_.id = "backgroundPrint";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backgroundPrint = _loc1_;
         BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = -12;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 60;
         _loc1_.styleName = "fieldInfoSubHeader2";
         _loc1_.top = 176;
         _loc1_.right = 20;
         _loc1_.text = "3x3";
         _loc1_.id = "sizeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sizeLabel = _loc1_;
         BindingManager.executeBindings(this,"sizeLabel",this.sizeLabel);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNoPermissionAvailableSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(_loc2_ !== param1)
         {
            this._1299216927backgroundPrint = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomStickerComponent() : Group
      {
         return this._1277980811bottomStickerComponent;
      }
      
      public function set bottomStickerComponent(param1:Group) : void
      {
         var _loc2_:Object = this._1277980811bottomStickerComponent;
         if(_loc2_ !== param1)
         {
            this._1277980811bottomStickerComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomStickerComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc2_ !== param1)
         {
            this._2135689121itemLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sizeLabel() : LocaLabel
      {
         return this._478644083sizeLabel;
      }
      
      public function set sizeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._478644083sizeLabel;
         if(_loc2_ !== param1)
         {
            this._478644083sizeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sizeLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : LargeDetailComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:LargeDetailComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

