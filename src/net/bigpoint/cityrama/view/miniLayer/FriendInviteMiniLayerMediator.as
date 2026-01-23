package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.friends.FriendBookConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.FriendMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FriendInviteMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "FriendInviteMiniLayerMediator";
      
      private var _soundProxy:SoundProxy;
      
      public function FriendInviteMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.addListener();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FRIEND_INVITE_FAIL,ApplicationNotificationConstants.FRIEND_INVITE_SUCCESS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:Boolean = false;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.FRIEND_INVITE_FAIL:
               _loc2_ = param1.getBody() as Boolean;
               if(_loc2_)
               {
                  this.component.setData(FriendBookConstants.EVENT_DATA_INVITE_FAIL_ALLREADY_THERE);
                  break;
               }
               this.component.setData(FriendBookConstants.EVENT_DATA_INVITE_FAIL);
               break;
            case ApplicationNotificationConstants.FRIEND_INVITE_SUCCESS:
               this.component.setData(FriendBookConstants.EVENT_DATA_INVITE_SUCCESS);
         }
      }
      
      private function addListener() : void
      {
         this.component.inviteButton.addEventListener(MouseEvent.CLICK,this.onInviteAction);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function onInviteAction(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:String = this.component.valueLabel.text as String;
         facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_INVITE_FRIEND,_loc2_);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.inviteButton.removeEventListener(MouseEvent.CLICK,this.onInviteAction);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function setData(param1:Object) : void
      {
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.inviteButton.removeEventListener(MouseEvent.CLICK,this.onInviteAction);
      }
      
      public function get component() : FriendMiniLayer
      {
         return super.viewComponent as FriendMiniLayer;
      }
   }
}

