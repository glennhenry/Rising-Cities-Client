package net.bigpoint.cityrama.view.friendBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.friends.FriendBookConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateInvite;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class InviteTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "InviteMediator";
      
      private var _component:Group;
      
      private var _soundProxy:SoundProxy;
      
      public function InviteTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.prepareProxies();
      }
      
      private function prepareProxies() : void
      {
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      override public function getMediatorName() : String
      {
         return InviteTabMediator.NAME;
      }
      
      public function init() : void
      {
         this.setInitialValues();
         this.setupListeners();
      }
      
      private function setupListeners() : void
      {
         this.container.addEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE,this.openInviteMiniLayer);
         this.container.addEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,this.openInviteSlayerInvite);
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new FriendTemplateInvite();
         }
         this.container.content.addElement(this._component);
      }
      
      public function get container() : FriendBook
      {
         return super.viewComponent as FriendBook;
      }
      
      public function get component() : Group
      {
         return this._component;
      }
      
      private function openInviteMiniLayer(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this._soundProxy.playButtonClick();
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_FRIENDINVITE);
      }
      
      private function openInviteSlayerInvite(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this._soundProxy.playButtonClick();
         sendNotification(ApplicationNotificationConstants.OPEN_SLAYER_EMAIL_DIALOG);
      }
   }
}

