package net.bigpoint.cityrama.model.architecturalBook
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SideMenuProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SideMenuProxy";
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      private var _fEP:FeaturedEventProxy;
      
      public function SideMenuProxy()
      {
         super(NAME,new ArrayList());
      }
      
      private function loadAssets() : void
      {
         var _loc1_:Array = ["gui_popups_paperPopup"];
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         if(!this._fld.libAllReadyLoaded("gui_popups_paperPopup"))
         {
            this._fld.addEventListener("sideMenueNotification",this.createEntries);
            this._fld.checkSWFArrayLoaded(_loc1_,"sideMenueNotification");
         }
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         this._entriesAvailable = false;
         this.loadAssets();
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         if(this._fEP == null)
         {
            this._fEP = FeaturedEventProxy(facade.retrieveProxy(FeaturedEventProxy.NAME));
         }
         return this._fEP;
      }
      
      private function createEntries(param1:Event) : void
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         this._entriesAvailable = true;
         this._fld.removeEventListener("sideMenueNotification",this.createEntries);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_1_residential");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_RESIDENTIAL;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.residential"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_2_produktion");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_PRODUCTION;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.production"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_3_need");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_SHOP;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.shops"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_4_powerplants");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_POWERPLANT;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.powerplants"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_5_decoration");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_DECORATION;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.decoration"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_6_street");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_GROUNDS;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.streets"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_7_special");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = BlueprintGroupConstants.BLUEPRINT_SPECIAL;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.category.special"));
         this.entries.addItem(_loc2_);
         facade.sendNotification(ApplicationNotificationConstants.ARCHITECT_SIDE_ENTRIES_AVAILABLE);
      }
      
      public function get currentEntries() : ArrayList
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         var _loc1_:ArrayList = new ArrayList();
         for each(_loc2_ in this.entries.source)
         {
            _loc1_.addItem(_loc2_);
         }
         return _loc1_ as ArrayList;
      }
      
      private function get entries() : ArrayList
      {
         return super.data as ArrayList;
      }
      
      public function getAllTypes() : Vector.<String>
      {
         var _loc1_:SideMenueArchCategoryVO = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         var _loc3_:int = 0;
         while(_loc3_ < this.entries.length)
         {
            _loc1_ = this.entries.getItemAt(_loc3_) as SideMenueArchCategoryVO;
            if(_loc1_)
            {
               _loc2_.push(_loc1_.type);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getIndexByType(param1:String) : uint
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         var _loc3_:uint = 0;
         while(_loc3_ < this.currentEntries.length)
         {
            _loc2_ = this.currentEntries.getItemAt(_loc3_) as SideMenueArchCategoryVO;
            if(Boolean(_loc2_) && _loc2_.type == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return 0;
      }
      
      public function addNewIconAt(param1:Array) : void
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         for each(_loc2_ in this.entries.source)
         {
            _loc2_.isNew = param1.indexOf(_loc2_.type) != -1;
         }
      }
   }
}

