package net.bigpoint.cityrama.view.quest.ui.components
{
   import mx.collections.ArrayCollection;
   import mx.core.IFlexModuleFactory;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   
   public class QuestTabbedPopup extends PaperPopupWindow
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
      
      private var _questTabData:ArrayCollection;
      
      private var _tabsDirty:Boolean;
      
      public function QuestTabbedPopup()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "tabbedQuest";
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
         if(Boolean(this._questTabData) && this._tabsDirty)
         {
            this._tabsDirty = false;
            tabData = this._questTabData;
         }
      }
      
      public function set questTabData(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._questTabData))
         {
            this._questTabData = param1;
            this._tabsDirty = true;
            invalidateProperties();
         }
      }
   }
}

