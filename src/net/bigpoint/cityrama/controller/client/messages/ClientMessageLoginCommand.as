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
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:FlashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         var _loc4_:MessageVo = new MessageVo();
         var _loc5_:DeveloperSettingsProxy = DeveloperSettingsProxy(facade.retrieveProxy(DeveloperSettingsProxy.NAME));
         var _loc6_:Object = new Object();
         if(_loc7_)
         {
            if(_loc3_.userId > 0)
            {
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  _loc6_.uid = _loc3_.userId;
                  if(!_loc8_)
                  {
                     §§goto(addr00be);
                  }
                  §§goto(addr0149);
               }
               §§goto(addr012d);
            }
            else
            {
               _loc6_.uid = _loc5_.devUserId;
               if(_loc7_ || Boolean(_loc3_))
               {
                  addr00be:
                  if(_loc3_.sid)
                  {
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        _loc6_.ses = _loc3_.sid;
                        if(_loc8_ && Boolean(_loc3_))
                        {
                        }
                        _loc4_.header = ServerMessageConstants.LOGIN;
                        addr0108:
                        if(_loc7_ || Boolean(this))
                        {
                           §§goto(addr012d);
                        }
                        §§goto(addr0149);
                     }
                     addr012d:
                     _loc4_.json = JSON.stringify(_loc6_);
                     if(!(_loc8_ && Boolean(this)))
                     {
                        addr0149:
                        _loc2_.sendMessage(_loc4_);
                     }
                     §§goto(addr0150);
                  }
                  else
                  {
                     _loc6_.ses = "davidhaselhoff";
                     if(!(_loc8_ && Boolean(_loc3_)))
                     {
                        §§goto(addr0108);
                     }
                  }
                  addr0150:
                  return;
               }
            }
         }
         §§goto(addr0108);
      }
   }
}

