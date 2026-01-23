package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendLevelStarComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.LargeDetailFriendComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.event.Friend_Action_Event;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class LargeDetailFriendComponentNormalSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1277980811bottomStickerComponent:Group;
      
      private var _1245745987deleteButton:DynamicImageButton;
      
      private var _2096547611friendLevelStarComponent:FriendLevelStarComponent;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:LargeDetailFriendComponent;
      
      public function LargeDetailFriendComponentNormalSkin()
      {
         super();
         mx_internal::_document = this;
         this.height = 250;
         this.measuredHeight = 240;
         this.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_Group1_c()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___LargeDetailFriendComponentNormalSkin_SparkSkin1_creationComplete);
         this.addEventListener("addedToStage",this.___LargeDetailFriendComponentNormalSkin_SparkSkin1_addedToStage);
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
      
      private function enableVisuals() : void
      {
         this.deleteButton.visible = true;
         this.deleteButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.removefriend"));
         this.friendLevelStarComponent.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.level"));
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
      
      private function deleteCall() : void
      {
         var _loc1_:Friend_Action_Event = new Friend_Action_Event(Friend_Action_Event.CANCEL_FRIEND_EVENT,true);
         _loc1_.friendVo = this.hostComponent.data as FriendVo;
         dispatchEvent(_loc1_);
         this.deleteButton.visible = false;
      }
      
      override protected function measure() : void
      {
         super.measure();
         this.deleteButton.measuredWidth = 0;
         this.deleteButton.measuredHeight = 0;
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
      
      private function _LargeDetailFriendComponentNormalSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_Group2_i(),this._LargeDetailFriendComponentNormalSkin_BriskImageDynaLib1_i(),this._LargeDetailFriendComponentNormalSkin_BriskImageDynaLib2_i(),this._LargeDetailFriendComponentNormalSkin_FriendLevelStarComponent1_i(),this._LargeDetailFriendComponentNormalSkin_DynamicImageButton1_i(),this._LargeDetailFriendComponentNormalSkin_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 2;
         _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_StickyNoteComponent1_c()];
         _loc1_.id = "bottomStickerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomStickerComponent = _loc1_;
         BindingManager.executeBindings(this,"bottomStickerComponent",this.bottomStickerComponent);
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 75;
         _loc1_.percentWidth = 90;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LargeDetailFriendComponentNormalSkin_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalSkin_Array5_c() : Array
      {
         return [this._LargeDetailFriendComponentNormalSkin_HGroup1_c()];
      }
      
      private function _LargeDetailFriendComponentNormalSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 4;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._LargeDetailFriendComponentNormalSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.bottom = 0;
         _loc1_.width = 180;
         _loc1_.maxWidth = 180;
         _loc1_.styleName = "largeDetailFriendComponentSubtextBig";
         _loc1_.text = "text text";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 6;
         _loc1_.dynaBmpSourceName = "polaroid_friend_big";
         _loc1_.id = "backgroundPrint";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backgroundPrint = _loc1_;
         BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _LargeDetailFriendComponentNormalSkin_FriendLevelStarComponent1_i() : FriendLevelStarComponent
      {
         var _loc1_:FriendLevelStarComponent = new FriendLevelStarComponent();
         _loc1_.top = 6;
         _loc1_.left = 10;
         _loc1_.id = "friendLevelStarComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.friendLevelStarComponent = _loc1_;
         BindingManager.executeBindings(this,"friendLevelStarComponent",this.friendLevelStarComponent);
         return _loc1_;
      }
      
      private function _LargeDetailFriendComponentNormalSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "deleteButton";
         _loc1_.right = 39;
         _loc1_.top = -2;
         _loc1_.addEventListener("mouseUp",this.__deleteButton_mouseUp);
         _loc1_.id = "deleteButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.deleteButton = _loc1_;
         BindingManager.executeBindings(this,"deleteButton",this.deleteButton);
         return _loc1_;
      }
      
      public function __deleteButton_mouseUp(param1:MouseEvent) : void
      {
         this.deleteCall();
      }
      
      private function _LargeDetailFriendComponentNormalSkin_BriskMCDynaLib1_c() : BriskMCDynaLib
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
      
      public function ___LargeDetailFriendComponentNormalSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      public function ___LargeDetailFriendComponentNormalSkin_SparkSkin1_addedToStage(param1:Event) : void
      {
         this.enableVisuals();
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
      public function get deleteButton() : DynamicImageButton
      {
         return this._1245745987deleteButton;
      }
      
      public function set deleteButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1245745987deleteButton;
         if(_loc2_ !== param1)
         {
            this._1245745987deleteButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deleteButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get friendLevelStarComponent() : FriendLevelStarComponent
      {
         return this._2096547611friendLevelStarComponent;
      }
      
      public function set friendLevelStarComponent(param1:FriendLevelStarComponent) : void
      {
         var _loc2_:Object = this._2096547611friendLevelStarComponent;
         if(_loc2_ !== param1)
         {
            this._2096547611friendLevelStarComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendLevelStarComponent",_loc2_,param1));
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
      public function get hostComponent() : LargeDetailFriendComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:LargeDetailFriendComponent) : void
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

