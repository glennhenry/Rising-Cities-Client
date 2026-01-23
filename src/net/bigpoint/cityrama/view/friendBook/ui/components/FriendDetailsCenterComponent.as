package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.friends.vo.CenterItemFriendDataVo;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class FriendDetailsCenterComponent extends Group
   {
      
      private var _1161660680centerItem:LargeDetailFriendComponent;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CenterItemFriendDataVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function FriendDetailsCenterComponent()
      {
         super();
         mx_internal::_document = this;
         this.width = 270;
         this.mxmlContent = [this._FriendDetailsCenterComponent_HGroup1_c(),this._FriendDetailsCenterComponent_VGroup1_c(),this._FriendDetailsCenterComponent_VGroup2_c()];
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
      
      public function set data(param1:CenterItemFriendDataVo) : void
      {
         if(RandomUtilities.isUnEqual(param1,this._data))
         {
            this.centerItem.showBuyButton = param1.showButton;
            this.centerItem.buttonInfos = param1;
            this.centerItem.data = param1.friendVO;
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._data)
         {
            this.centerItem.showBuyButton = this._data.showButton;
            if(this._dataIsDirty)
            {
               this._dataIsDirty = false;
               this.setToolTip();
            }
         }
      }
      
      private function handleRight() : void
      {
         dispatchEvent(new Event("right",true));
      }
      
      private function handleLeft() : void
      {
         dispatchEvent(new Event("left",true));
      }
      
      private function setToolTip() : void
      {
         this.scrollLeft.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.previous");
         this.scrollRight.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.pending.next");
      }
      
      private function _FriendDetailsCenterComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FriendDetailsCenterComponent_LargeDetailFriendComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendDetailsCenterComponent_LargeDetailFriendComponent1_i() : LargeDetailFriendComponent
      {
         var _loc1_:LargeDetailFriendComponent = new LargeDetailFriendComponent();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "centerItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerItem = _loc1_;
         BindingManager.executeBindings(this,"centerItem",this.centerItem);
         return _loc1_;
      }
      
      private function _FriendDetailsCenterComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 41;
         _loc1_.left = -2;
         _loc1_.mxmlContent = [this._FriendDetailsCenterComponent_DynamicImageButton1_i(),this._FriendDetailsCenterComponent_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendDetailsCenterComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listLeft";
         _loc1_.addEventListener("click",this.__scrollLeft_click);
         _loc1_.id = "scrollLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollLeft = _loc1_;
         BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
         return _loc1_;
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         this.handleLeft();
      }
      
      private function _FriendDetailsCenterComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendDetailsCenterComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.right = -1.5;
         _loc1_.width = 41;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FriendDetailsCenterComponent_DynamicImageButton2_i(),this._FriendDetailsCenterComponent_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendDetailsCenterComponent_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listRight";
         _loc1_.addEventListener("click",this.__scrollRight_click);
         _loc1_.id = "scrollRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollRight = _loc1_;
         BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
         return _loc1_;
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         this.handleRight();
      }
      
      private function _FriendDetailsCenterComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get centerItem() : LargeDetailFriendComponent
      {
         return this._1161660680centerItem;
      }
      
      public function set centerItem(param1:LargeDetailFriendComponent) : void
      {
         var _loc2_:Object = this._1161660680centerItem;
         if(_loc2_ !== param1)
         {
            this._1161660680centerItem = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerItem",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._66047092scrollLeft;
         if(_loc2_ !== param1)
         {
            this._66047092scrollLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._2053120847scrollRight;
         if(_loc2_ !== param1)
         {
            this._2053120847scrollRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
            }
         }
      }
   }
}

