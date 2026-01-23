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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ConfigNewsscreenListDTO = new ConfigNewsscreenListDTO(_loc2_.json.ns);
         var _loc4_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc5_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         _loc4_.player.configNewsscreenList = _loc3_;
         _loc5_.refreshData();
         sendNotification(ApplicationNotificationConstants.OPEN_NEWSSCREEN_POPUP);
      }
   }
}

