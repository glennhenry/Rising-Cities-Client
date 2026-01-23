package net.bigpoint.cityrama.model.externalInterface
{
   import flash.display.StageDisplayState;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ExternalInterfaceProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ExternalInterfaceProxy";
      
      private var _friendProxy:FriendsProxy;
      
      public function ExternalInterfaceProxy(param1:Object = null)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         Security.allowDomain("*");
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback("jsCallbackPlaySound",this.playSound);
            ExternalInterface.addCallback("jsCallbackOpenTab",this.openTab);
            ExternalInterface.addCallback("jsCallbackPmsRead",this.allMessagesRead);
            ExternalInterface.addCallback("jsCallbackOpenTreasury",this.openTreasury);
            ExternalInterface.addCallback("jsCallbackMouseWheel",this.mouseWheel);
         }
         this._friendProxy = FriendsProxy(facade.retrieveProxy(FriendsProxy.NAME));
      }
      
      private function mouseWheel(param1:Number) : void
      {
         if(param1 > 0)
         {
            sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN);
         }
         else
         {
            sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT);
         }
      }
      
      private function openTreasury() : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
      }
      
      public function playSound(param1:String) : void
      {
         var _loc2_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         switch(param1)
         {
            case "buttonClick":
               _loc2_.playButtonClick();
         }
      }
      
      public function openTab(param1:String) : void
      {
         var _loc2_:LayoutProxy = null;
         var _loc3_:MainMenuMediator = null;
         switch(param1)
         {
            case "friends":
            case "invite":
               facade.sendNotification(ApplicationNotificationConstants.OPEN_FRIENDBOOK_POPUP,param1);
               break;
            case "close":
               _loc2_ = facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
               if(_loc2_.inFullScreenBeforeOpenFriendBook)
               {
                  if(_loc2_.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     _loc2_.changeDisplayState();
                  }
               }
               _loc3_ = facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator;
               if(_loc3_.component.friends.selected)
               {
                  _loc3_.component.friends.selected = false;
               }
         }
      }
      
      public function openMessagingPHP() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("showPms");
         }
      }
      
      public function updateInbox() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("updateInbox");
         }
      }
      
      public function updateMarket() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("updateShop");
         }
      }
      
      private function allMessagesRead() : void
      {
         this._friendProxy.newMessages = false;
         sendNotification(ApplicationNotificationConstants.ALL_MESSAGES_READ);
      }
      
      public function cinemaVideoAvailable() : Boolean
      {
         if(ExternalInterface.available)
         {
            return ExternalInterface.call("cinemaCheck");
         }
         return false;
      }
      
      public function openExternalCinema() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("cinemaShow");
         }
      }
      
      public function closeExternalCinema() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("cinemaHide");
         }
      }
   }
}

