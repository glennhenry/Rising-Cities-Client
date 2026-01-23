package net.bigpoint.cityrama.controller.friend
{
   import flash.display.StageDisplayState;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.friendBook.FriendPopupMediator;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFriendBookCommand extends SimpleCommand
   {
      
      public function OpenFriendBookCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:PopupSettingsVo = null;
         var _loc2_:String = "messages";
         if(_loc8_ || Boolean(param1))
         {
            if(param1.getBody() != null)
            {
               if(!_loc7_)
               {
                  if(param1.getBody() is String)
                  {
                     if(_loc8_)
                     {
                        addr004d:
                        _loc2_ = param1.getBody() as String;
                     }
                  }
                  addr0056:
                  var _loc3_:MainMenuMediator = facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator;
                  var _loc4_:LayoutProxy = facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
                  if(_loc4_.displayState == StageDisplayState.FULL_SCREEN)
                  {
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        _loc4_.inFullScreenBeforeOpenFriendBook = true;
                        if(_loc8_)
                        {
                           _loc4_.changeDisplayState();
                        }
                     }
                  }
                  var _loc5_:FriendPopupMediator = facade.retrieveMediator(FriendPopupMediator.NAME) as FriendPopupMediator;
                  if(!_loc5_)
                  {
                     if(_loc8_)
                     {
                        _loc6_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                        _loc6_.modal = true;
                        if(_loc8_)
                        {
                           _loc6_.viewClass = FriendBook;
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              §§goto(addr0106);
                           }
                           §§goto(addr0124);
                        }
                        addr0106:
                        _loc6_.mediatorClass = FriendPopupMediator;
                        if(_loc8_)
                        {
                           _loc6_.mediatorName = FriendPopupMediator.NAME;
                           if(!_loc7_)
                           {
                              addr0124:
                              _loc6_.data = _loc2_;
                              if(_loc8_)
                              {
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    addr0154:
                                    §§push(_loc3_.component);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop().friends);
                                       if(_loc8_)
                                       {
                                          if(!§§pop().selected)
                                          {
                                             if(_loc8_ || Boolean(_loc2_))
                                             {
                                                §§push(_loc3_.component);
                                                if(_loc8_ || Boolean(param1))
                                                {
                                                   addr018c:
                                                   §§push(§§pop().friends);
                                                   if(_loc8_ || Boolean(_loc2_))
                                                   {
                                                      §§push(false);
                                                      if(!(_loc7_ && Boolean(param1)))
                                                      {
                                                         §§pop().dispatchChangeFlag = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            addr01c8:
                                                            _loc3_.component.friends.selected = true;
                                                            addr01c7:
                                                            addr01c4:
                                                            addr01c1:
                                                         }
                                                         §§goto(addr01cb);
                                                      }
                                                      §§goto(addr01c8);
                                                   }
                                                   §§goto(addr01c7);
                                                }
                                                §§goto(addr01c4);
                                             }
                                             §§goto(addr01c1);
                                          }
                                          §§goto(addr01cb);
                                       }
                                       §§goto(addr01c7);
                                    }
                                    §§goto(addr018c);
                                 }
                              }
                              §§goto(addr01cb);
                           }
                           §§goto(addr0154);
                        }
                        addr01cb:
                        return;
                     }
                  }
                  else
                  {
                     _loc5_.setData(_loc2_);
                  }
                  §§goto(addr0154);
               }
               §§goto(addr004d);
            }
         }
         §§goto(addr0056);
      }
   }
}

