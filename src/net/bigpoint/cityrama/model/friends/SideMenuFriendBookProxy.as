package net.bigpoint.cityrama.model.friends
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.ImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.PaperPopUpCenterDetailsVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SideMenuFriendBookProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SideMenuFriendBookProxy";
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      public function SideMenuFriendBookProxy()
      {
         super(NAME,new ArrayList());
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         this._entriesAvailable = false;
         this.loadAssets();
      }
      
      private function loadAssets() : void
      {
         var _loc1_:Array = ["gui_popups_FriendBook","gui_popups_paperPopup"];
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         if(!this._fld.libAllReadyLoaded("gui_popups_paperPopup") || !this._fld.libAllReadyLoaded("gui_popups_paperPopup"))
         {
            this._fld.addEventListener("sideMenueFriendBookNotification",this.createEntries);
            this._fld.checkSWFArrayLoaded(_loc1_,"sideMenueFriendBookNotification");
         }
      }
      
      private function createEntries(param1:Event) : void
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         this._entriesAvailable = true;
         this._fld.removeEventListener("sideMenueNotification",this.createEntries);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_FriendBook","categorie_icon_friends");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = FriendBookConstants.FRIENDS_OVERVIEW;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.side.all"));
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_FriendBook","categorie_icon_pending");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = FriendBookConstants.PENDING_FRIENDS_OVERVIEW;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.tooltips.friendlist"),String("rcl.tooltips.friendlist.side.pending"));
         this.entries.addItem(_loc2_);
         facade.sendNotification(ApplicationNotificationConstants.FRIENDBOOK_SIDE_ENTRIES_AVAILABLE);
      }
      
      public function detailCenterData() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         var _loc2_:PaperPopUpCenterDetailsVO = new PaperPopUpCenterDetailsVO();
         _loc2_.visualBluePrintBg = this._fld.getBitmap("gui_popups_paperPopup","architect_blueprint_big");
         _loc2_.visualBuilding = this._fld.getBitmap("gui_popups_paperPopup","layer_icon_architect");
         _loc2_.rakeState = this._fld.getBitmap("gui_popups_paperPopup","checkmark_green");
         _loc2_.enableBuyButton = false;
         _loc1_.addItem(_loc2_);
         return _loc1_;
      }
      
      public function get entries() : ArrayList
      {
         return super.data as ArrayList;
      }
      
      public function get entriesAvailable() : Boolean
      {
         return this._entriesAvailable;
      }
      
      public function detailCostsData() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         var _loc2_:ImageValueVO = new ImageValueVO();
         _loc2_.visual = this._fld.getBitmap("gui_infield_gui_mainmenue","ui_mainbar_icon_cc");
         _loc2_.textLabel = "120.000";
         _loc2_.visualOK = this._fld.getBitmap("gui_popups_paperPopup","layer_close");
         _loc2_.valueColor = 5726299;
         _loc1_.addItem(_loc2_);
         return _loc1_;
      }
      
      public function detailEffectsData() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         var _loc2_:ImageValueVO = new ImageValueVO();
         _loc2_.visual = this._fld.getBitmap("gui_infield_gui_mainmenue","ui_mainbar_icon_energy");
         _loc2_.textLabel = "-10";
         _loc2_.valueColor = 5726299;
         _loc1_.addItem(_loc2_);
         _loc2_.visual = this._fld.getBitmap("gui_infield_gui_mainmenue","ui_mainbar_icon_happy");
         _loc2_.textLabel = "-20";
         _loc2_.valueColor = 5726299;
         _loc1_.addItem(_loc2_);
         return _loc1_;
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

