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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:String = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc4_:Vector.<String> = new Vector.<String>();
         for each(_loc5_ in _loc2_.json.ef)
         {
            if(!(_loc8_ && Boolean(_loc3_)))
            {
               _loc4_.push(_loc5_);
            }
         }
         if(_loc9_)
         {
            _loc3_.player.enabledFeatures = _loc4_;
            if(!(_loc8_ && Boolean(_loc3_)))
            {
               addr00b6:
               sendNotification(ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED);
            }
            return;
         }
         §§goto(addr00b6);
      }
   }
}

