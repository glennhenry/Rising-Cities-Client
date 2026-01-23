package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageIllegalParamFailCommand extends SimpleCommand
   {
      
      public function ServerMessageIllegalParamFailCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = super.facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         if(!_loc3_)
         {
            _loc2_.disconnect();
            if(!(_loc3_ && _loc3_))
            {
               facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
            }
         }
      }
   }
}

