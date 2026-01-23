package net.bigpoint.cityrama.model.storage
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class StorageSideMenuProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "StorageSideMenuProxy";
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      private var _fP:FeatureProxy;
      
      public function StorageSideMenuProxy()
      {
         super(NAME,new ArrayList());
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         this._entriesAvailable = false;
         this.loadAssets();
      }
      
      private function loadAssets() : void
      {
         var _loc1_:Array = ["gui_popups_paperPopup"];
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         if(!this._fld.libAllReadyLoaded("gui_popups_paperPopup"))
         {
            this._fld.addEventListener("storageSideMenueNotification",this.createEntries);
            this._fld.checkSWFArrayLoaded(_loc1_,"storageSideMenueNotification");
         }
      }
      
      private function createEntries(param1:Event) : void
      {
         this._entriesAvailable = true;
         this._fld.removeEventListener("storageSideMenueNotification",this.createEntries);
         var _loc2_:SideMenueArchCategoryVO = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_8_construction");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.construction"));
         _loc2_.type = ServerTagConstants.GOOD_CONSTRUCTION;
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_9_goods");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = ServerTagConstants.GOOD_NORMAL;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.goods"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg3_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_10_hip");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = ServerImprovementConstants.IMPROVEMENT;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.hip"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_7_special");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = ServerTagConstants.GOOD_SPECIAL;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.special"));
         this.entries.addItem(_loc2_);
         facade.sendNotification(ApplicationNotificationConstants.STORAGE_SIDE_ENTRIES_AVAILABLE);
      }
      
      public function get entries() : ArrayList
      {
         var _loc1_:SideMenueArchCategoryVO = null;
         for each(_loc1_ in super.data.source)
         {
            if(_loc1_.type == ServerImprovementConstants.IMPROVEMENT)
            {
               _loc1_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.storageBook"),String("rcl.tooltips.storageBook.hip"));
               _loc1_.enable = true;
            }
         }
         return super.data as ArrayList;
      }
      
      private function get featureProxy() : FeatureProxy
      {
         if(this._fP == null)
         {
            this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         }
         return this._fP;
      }
   }
}

