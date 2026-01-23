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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:PopupSettingsVo = null;
         var _loc7_:PopupSettingsVo = null;
         facade.sendNotification(ApplicationNotificationConstants.PAUSE_ALL_WALKERS);
         facade.sendNotification(ApplicationNotificationConstants.PAUSE_RENDERING);
         facade.sendNotification(ApplicationNotificationConstants.MINIMIZE_EMERGENCY_TV);
         var _loc2_:PopupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
         var _loc3_:PopupSettingsVo = PopupSettingsVo(param1.getBody());
         StaticSoundDelegate.playSound(StaticSoundDelegate.OPEN_POPUP);
         if(_loc3_.type != PopupSettingsVo.STACK_POPUP)
         {
            while(_loc2_.popupReferences[_loc3_.type].length)
            {
               _loc6_ = _loc2_.popupReferences[_loc3_.type][0];
               if(_loc6_.type != PopupSettingsVo.STACK_POPUP)
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc6_.mediatorName);
               }
            }
         }
         if(_loc3_.type == PopupSettingsVo.PAPER_POPUP)
         {
            while(_loc2_.popupReferences[PopupSettingsVo.MINI_POPUP].length)
            {
               _loc6_ = _loc2_.popupReferences[PopupSettingsVo.MINI_POPUP][0];
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc6_.mediatorName);
            }
            for each(_loc7_ in _loc2_.popupReferences[PopupSettingsVo.STACK_POPUP])
            {
               if(_loc7_.openedByUserAxn)
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc7_.mediatorName);
               }
            }
         }
         _loc2_.addPopupSettings(_loc3_);
         var _loc4_:TimerProxy = super.facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         _loc4_.render = false;
         var _loc5_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         _loc5_.component.mainView.confirmationGroup.removeAllElements();
      }
   }
}

