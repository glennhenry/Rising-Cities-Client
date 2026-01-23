package net.bigpoint.cityrama.view.storageBook.ui.components
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.skins.GridSkin;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class StoragePopup extends PaperPopupWindow
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
      
      private var _1177280081itemList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _sideMenuComponent:SideMenuStorage;
      
      public function StoragePopup()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "storage";
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._StoragePopup_Array1_c);
         this.addEventListener("creationComplete",this.___StoragePopup_PaperPopupWindow1_creationComplete);
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
      
      private function handleAdded() : void
      {
      }
      
      private function handleCreationComplete() : void
      {
         this.title = ResourceManager.getInstance().getString(String("rcl.booklayer.storage"),String("rcl.booklayer.storage.title"));
         var _loc1_:String = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.leftArrow"));
         var _loc2_:String = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.rightArrow"));
         this.itemList.setStyle("tooltipScrollLeft",_loc1_);
         this.itemList.setStyle("tooltipScrollRight",_loc2_);
      }
      
      private function handleClose(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.sideMenu)
         {
            this._sideMenuComponent = new SideMenuStorage();
            this._sideMenuComponent.percentWidth = 100;
            this._sideMenuComponent.percentHeight = 100;
            this.sideMenu.addElement(this._sideMenuComponent);
         }
      }
      
      public function get sideMenuComponent() : SideMenuStorage
      {
         return this._sideMenuComponent;
      }
      
      private function _StoragePopup_Array1_c() : Array
      {
         return [this._StoragePopup_LocaLabel1_i(),this._StoragePopup_VGroup1_c()];
      }
      
      private function _StoragePopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 700;
         _loc1_.height = 25;
         _loc1_.top = 40;
         _loc1_.styleName = "flavorText";
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _StoragePopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 6;
         _loc1_.paddingRight = 6;
         _loc1_.height = 345;
         _loc1_.bottom = 10;
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._StoragePopup_Group1_c(),this._StoragePopup_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StoragePopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 25;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StoragePopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._StoragePopup_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StoragePopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._StoragePopup_ClassFactory1_c();
         _loc1_.height = 315;
         _loc1_.width = 726;
         _loc1_.setStyle("skinClass",GridSkin);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _StoragePopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = StorageItemRenderer;
         return _loc1_;
      }
      
      public function ___StoragePopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
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
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
            }
         }
      }
   }
}

