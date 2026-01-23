package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class ResidentialPopup extends PaperPopupWindow
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
      
      private var _residentialTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function ResidentialPopup()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "residential";
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
         if(Boolean(this._residentialTabData) && this._tabsDirty)
         {
            this._tabsDirty = false;
            tabData = this._residentialTabData;
         }
      }
      
      public function set residentialTabData(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._residentialTabData))
         {
            this._residentialTabData = param1;
            this._tabsDirty = true;
            invalidateProperties();
         }
      }
   }
}

