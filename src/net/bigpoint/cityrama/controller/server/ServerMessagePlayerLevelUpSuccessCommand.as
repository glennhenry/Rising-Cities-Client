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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc3_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         var _loc4_:MessageVo = MessageVo(param1.getBody());
         var _loc5_:Number = _loc4_.json.l as Number;
         var _loc6_:ConfigUserLevelDTO = _loc3_.getConfigByLevelId(_loc5_);
         if(!_loc8_)
         {
            _loc2_.userLevel = _loc6_.level;
            if(_loc9_ || Boolean(param1))
            {
               §§goto(addr007e);
            }
            §§goto(addr00d9);
         }
         addr007e:
         if(_loc3_.getNextFullLevel(_loc6_.id) != null)
         {
            if(_loc9_ || Boolean(this))
            {
               _loc2_.maxExperience = _loc3_.getNextFullLevel(_loc6_.id).requiredXP;
               if(_loc8_)
               {
               }
               addr00d9:
               _loc3_.currentLevelId = _loc5_;
               if(_loc9_)
               {
                  §§goto(addr00e5);
               }
            }
            §§goto(addr00f2);
         }
         else
         {
            _loc2_.maxExperience = _loc6_.requiredXP;
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               §§goto(addr00d9);
            }
         }
         addr00e5:
         if(!_loc3_.isSubLevel(_loc6_.id))
         {
            try
            {
               addr00f2:
               ExternalInterface.call("trackLevelUp",_loc6_.level);
               if(!(_loc8_ && Boolean(param1)))
               {
                  addr012f:
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_LEVEL_UP_SCREEN,_loc5_);
                  if(_loc8_ && Boolean(this))
                  {
                  }
               }
            }
            catch(e:Error)
            {
               §§push(e);
               var _temp_7:* = e;
               e = §§pop();
               §§goto(addr012f);
            }
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.SUBLEVEL_REACHED,_loc5_);
         }
      }
   }
}

