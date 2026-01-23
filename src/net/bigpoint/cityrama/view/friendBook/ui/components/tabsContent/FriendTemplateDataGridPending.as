package net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.GridSkinFriendBook4;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBookItemRenderer;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GroupList;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.List;
   
   public class FriendTemplateDataGridPending extends GroupList
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayCollection;
      
      private var _dataIsDirty:Boolean = false;
      
      public function FriendTemplateDataGridPending()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._FriendTemplateDataGridPending_LocaLabel1_i(),this._FriendTemplateDataGridPending_HGroup1_c()];
         this.addEventListener("creationComplete",this.___FriendTemplateDataGridPending_GroupList1_creationComplete);
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
      
      private function setTooltips() : void
      {
         flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteOverviewPending_flavor");
         itemList.setStyle("tooltipScrollLeft",LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.leftArrow"));
         itemList.setStyle("tooltipScrollRight",LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.rightArrow"));
      }
      
      override public function set data(param1:*) : void
      {
         if(RandomUtilities.isUnEqual(param1,this._data))
         {
            this._data = param1 as ArrayCollection;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:SortField = null;
         var _loc6_:Sort = null;
         var _loc7_:FriendVo = null;
         super.commitProperties();
         if(this._dataIsDirty && Boolean(this._data))
         {
            this._dataIsDirty = false;
            _loc1_ = int(this._data.length);
            _loc2_ = 10;
            _loc3_ = _loc2_ - _loc1_ % _loc2_;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc7_ = new FriendVo({
                  "id":1,
                  "l":1,
                  "n":"",
                  "t":3,
                  "io":1,
                  "lld":123,
                  "cd":123
               });
               _loc7_.isEmpty = true;
               this._data.addItem(_loc7_);
               _loc4_++;
            }
            _loc5_ = new SortField();
            _loc5_.name = "accountCreatedDate";
            _loc5_.numeric = true;
            _loc5_.descending = true;
            _loc6_ = new Sort();
            _loc6_.fields = [_loc5_];
            this._data.sort = _loc6_;
            this._data.refresh();
            itemList.dataProvider = this._data;
            itemList.ensureIndexIsVisible(0);
            itemList.invalidateProperties();
         }
      }
      
      private function _FriendTemplateDataGridPending_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 700;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",flavorText);
         return _loc1_;
      }
      
      private function _FriendTemplateDataGridPending_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = -5;
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         _loc1_.bottom = -4;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._FriendTemplateDataGridPending_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDataGridPending_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._FriendTemplateDataGridPending_ClassFactory1_c();
         _loc1_.height = 350;
         _loc1_.width = 740;
         _loc1_.setStyle("skinClass",GridSkinFriendBook4);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",itemList);
         return _loc1_;
      }
      
      private function _FriendTemplateDataGridPending_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FriendBookItemRenderer;
         return _loc1_;
      }
      
      public function ___FriendTemplateDataGridPending_GroupList1_creationComplete(param1:FlexEvent) : void
      {
         this.setTooltips();
      }
   }
}

