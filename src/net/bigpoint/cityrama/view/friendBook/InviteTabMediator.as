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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "InviteMediator";
      }
      
      private var _component:Group;
      
      private var _soundProxy:SoundProxy;
      
      public function InviteTabMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(_loc1_ || _loc2_)
            {
               this.prepareProxies();
            }
         }
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         }
      }
      
      override public function getMediatorName() : String
      {
         return InviteTabMediator.NAME;
      }
      
      public function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this.setInitialValues();
            if(_loc2_)
            {
               addr0029:
               this.setupListeners();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.container);
            if(_loc2_ || _loc1_)
            {
               §§push(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE);
               if(!_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.openInviteMiniLayer);
                  if(!(_loc1_ && _loc1_))
                  {
                     addr006d:
                     this.container.addEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,this.openInviteSlayerInvite);
                     addr0067:
                  }
                  §§goto(addr0075);
               }
               §§goto(addr006d);
            }
            §§goto(addr0067);
         }
         addr0075:
      }
      
      private function setInitialValues() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(!this._component)
            {
               if(_loc1_ || _loc2_)
               {
                  addr0046:
                  this._component = new FriendTemplateInvite();
                  if(_loc1_ || Boolean(this))
                  {
                     addr005e:
                     this.container.content.addElement(this._component);
                  }
               }
               return;
            }
            §§goto(addr005e);
         }
         §§goto(addr0046);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            param1.stopImmediatePropagation();
            if(_loc3_ || Boolean(this))
            {
               this._soundProxy.playButtonClick();
               if(_loc3_ || Boolean(this))
               {
                  addr0058:
                  facade.sendNotification(MiniLayerConstants.OPEN_MINI_FRIENDINVITE);
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      private function openInviteSlayerInvite(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            param1.stopImmediatePropagation();
            if(!_loc2_)
            {
               this._soundProxy.playButtonClick();
               if(_loc3_)
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_SLAYER_EMAIL_DIALOG);
               }
            }
         }
      }
   }
}

