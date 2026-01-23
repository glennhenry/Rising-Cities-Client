package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class EmergencyDepartmentBook extends PaperPopupWindow
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
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _sideMenuComponent:SideMenuDepartmentBook;
      
      private var _departmentBookTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function EmergencyDepartmentBook()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "emergencyDepartmentBook";
         this.showBackButton = false;
         this.width = 775;
         this.height = 440;
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
         if(Boolean(this._departmentBookTabData) && this._tabsDirty)
         {
            this._tabsDirty = false;
            tabData = this._departmentBookTabData;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.sideMenu)
         {
            this._sideMenuComponent = new SideMenuDepartmentBook();
            this._sideMenuComponent.percentWidth = 100;
            this._sideMenuComponent.percentHeight = 100;
            this.sideMenu.addElement(this._sideMenuComponent);
         }
      }
      
      public function get sideMenuComponent() : SideMenuDepartmentBook
      {
         return this._sideMenuComponent;
      }
      
      public function set departmentBookTabData(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._departmentBookTabData))
         {
            this._departmentBookTabData = param1;
            this._tabsDirty = true;
            invalidateProperties();
         }
      }
   }
}

