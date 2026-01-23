package net.bigpoint.cityrama.view.residentSelection.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentSelectionVo;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.residentSelection.ui.skins.ResidentListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ResidentSelectionPopup extends PaperPopupWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1246295935listGroup:HGroup;
      
      private var _311670258residentList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _residentData:ResidentSelectionVo;
      
      private var _isDirty:Boolean;
      
      public function ResidentSelectionPopup()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "residentSelection";
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentSelectionPopup_Array1_c);
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
      
      public function set data(param1:ResidentSelectionVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._residentData))
         {
            this._residentData = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:ResidentDetailVo = null;
         super.commitProperties();
         if(Boolean(this._residentData) && this._isDirty)
         {
            this._isDirty = false;
            this.title = LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.title");
            this.flavorText.text = LocaUtils.getString("rcl.booklayer.residentSelection","rcl.booklayer.residentSelection.flavor");
            _loc1_ = new ArrayCollection();
            for each(_loc2_ in this._residentData.residents)
            {
               if(_loc2_.type == this._residentData.currentResidents)
               {
                  _loc2_.movePossible = false;
               }
               _loc1_.addItem(_loc2_);
            }
            this.residentList.dataProvider = _loc1_;
         }
      }
      
      private function _ResidentSelectionPopup_Array1_c() : Array
      {
         return [this._ResidentSelectionPopup_VGroup1_c()];
      }
      
      private function _ResidentSelectionPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 740;
         _loc1_.percentHeight = 100;
         _loc1_.gap = -3;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._ResidentSelectionPopup_Group1_c(),this._ResidentSelectionPopup_VGroup2_c(),this._ResidentSelectionPopup_HGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 700;
         _loc1_.height = 38;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 32;
         _loc1_.percentWidth = 90;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ResidentSelectionPopup_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.maxHeight = 32;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.minWidth = 666;
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 314;
         _loc1_.mxmlContent = [this._ResidentSelectionPopup_List1_i()];
         _loc1_.id = "listGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.listGroup = _loc1_;
         BindingManager.executeBindings(this,"listGroup",this.listGroup);
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ResidentSelectionPopup_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ResidentListSkin);
         _loc1_.id = "residentList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentList = _loc1_;
         BindingManager.executeBindings(this,"residentList",this.residentList);
         return _loc1_;
      }
      
      private function _ResidentSelectionPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ResidentChoiceItemRenderer;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc2_ !== param1)
         {
            this._1684755691flavorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get listGroup() : HGroup
      {
         return this._1246295935listGroup;
      }
      
      public function set listGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1246295935listGroup;
         if(_loc2_ !== param1)
         {
            this._1246295935listGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentList() : List
      {
         return this._311670258residentList;
      }
      
      public function set residentList(param1:List) : void
      {
         var _loc2_:Object = this._311670258residentList;
         if(_loc2_ !== param1)
         {
            this._311670258residentList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentList",_loc2_,param1));
            }
         }
      }
   }
}

