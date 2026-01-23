package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerConnectionClosed extends SimpleCommand
   {
      
      public function ServerConnectionClosed()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ServerConfigProxy = ServerConfigProxy(facade.retrieveProxy(ServerConfigProxy.NAME));
         var _loc3_:int = 1;
         if(_loc5_)
         {
            _loc2_.requestUrlIgnoreHost = _loc2_.gameServer.host;
            if(_loc5_)
            {
               §§push(_loc2_.connectionCounter);
               if(_loc5_ || Boolean(param1))
               {
                  §§push(3);
                  if(_loc5_ || Boolean(this))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           _loc2_.loadServer(_loc3_);
                           if(_loc4_ && Boolean(param1))
                           {
                              addr00b4:
                              facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
                           }
                        }
                     }
                     else
                     {
                        addr00aa:
                        addr00a8:
                        if(_loc2_.connectionCounter == 3)
                        {
                           if(_loc5_)
                           {
                              §§goto(addr00b4);
                           }
                        }
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr00a8);
            }
         }
         addr00c0:
      }
   }
}

