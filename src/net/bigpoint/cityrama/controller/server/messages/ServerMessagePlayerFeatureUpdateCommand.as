package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayerFeatureUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayerFeatureUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:String = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc4_:Vector.<String> = new Vector.<String>();
         for each(_loc5_ in _loc2_.json.ef)
         {
            _loc4_.push(_loc5_);
         }
         _loc3_.player.enabledFeatures = _loc4_;
         sendNotification(ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED);
      }
   }
}

