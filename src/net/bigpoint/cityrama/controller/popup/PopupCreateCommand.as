package net.bigpoint.cityrama.controller.popup
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PopupCreateCommand extends SimpleCommand
   {
      
      public function PopupCreateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:PopupSettingsVo = null;
         var _loc7_:PopupSettingsVo = null;
         if(_loc11_)
         {
            facade.sendNotification(ApplicationNotificationConstants.PAUSE_ALL_WALKERS);
            if(!_loc10_)
            {
               facade.sendNotification(ApplicationNotificationConstants.PAUSE_RENDERING);
               if(_loc11_ || Boolean(this))
               {
                  addr004e:
                  facade.sendNotification(ApplicationNotificationConstants.MINIMIZE_EMERGENCY_TV);
               }
               var _loc2_:PopupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
               var _loc3_:PopupSettingsVo = PopupSettingsVo(param1.getBody());
               if(_loc11_ || Boolean(_loc3_))
               {
                  StaticSoundDelegate.playSound(StaticSoundDelegate.OPEN_POPUP);
                  if(!_loc10_)
                  {
                     if(_loc3_.type != PopupSettingsVo.STACK_POPUP)
                     {
                        while(_loc2_.popupReferences[_loc3_.type].length)
                        {
                           _loc6_ = _loc2_.popupReferences[_loc3_.type][0];
                           if(_loc6_.type != PopupSettingsVo.STACK_POPUP)
                           {
                              if(_loc11_ || Boolean(_loc3_))
                              {
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc6_.mediatorName);
                              }
                           }
                        }
                        if(_loc11_)
                        {
                           addr00ff:
                           if(_loc3_.type == PopupSettingsVo.PAPER_POPUP)
                           {
                              if(_loc11_ || Boolean(this))
                              {
                                 while(_loc2_.popupReferences[PopupSettingsVo.MINI_POPUP].length)
                                 {
                                    _loc6_ = _loc2_.popupReferences[PopupSettingsVo.MINI_POPUP][0];
                                    if(_loc11_ || Boolean(this))
                                    {
                                       facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc6_.mediatorName);
                                    }
                                 }
                                 if(_loc11_)
                                 {
                                    §§goto(addr0175);
                                 }
                                 §§goto(addr01e2);
                              }
                              addr0175:
                              var _loc8_:int = 0;
                              if(_loc11_ || Boolean(param1))
                              {
                                 for each(_loc7_ in _loc2_.popupReferences[PopupSettingsVo.STACK_POPUP])
                                 {
                                    if(_loc7_.openedByUserAxn)
                                    {
                                       if(_loc11_ || Boolean(_loc2_))
                                       {
                                          facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc7_.mediatorName);
                                       }
                                    }
                                 }
                              }
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 addr01e2:
                                 _loc2_.addPopupSettings(_loc3_);
                              }
                              var _loc4_:TimerProxy = super.facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                              _loc4_.render = false;
                              var _loc5_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
                              _loc5_.component.mainView.confirmationGroup.removeAllElements();
                              return;
                           }
                        }
                        §§goto(addr01e2);
                        addr00e7:
                     }
                     §§goto(addr00ff);
                  }
               }
               §§goto(addr00e7);
            }
         }
         §§goto(addr004e);
      }
   }
}

