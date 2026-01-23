package net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.skins.GridSkinFriendBook4;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendADDComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBookItemRenderer;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendGIFTComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GroupList;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class FriendTemplateDataGrid extends GroupList
   {
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FriendTemplateDataGrid()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._FriendTemplateDataGrid_LocaLabel1_i(),this._FriendTemplateDataGrid_HGroup1_c()];
         this.addEventListener("creationComplete",this.___FriendTemplateDataGrid_GroupList1_creationComplete);
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
         flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteOverview_flavor");
         itemList.setStyle("tooltipScrollLeft",LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.overview.previous"));
         itemList.setStyle("tooltipScrollRight",LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.overview.next"));
      }
      
      override public function set data(param1:*) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:FriendVo = null;
         if(param1)
         {
            _loc2_ = param1 as ArrayCollection;
            _loc3_ = int(_loc2_.length);
            _loc4_ = 8;
            _loc5_ = _loc4_ - _loc3_ % _loc4_;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
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
               _loc2_.addItem(_loc7_);
               _loc6_++;
            }
            itemList.dataProvider = _loc2_;
            itemList.ensureIndexIsVisible(0);
            itemList.invalidateProperties();
         }
      }
      
      private function _FriendTemplateDataGrid_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 700;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.horizontalCenter = 0;
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
      
      private function _FriendTemplateDataGrid_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = -7;
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         _loc1_.bottom = -4;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._FriendTemplateDataGrid_VGroup1_c(),this._FriendTemplateDataGrid_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDataGrid_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._FriendTemplateDataGrid_Group1_c(),this._FriendTemplateDataGrid_FriendADDComponent1_c(),this._FriendTemplateDataGrid_FriendGIFTComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDataGrid_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 14;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDataGrid_FriendADDComponent1_c() : FriendADDComponent
      {
         var _loc1_:FriendADDComponent = new FriendADDComponent();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDataGrid_FriendGIFTComponent1_c() : FriendGIFTComponent
      {
         var _loc1_:FriendGIFTComponent = new FriendGIFTComponent();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateDataGrid_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._FriendTemplateDataGrid_ClassFactory1_c();
         _loc1_.height = 350;
         _loc1_.width = 610;
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
      
      private function _FriendTemplateDataGrid_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FriendBookItemRenderer;
         return _loc1_;
      }
      
      public function ___FriendTemplateDataGrid_GroupList1_creationComplete(param1:FlexEvent) : void
      {
         this.setTooltips();
      }
   }
}

