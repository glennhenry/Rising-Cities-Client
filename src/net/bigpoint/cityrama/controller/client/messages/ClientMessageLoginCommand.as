package net.bigpoint.cityrama.controller.client.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.developertools.DeveloperSettingsProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageLoginCommand extends SimpleCommand
   {
      
      public function ClientMessageLoginCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:FlashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         var _loc4_:MessageVo = new MessageVo();
         var _loc5_:DeveloperSettingsProxy = DeveloperSettingsProxy(facade.retrieveProxy(DeveloperSettingsProxy.NAME));
         var _loc6_:Object = new Object();
         if(_loc3_.userId > 0)
         {
            _loc6_.uid = _loc3_.userId;
         }
         else
         {
            _loc6_.uid = _loc5_.devUserId;
         }
         if(_loc3_.sid)
         {
            _loc6_.ses = _loc3_.sid;
         }
         else
         {
            _loc6_.ses = "davidhaselhoff";
         }
         _loc4_.header = ServerMessageConstants.LOGIN;
         _loc4_.json = JSON.stringify(_loc6_);
         _loc2_.sendMessage(_loc4_);
      }
   }
}

