package net.bigpoint.cityrama.controller.popup
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.popupContainer.PopupContainerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PopupRemoveAllCommand extends SimpleCommand
   {
      
      public function PopupRemoveAllCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:PopupSettingsVo = null;
         var _loc5_:Vector.<PopupSettingsVo> = null;
         var _loc6_:TimerProxy = null;
         var _loc2_:PopupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
         var _loc3_:PopupContainerMediator = facade.retrieveMediator(PopupContainerMediator.NAME) as PopupContainerMediator;
         for each(_loc5_ in _loc2_.popupReferences)
         {
            while(_loc5_.length)
            {
               _loc4_ = _loc5_[0];
               sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc4_.mediatorName);
            }
         }
         if(_loc2_.popupReferences[PopupSettingsVo.MINI_POPUP].length == 0 && _loc2_.popupReferences[PopupSettingsVo.PAPER_POPUP].length == 0)
         {
            facade.sendNotification(ApplicationNotificationConstants.RESUME_ALL_WALKERS);
            _loc6_ = super.facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            _loc6_.render = true;
         }
      }
   }
}

