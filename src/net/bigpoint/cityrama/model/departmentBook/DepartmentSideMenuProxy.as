package net.bigpoint.cityrama.model.departmentBook
{
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.architecturalBook.vo.SideMenueArchCategoryVO;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.friends.*;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class DepartmentSideMenuProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "DepartmentSideMenuProxy";
      
      private var _entriesAvailable:Boolean;
      
      private var _fld:FileRuntimeLoadServiceDynamic;
      
      private var _currentType:String;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      public function DepartmentSideMenuProxy()
      {
         super(NAME,new ArrayList());
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._entriesAvailable = false;
         this.loadAssets();
      }
      
      private function loadAssets() : void
      {
         var _loc1_:Array = ["gui_popups_emergencyBook","gui_popups_paperPopup"];
         this._fld = FileRuntimeLoadServiceDynamic.getInstance();
         if(!this._fld.libAllReadyLoaded("gui_popups_paperPopup") || !this._fld.libAllReadyLoaded("gui_popups_paperPopup"))
         {
            this._fld.addEventListener("sideMenueDepartmentBookNotification",this.createEntries);
            this._fld.checkSWFArrayLoaded(_loc1_,"sideMenueDepartmentBookNotification");
         }
      }
      
      private function createEntries(param1:Event) : void
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         this._fld.removeEventListener("sideMenueNotification",this.createEntries);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg1_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_emergencyBook","icon_firedepartment");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = ServerTagConstants.FIRE_DEPARTMENT;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.booklayer.departmentBook"),String("rcl.booklayer.departmentBook.fireDepartmentTab"));
         _loc2_.enable = this.entryEnabled(_loc2_.type);
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_emergencyBook","icon_policedepartment");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = ServerTagConstants.POLICE_DEPARTMENT;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.booklayer.departmentBook"),String("rcl.booklayer.departmentBook.policeDepartmentTab"));
         _loc2_.enable = this.entryEnabled(_loc2_.type);
         this.entries.addItem(_loc2_);
         _loc2_ = new SideMenueArchCategoryVO();
         _loc2_.visual = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2");
         _loc2_.visualActive = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_bg2_highlight");
         _loc2_.visualIcon = this._fld.getBitmap("gui_popups_emergencyBook","icon_hospitaldepartment");
         _loc2_.selectionRing = this._fld.getBitmap("gui_popups_paperPopup","layer_categories_highlight");
         _loc2_.type = ServerTagConstants.HOSPITAL;
         _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.booklayer.departmentBook"),String("rcl.booklayer.departmentBook.hospitalDepartmentTab"));
         _loc2_.enable = this.entryEnabled(_loc2_.type);
         this.entries.addItem(_loc2_);
         this._entriesAvailable = true;
      }
      
      private function entryEnabled(param1:String) : Boolean
      {
         var _loc2_:Vector.<InfrastructureBuildingFieldObject> = this._playfieldObjectsProxy.getInfrastructureBuildingByDepartmentTag(param1);
         if(_loc2_.length > 0)
         {
            if(!_loc2_[0].billboardObjectVo.isUnderConstruction())
            {
               return true;
            }
         }
         return false;
      }
      
      public function getIndexByType(param1:String) : uint
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         var _loc3_:uint = 0;
         while(_loc3_ < this.entries.length)
         {
            _loc2_ = this.entries.getItemAt(_loc3_) as SideMenueArchCategoryVO;
            if(Boolean(_loc2_) && _loc2_.type == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return 0;
      }
      
      public function get entries() : ArrayList
      {
         var _loc1_:SideMenueArchCategoryVO = null;
         for each(_loc1_ in super.data.source)
         {
            _loc1_.enable = this.entryEnabled(_loc1_.type);
         }
         return super.data as ArrayList;
      }
      
      public function addNewIconAt(param1:Array) : void
      {
         var _loc2_:SideMenueArchCategoryVO = null;
         for each(_loc2_ in this.entries.source)
         {
            _loc2_.isNew = param1.indexOf(_loc2_.type) != -1;
         }
      }
      
      public function get currentType() : String
      {
         return this._currentType;
      }
      
      public function set currentType(param1:String) : void
      {
         this._currentType = param1;
      }
   }
}

