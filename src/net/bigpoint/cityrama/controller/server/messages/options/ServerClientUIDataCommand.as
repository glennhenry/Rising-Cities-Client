package net.bigpoint.cityrama.controller.server.messages.options
{
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ClientUIDataDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerClientUIDataCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerClientUIDataCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = param1.getBody() as MessageVo;
         var _loc3_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         if(_loc2_)
         {
            if(_loc2_.json.dat)
            {
               var _loc4_:ClientUIDataDTO = new ClientUIDataDTO(_loc2_.json.dat);
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     _loc3_.updateUIData(null);
                  }
               }
            }
         }
      }
   }
}

