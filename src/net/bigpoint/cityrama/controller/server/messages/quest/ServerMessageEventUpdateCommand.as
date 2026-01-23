package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventSaleDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUpcomingEventDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEventUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessageEventUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Vector.<ConfigUpcomingEventDTO> = null;
         var _loc7_:Object = null;
         var _loc8_:ConfigEventSaleDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc2_:MessageVo = param1.getBody() as MessageVo;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:Vector.<ConfigEventDTO> = new Vector.<ConfigEventDTO>(0);
         for each(_loc5_ in _loc2_.json.e)
         {
            if(_loc5_.y == ServerEventTypeConst.SALE)
            {
               _loc8_ = new ConfigEventSaleDTO(_loc5_);
               for each(_loc9_ in _loc8_.listOfAffectedResources)
               {
                  ConfigFactory.buildConfigOutputDTO(_loc9_);
               }
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc4_.push(new ConfigEventDTO(_loc5_));
            }
         }
         _loc3_.updateEvents(_loc4_);
         _loc6_ = new Vector.<ConfigUpcomingEventDTO>(0);
         for each(_loc7_ in _loc2_.json.u)
         {
            _loc6_.push(new ConfigUpcomingEventDTO(_loc7_));
         }
         _loc3_.updateUpcommingEvents(_loc6_);
         sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         sendNotification(ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER);
      }
   }
}

