package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.LargeDetailComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailComponentNormalSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _399321045checkmark:BriskImageDynaLib;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _369455047permissionFeatureButton:DynamicImageButton;
      
      private var _1438451992permissionIcon:BriskImageDynaLib;
      
      private var _478644083sizeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailComponent;
      
      public function LargeDetailComponentNormalSkin()
      {
         super();
         mx_internal::_document = this;
         this.height = 250;
         this.mxmlContent = [this._LargeDetailComponentNormalSkin_Group1_c()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___LargeDetailComponentNormalSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         TweenMax.to(this.image,0,{"glowFilter":{
            "color":11462643,
            "alpha":1,
            "blurX":2,
            "blurY":2,
            "strength":20
         }});
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
      
      private function _LargeDetailComponentNormalSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._LargeDetailComponentNormalSkin_Group2_i(),this._LargeDetailComponentNormalSkin_BriskImageDynaLib3_i(),this._LargeDetailComponentNormalSkin_BriskImageDynaLib4_i(),this._LargeDetailComponentNormalSkin_LocaLabel2_i(),this._LargeDetailComponentNormalSkin_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = -15;
         _loc1_.mxmlContent = [this._LargeDetailComponentNormalSkin_StickyNoteComponent1_c()];
         _loc1_.id = "bottomStickerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomStickerComponent = _loc1_;
         BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 85;
         _loc1_.percentWidth = 90;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailComponentNormalSkin_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_Array5_c() : Array
      {
         return [this._LargeDetailComponentNormalSkin_DynamicImageButton1_i(),this._LargeDetailComponentNormalSkin_HGroup1_c()];
      }
      
      private function _LargeDetailComponentNormalSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.left = 0;
         _loc1_.top = -5;
         _loc1_.id = "permissionFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"permissionFeatureButton",this.permissionFeatureButton);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.maxWidth = 170;
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._LargeDetailComponentNormalSkin_BriskImageDynaLib1_i(),this._LargeDetailComponentNormalSkin_LocaLabel1_i(),this._LargeDetailComponentNormalSkin_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "permission_icon";
         _loc1_.id = "permissionIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionIcon = _loc1_;
         BindingManager.executeBindings(this,"permissionIcon",this.permissionIcon);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 75;
         _loc1_.styleName = "largeDetailComponentSubtextBig";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_green";
         _loc1_.id = "checkmark";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkmark = _loc1_;
         BindingManager.executeBindings(this,"checkmark",this.checkmark);
         return _loc1_;
      }
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _LargeDetailComponentNormalSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
      
      private function _LargeDetailComponentNormalSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 60;
         _loc1_.styleName = "fieldInfoSubHeader2";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 176;
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
      
      private function _LargeDetailComponentNormalSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
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
      
      public function ___LargeDetailComponentNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
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
      public function get checkmark() : BriskImageDynaLib
      {
         return this._399321045checkmark;
      }
      
      public function set checkmark(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._399321045checkmark;
         if(_loc2_ !== param1)
         {
            this._399321045checkmark = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
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
      public function get permissionFeatureButton() : DynamicImageButton
      {
         return this._369455047permissionFeatureButton;
      }
      
      public function set permissionFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._369455047permissionFeatureButton;
         if(_loc2_ !== param1)
         {
            this._369455047permissionFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionIcon() : BriskImageDynaLib
      {
         return this._1438451992permissionIcon;
      }
      
      public function set permissionIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1438451992permissionIcon;
         if(_loc2_ !== param1)
         {
            this._1438451992permissionIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionIcon",_loc2_,param1));
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

