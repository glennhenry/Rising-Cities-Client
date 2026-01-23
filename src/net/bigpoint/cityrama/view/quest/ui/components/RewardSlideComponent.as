package net.bigpoint.cityrama.view.quest.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.ExternalScrollableList;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.quest.ui.skin.BubblePagingListSkin;
   import net.bigpoint.cityrama.view.quest.ui.skin.RewardSlideListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public class RewardSlideComponent extends Group
   {
      
      private static const SLIDE_DURATION:int = 2;
      
      private var _1302042186pagingList:List;
      
      private var _1690977389rewardList:ExternalScrollableList;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _showPaging:Boolean = true;
      
      private var _data:ArrayCollection;
      
      private var _isDirty:Boolean;
      
      public function RewardSlideComponent()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 115;
         this.width = 115;
         this.maxWidth = 115;
         this.percentHeight = 100;
         this.mxmlContent = [this._RewardSlideComponent_VGroup1_c()];
         this.addEventListener("removedFromStage",this.___RewardSlideComponent_Group1_removedFromStage);
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
            this.pagingList.dataProvider = this._data;
            this.rewardList.dataProvider = this._data;
            TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
         }
      }
      
      private function handlePagingChanged(param1:IndexChangeEvent = null) : void
      {
         TweenMax.killDelayedCallsTo(this.changeSlide);
         this.rewardList.scrollToPage(this.pagingList.selectedIndex);
         TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
      }
      
      private function changeSlide() : void
      {
         if(this.pagingList.selectedIndex < this._data.length - 1)
         {
            ++this.pagingList.selectedIndex;
         }
         else
         {
            this.pagingList.selectedIndex = 0;
         }
         this.handlePagingChanged();
      }
      
      public function set data(param1:ArrayCollection) : void
      {
         if(RandomUtilities.isUnEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function handleRemoved() : void
      {
         TweenMax.killDelayedCallsTo(this.changeSlide);
      }
      
      public function set showPaging(param1:Boolean) : void
      {
         this._showPaging = param1;
         this.pagingList.includeInLayout = this.pagingList.visible = this._showPaging;
      }
      
      private function handleOver() : void
      {
         TweenMax.killDelayedCallsTo(this.changeSlide);
      }
      
      private function handleOut() : void
      {
         TweenMax.delayedCall(SLIDE_DURATION,this.changeSlide);
      }
      
      private function _RewardSlideComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -8;
         _loc1_.mxmlContent = [this._RewardSlideComponent_ExternalScrollableList1_i(),this._RewardSlideComponent_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RewardSlideComponent_ExternalScrollableList1_i() : ExternalScrollableList
      {
         var _loc1_:ExternalScrollableList = new ExternalScrollableList();
         _loc1_.itemRenderer = this._RewardSlideComponent_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("skinClass",RewardSlideListSkin);
         _loc1_.addEventListener("rollOver",this.__rewardList_rollOver);
         _loc1_.addEventListener("rollOut",this.__rewardList_rollOut);
         _loc1_.id = "rewardList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardList = _loc1_;
         BindingManager.executeBindings(this,"rewardList",this.rewardList);
         return _loc1_;
      }
      
      private function _RewardSlideComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RewardItemRenderer;
         return _loc1_;
      }
      
      public function __rewardList_rollOver(param1:MouseEvent) : void
      {
         this.handleOver();
      }
      
      public function __rewardList_rollOut(param1:MouseEvent) : void
      {
         this.handleOut();
      }
      
      private function _RewardSlideComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._RewardSlideComponent_ClassFactory2_c();
         _loc1_.selectedIndex = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
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
      
      private function _RewardSlideComponent_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = BubblePagingItemRenderer;
         return _loc1_;
      }
      
      public function __pagingList_change(param1:IndexChangeEvent) : void
      {
         this.handlePagingChanged(param1);
      }
      
      public function ___RewardSlideComponent_Group1_removedFromStage(param1:Event) : void
      {
         this.handleRemoved();
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
      public function get rewardList() : ExternalScrollableList
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:ExternalScrollableList) : void
      {
         var _loc2_:Object = this._1690977389rewardList;
         if(_loc2_ !== param1)
         {
            this._1690977389rewardList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
            }
         }
      }
   }
}

