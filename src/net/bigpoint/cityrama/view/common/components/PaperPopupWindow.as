package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.TabBar;
   import spark.components.TitleWindow;
   import spark.events.IndexChangeEvent;
   
   public class PaperPopupWindow extends TitleWindow
   {
      
      public static const BACK:String = "back";
      
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
      
      public var backButton:DynamicImageButton;
      
      public var sideMenu:Group;
      
      public var tabBar:TabBar;
      
      private var _showBackButton:Boolean;
      
      private var _showBackButtonChanged:Boolean;
      
      private var _tabDataDirty:Boolean;
      
      private var _tabData:ArrayCollection;
      
      public function PaperPopupWindow()
      {
         super();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.backButton)
         {
            this.addBackButtonListeners();
         }
         else if(param2 == closeButton)
         {
            this.addCloseButtonListeners();
         }
         else if(param2 == this.tabBar)
         {
            this.addTabBarListener();
         }
         if(param2 is BriskMCDynaLib)
         {
            (param2 as BriskMCDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         }
         if(param2 is BriskImageDynaLib)
         {
            (param2 as BriskImageDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         }
      }
      
      override public function set title(param1:String) : void
      {
         if(super.title != param1)
         {
            super.title = param1;
            invalidateProperties();
         }
      }
      
      private function handleComplete(param1:Event) : void
      {
         param1.target.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         invalidateSize();
      }
      
      private function addBackButtonListeners() : void
      {
         this.backButton.addEventListener(MouseEvent.CLICK,this.handleBackClick);
      }
      
      private function addCloseButtonListeners() : void
      {
         closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
         closeButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.close");
      }
      
      private function addTabBarListener() : void
      {
         this.tabBar.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         super.partRemoved(param1,param2);
         if(param2 == this.backButton)
         {
            this.removeBackButtonListeners();
         }
         else if(param2 == closeButton)
         {
            this.removeCloseButtonListeners();
         }
         else if(param2 == this.tabBar)
         {
            this.removeTabBarListener();
         }
      }
      
      private function removeBackButtonListeners() : void
      {
         this.backButton.removeEventListener(MouseEvent.CLICK,this.handleBackClick);
      }
      
      private function removeCloseButtonListeners() : void
      {
         closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
      }
      
      private function removeTabBarListener() : void
      {
         this.tabBar.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      override public function get styleName() : Object
      {
         return super.styleName;
      }
      
      override public function set styleName(param1:Object) : void
      {
         if(param1 != super.styleName)
         {
            super.styleName = param1;
            invalidateDisplayList();
         }
      }
      
      public function get showBackButton() : Boolean
      {
         return this._showBackButton;
      }
      
      public function set showBackButton(param1:Boolean) : void
      {
         if(param1 != this._showBackButton)
         {
            this._showBackButton = param1;
            this._showBackButtonChanged = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._showBackButtonChanged)
         {
            this._showBackButtonChanged = false;
            this.backButton.visible = this._showBackButton;
            invalidateDisplayList();
         }
         if(Boolean(this._tabData) && this._tabDataDirty)
         {
            if(this.tabBar)
            {
               this._tabDataDirty = false;
               this.tabBar.dataProvider = this._tabData;
            }
         }
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE,true));
      }
      
      private function handleBackClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(BACK,true));
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent) : void
      {
         if(this._tabData[param1.newIndex].isLocked)
         {
            param1.stopImmediatePropagation();
            return;
         }
         dispatchEvent(param1);
      }
      
      public function set tabData(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._tabData))
         {
            this._tabData = param1;
            this.tabBar.dataProvider = this._tabData;
            this._tabDataDirty = true;
            invalidateProperties();
         }
      }
   }
}

