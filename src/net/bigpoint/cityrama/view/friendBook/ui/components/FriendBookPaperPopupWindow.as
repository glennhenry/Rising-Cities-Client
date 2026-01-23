package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.*;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.FriendBookPaperPopupSkin;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.TitleWindow;
   
   public class FriendBookPaperPopupWindow extends TitleWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "actionButton":false,
         "actionButton1":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      public var backButton:DynamicImageButton;
      
      public var sideMenu:Group;
      
      public var actionButton:Button;
      
      public var actionButton1:Button;
      
      private var _showBackButton:Boolean;
      
      private var _showBackButtonChanged:Boolean;
      
      private var _sideMenuComponent:SideMenuFriendBook;
      
      public function FriendBookPaperPopupWindow()
      {
         super();
         this.styleName = "friendbook";
         this.showBackButton = false;
         width = 785;
         height = 430;
         this.addEventListener(Event.ADDED_TO_STAGE,this.handleAdded);
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
         if(param2 is BriskMCDynaLib)
         {
            (param2 as BriskMCDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         }
         if(param2 is BriskImageDynaLib)
         {
            (param2 as BriskImageDynaLib).addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.handleComplete);
         }
         if(param2 == this.sideMenu)
         {
            this._sideMenuComponent = new SideMenuFriendBook();
            this._sideMenuComponent.percentWidth = 100;
            this._sideMenuComponent.percentHeight = 100;
            this.sideMenu.addElement(this._sideMenuComponent);
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
      
      override public function set title(param1:String) : void
      {
         if(super.title != param1)
         {
            super.title = param1;
            invalidateProperties();
         }
      }
      
      private function addCloseButtonListeners() : void
      {
         closeButton.addEventListener(MouseEvent.CLICK,this.handleCloseClick);
         closeButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.architecturalBook"),String("rcl.tooltips.architecturalBook.close"));
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
      }
      
      private function removeBackButtonListeners() : void
      {
         this.backButton.removeEventListener(MouseEvent.CLICK,this.handleBackClick);
      }
      
      private function removeCloseButtonListeners() : void
      {
         closeButton.removeEventListener(MouseEvent.CLICK,this.handleCloseClick);
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
      }
      
      private function handleCloseClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE,true));
      }
      
      private function handleBackClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(PaperPopupWindow.BACK,true));
      }
      
      public function resetToFriend_TAB() : void
      {
         var _loc1_:FriendBookPaperPopupSkin = skin as FriendBookPaperPopupSkin;
         _loc1_.resetToFriend_TAB();
      }
      
      public function switchToTab(param1:String) : void
      {
         var _loc2_:FriendBookPaperPopupSkin = null;
         if(this.skin is FriendBookPaperPopupSkin)
         {
            _loc2_ = this.skin as FriendBookPaperPopupSkin;
            switch(param1)
            {
               case "invite":
                  _loc2_.clickAction();
                  break;
               case "friends":
                  _loc2_.clickAction1();
            }
         }
      }
      
      private function handleAdded(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAdded);
         this.title = ResourceManager.getInstance().getString(String("rcl.booklayer.architect"),String("rcl.booklayer.architect.title"));
      }
      
      public function get sideMenuComponent() : SideMenuFriendBook
      {
         return this._sideMenuComponent;
      }
   }
}

