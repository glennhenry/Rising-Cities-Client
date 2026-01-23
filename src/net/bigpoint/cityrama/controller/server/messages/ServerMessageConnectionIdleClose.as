package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.view.miniLayer.ConnectionLostMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConnectionLostMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageConnectionIdleClose extends SimpleCommand
   {
      
      public function ServerMessageConnectionIdleClose()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = super.facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         if(_loc5_)
         {
            _loc2_.disconnect();
         }
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc5_ || Boolean(_loc2_))
         {
            _loc3_.modal = true;
            if(_loc5_ || Boolean(param1))
            {
               _loc3_.viewClass = ConnectionLostMiniLayer;
               if(_loc5_ || Boolean(this))
               {
                  addr0081:
                  _loc3_.mediatorClass = ConnectionLostMiniLayerMediator;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     _loc3_.mediatorName = ConnectionLostMiniLayerMediator.NAME;
                     if(_loc5_)
                     {
                        _loc3_.data = null;
                        if(!_loc4_)
                        {
                           addr00bb:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr00bb);
            }
         }
         §§goto(addr0081);
      }
   }
}

