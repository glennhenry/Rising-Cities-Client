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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "FriendInviteMiniLayerMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function FriendInviteMiniLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.onRegister();
            if(_loc2_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc2_ || Boolean(this))
               {
                  addr0051:
                  this.addListener();
               }
               return;
            }
         }
         §§goto(addr0051);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FRIEND_INVITE_FAIL,ApplicationNotificationConstants.FRIEND_INVITE_SUCCESS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:* = param1.getName();
         if(_loc5_)
         {
            §§push(ApplicationNotificationConstants.FRIEND_INVITE_FAIL);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || Boolean(param1))
                     {
                        addr011f:
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr0136:
                        §§push(1);
                        if(_loc4_ && _loc2_)
                        {
                        }
                     }
                     §§goto(addr0156);
                  }
                  else
                  {
                     §§goto(addr0132);
                  }
               }
               addr0132:
               §§goto(addr0131);
            }
            addr0131:
            if(ApplicationNotificationConstants.FRIEND_INVITE_SUCCESS === _loc3_)
            {
               §§goto(addr0136);
            }
            else
            {
               §§push(2);
            }
            addr0156:
            switch(§§pop())
            {
               case 0:
                  §§push(param1.getBody() as Boolean);
                  if(!(_loc4_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     if(!(_loc5_ || Boolean(_loc3_)))
                     {
                        break;
                     }
                     §§push(_loc2_);
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(this.component);
                        if(!_loc4_)
                        {
                           §§push(FriendBookConstants.EVENT_DATA_INVITE_FAIL_ALLREADY_THERE);
                           if(!_loc4_)
                           {
                              §§pop().setData(§§pop());
                              if(_loc4_ && _loc2_)
                              {
                              }
                              break;
                           }
                        }
                        else
                        {
                           addr0088:
                           §§push(FriendBookConstants.EVENT_DATA_INVITE_FAIL);
                           if(_loc4_ && Boolean(param1))
                           {
                              addr00c1:
                              §§pop().setData(§§pop());
                              if(_loc4_ && Boolean(param1))
                              {
                              }
                              break;
                           }
                        }
                        §§pop().setData(§§pop());
                        if(_loc5_)
                        {
                        }
                     }
                     break;
                  }
                  §§push(this.component);
                  if(_loc5_ || Boolean(param1))
                  {
                     §§goto(addr0088);
                  }
                  else
                  {
                     addr00bb:
                     §§push(FriendBookConstants.EVENT_DATA_INVITE_SUCCESS);
                  }
                  §§goto(addr00c1);
                  §§goto(addr0088);
               case 1:
                  §§goto(addr00bb);
                  §§push(this.component);
            }
            return;
         }
         §§goto(addr011f);
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.component);
            if(_loc1_ || _loc2_)
            {
               §§pop().inviteButton.addEventListener(MouseEvent.CLICK,this.onInviteAction);
               if(!_loc2_)
               {
                  addr004e:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
                  addr004b:
               }
               return;
            }
            §§goto(addr004e);
         }
         §§goto(addr004b);
      }
      
      private function onInviteAction(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:String = this.component.valueLabel.text as String;
         if(_loc3_)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_INVITE_FRIEND,_loc2_);
         }
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(_loc2_)
               {
                  addr003f:
                  this.component.inviteButton.removeEventListener(MouseEvent.CLICK,this.onInviteAction);
                  addr003c:
                  if(_loc2_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
               }
               return;
            }
            §§goto(addr003f);
         }
         §§goto(addr003c);
      }
      
      public function setData(param1:Object) : void
      {
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRemove();
            if(_loc1_)
            {
               addr001f:
               this.component.inviteButton.removeEventListener(MouseEvent.CLICK,this.onInviteAction);
            }
            return;
         }
         §§goto(addr001f);
      }
      
      public function get component() : FriendMiniLayer
      {
         return super.viewComponent as FriendMiniLayer;
      }
   }
}

