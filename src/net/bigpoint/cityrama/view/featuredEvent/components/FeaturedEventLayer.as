package net.bigpoint.cityrama.view.featuredEvent.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class FeaturedEventLayer extends PaperPopupWindow
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
      
      private var _tabs:ArrayCollection;
      
      private var _tabsIsDirty:Boolean;
      
      public function FeaturedEventLayer()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "featuredEvents";
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
      
      public function set tabs(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._tabs))
         {
            this._tabs = param1;
            this._tabsIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._tabsIsDirty && Boolean(this._tabs))
         {
            this._tabsIsDirty = false;
            tabData = this._tabs;
         }
      }
   }
}

