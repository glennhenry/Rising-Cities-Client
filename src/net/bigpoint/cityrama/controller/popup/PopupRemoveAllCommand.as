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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:PopupSettingsVo = null;
         var _loc5_:Vector.<PopupSettingsVo> = null;
         var _loc6_:TimerProxy = null;
         var _loc2_:PopupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
         var _loc3_:PopupContainerMediator = facade.retrieveMediator(PopupContainerMediator.NAME) as PopupContainerMediator;
         for each(_loc5_ in _loc2_.popupReferences)
         {
            if(_loc10_ || Boolean(_loc2_))
            {
               while(_loc5_.length)
               {
                  _loc4_ = _loc5_[0];
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc4_.mediatorName);
                  }
               }
            }
         }
         if(!_loc9_)
         {
            §§push(_loc2_.popupReferences[PopupSettingsVo.MINI_POPUP].length == 0);
            if(!(_loc9_ && Boolean(this)))
            {
               var _temp_5:* = §§pop();
               §§push(_temp_5);
               if(_temp_5)
               {
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     addr00fd:
                     §§pop();
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        §§goto(addr012c);
                     }
                     §§goto(addr0140);
                  }
               }
               addr012c:
               §§goto(addr010c);
            }
            §§goto(addr00fd);
         }
         addr010c:
         if(_loc2_.popupReferences[PopupSettingsVo.PAPER_POPUP].length == 0)
         {
            if(_loc10_)
            {
               facade.sendNotification(ApplicationNotificationConstants.RESUME_ALL_WALKERS);
            }
            addr0140:
            _loc6_ = super.facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            _loc6_.render = true;
         }
      }
   }
}

