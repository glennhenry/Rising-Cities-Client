package net.bigpoint.cityrama.controller.newsscreen
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.newsscreen.NewsscreenLayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNewsscreenListDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayerNewsscreenUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayerNewsscreenUpdateCommand()
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
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ConfigNewsscreenListDTO = new ConfigNewsscreenListDTO(_loc2_.json.ns);
         var _loc4_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc5_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         if(_loc6_)
         {
            _loc4_.player.configNewsscreenList = _loc3_;
            if(!(_loc7_ && Boolean(param1)))
            {
               _loc5_.refreshData();
               if(!_loc7_)
               {
                  addr009e:
                  sendNotification(ApplicationNotificationConstants.OPEN_NEWSSCREEN_POPUP);
               }
               §§goto(addr00a8);
            }
            §§goto(addr009e);
         }
         addr00a8:
      }
   }
}

