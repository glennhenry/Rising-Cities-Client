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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:ClientUIDataDTO = null;
         var _loc2_:MessageVo = param1.getBody() as MessageVo;
         var _loc3_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         if(!(_loc5_ && Boolean(this)))
         {
            if(_loc2_)
            {
               if(!_loc5_)
               {
                  if(_loc2_.json.dat)
                  {
                     addr0076:
                     _loc4_ = new ClientUIDataDTO(_loc2_.json.dat);
                     if(_loc4_)
                     {
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           if(_loc3_)
                           {
                              if(!_loc5_)
                              {
                                 _loc3_.updateUIData(_loc4_);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr0076);
            }
            addr00b0:
            return;
         }
         §§goto(addr0076);
      }
   }
}

