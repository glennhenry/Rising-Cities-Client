package net.bigpoint.cityrama.view.ingameStore.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.architectBook.ui.components.SideMenueArchitecture;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class IngameStoreBook extends PaperPopupWindow
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
      
      private var _sideMenuComponent:SideMenueArchitecture;
      
      private var _ingameStoreTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function IngameStoreBook()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "architect";
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
         if(Boolean(this._ingameStoreTabData) && this._tabsDirty)
         {
            this._tabsDirty = false;
            tabData = this._ingameStoreTabData;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.sideMenu)
         {
            this._sideMenuComponent = new SideMenueArchitecture();
            this._sideMenuComponent.percentWidth = 100;
            this._sideMenuComponent.percentHeight = 100;
            this.sideMenu.addElement(this._sideMenuComponent);
         }
      }
      
      public function get sideMenuComponent() : SideMenueArchitecture
      {
         return this._sideMenuComponent;
      }
      
      public function set ingameStoreTabData(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._ingameStoreTabData))
         {
            this._ingameStoreTabData = param1;
            this._tabsDirty = true;
            invalidateProperties();
         }
      }
   }
}

