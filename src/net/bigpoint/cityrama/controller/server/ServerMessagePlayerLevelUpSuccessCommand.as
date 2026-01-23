package net.bigpoint.cityrama.controller.server
{
   import flash.external.ExternalInterface;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayerLevelUpSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayerLevelUpSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc3_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         var _loc4_:MessageVo = MessageVo(param1.getBody());
         var _loc5_:Number = _loc4_.json.l as Number;
         var _loc6_:ConfigUserLevelDTO = _loc3_.getConfigByLevelId(_loc5_);
         _loc2_.userLevel = _loc6_.level;
         if(_loc3_.getNextFullLevel(_loc6_.id) != null)
         {
            _loc2_.maxExperience = _loc3_.getNextFullLevel(_loc6_.id).requiredXP;
         }
         else
         {
            _loc2_.maxExperience = _loc6_.requiredXP;
         }
         _loc3_.currentLevelId = _loc5_;
         if(!_loc3_.isSubLevel(_loc6_.id))
         {
            try
            {
               ExternalInterface.call("trackLevelUp",_loc6_.level);
            }
            catch(e:Error)
            {
            }
            facade.sendNotification(ApplicationNotificationConstants.OPEN_LEVEL_UP_SCREEN,_loc5_);
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.SUBLEVEL_REACHED,_loc5_);
         }
      }
   }
}

