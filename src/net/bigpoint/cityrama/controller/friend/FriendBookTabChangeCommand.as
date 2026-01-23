package net.bigpoint.cityrama.controller.friend
{
   import net.bigpoint.cityrama.view.friendBook.FriendPopupMediator;
   import net.bigpoint.cityrama.view.friendBook.FriendsTabMediator;
   import net.bigpoint.cityrama.view.friendBook.InviteTabMediator;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FriendBookTabChangeCommand extends SimpleCommand
   {
      
      public function FriendBookTabChangeCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:FriendBook = null;
         var _loc3_:String = null;
         var _loc4_:FriendsTabMediator = null;
         var _loc5_:InviteTabMediator = null;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            if(param1.getBody())
            {
               addr0041:
               _loc2_ = param1.getBody().container as FriendBook;
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  _loc3_ = param1.getBody().content;
               }
               var _loc6_:* = _loc3_;
               if(_loc8_ || Boolean(this))
               {
                  §§push(FriendPopupMediator.FRIENDS);
                  if(!_loc7_)
                  {
                     §§push(_loc6_);
                     if(!_loc7_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc7_ && Boolean(this)))
                           {
                              addr0155:
                              §§push(0);
                              if(_loc8_ || Boolean(this))
                              {
                              }
                           }
                           else
                           {
                              addr01b4:
                              §§push(2);
                              if(_loc7_ && Boolean(this))
                              {
                              }
                           }
                           §§goto(addr01d4);
                        }
                        else
                        {
                           §§push(FriendPopupMediator.INVITE);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              addr017d:
                              §§push(_loc6_);
                              if(!_loc7_)
                              {
                                 addr0185:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(1);
                                       if(_loc8_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr01b4);
                                    }
                                    §§goto(addr01d4);
                                 }
                                 else
                                 {
                                    §§goto(addr01b0);
                                 }
                              }
                              addr01b0:
                              §§goto(addr01ae);
                           }
                           addr01ae:
                           if(FriendPopupMediator.MESSAGES === _loc6_)
                           {
                              §§goto(addr01b4);
                           }
                           else
                           {
                              §§push(3);
                           }
                           addr01d4:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc4_ = facade.retrieveMediator(FriendsTabMediator.NAME) as FriendsTabMediator;
                                 if(!_loc4_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    _loc4_ = new FriendsTabMediator(_loc2_);
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       facade.registerMediator(_loc4_);
                                    }
                                 }
                                 _loc4_.init();
                                 break;
                              case 1:
                                 _loc5_ = facade.retrieveMediator(InviteTabMediator.NAME) as InviteTabMediator;
                                 if(!_loc5_)
                                 {
                                    if(!(_loc8_ || Boolean(_loc2_)))
                                    {
                                       break;
                                    }
                                    _loc5_ = new InviteTabMediator(_loc2_);
                                    if(_loc8_)
                                    {
                                       facade.registerMediator(_loc5_);
                                    }
                                 }
                                 _loc5_.init();
                                 break;
                              case 2:
                           }
                           §§goto(addr01e7);
                        }
                     }
                     §§goto(addr0185);
                  }
                  §§goto(addr017d);
               }
               §§goto(addr0155);
            }
            addr01e7:
            return;
         }
         §§goto(addr0041);
      }
   }
}

