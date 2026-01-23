package net.bigpoint.cityrama.controller.server.messages.common
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageRentCollectorSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageRentCollectorSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:ResourceDTO = null;
         var _loc9_:Object = null;
         var _loc10_:MessageVo = null;
         var _loc11_:Object = null;
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc3_:MessageVo = param1.getBody() as MessageVo;
         var _loc5_:Object = {
            "vc":0,
            "ep":0,
            "pp":0
         };
         var _loc6_:Number = _loc2_.ingameCurrency;
         var _loc7_:Number = _loc2_.productionPoints;
         var _loc8_:Number = _loc2_.educationPoints;
         for each(_loc9_ in _loc3_.json.sm)
         {
            _loc10_ = new MessageVo();
            _loc10_.json = _loc9_.b;
            _loc10_.header = _loc9_.h;
            sendNotification(ServerNotificationConstants.SERVER_MESSAGE_ + _loc10_.header,_loc10_);
            if(_loc10_.header == ServerMessageConstants.RESOURCES)
            {
               for each(_loc11_ in _loc10_.json.res)
               {
                  _loc4_ = ConfigFactory.buildResourceDTO(_loc11_);
                  switch(_loc4_.config.type)
                  {
                     case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                        _loc5_.vc = _loc4_.amount - _loc6_;
                        break;
                     case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                        _loc5_.ep = _loc4_.amount - _loc8_;
                        break;
                     case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                        _loc5_.pp = _loc4_.amount - _loc7_;
                  }
               }
            }
         }
         if(!(_loc5_.vc == 0 && _loc5_.pp == 0 && _loc5_.ep == 0))
         {
            sendNotification(ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_SUCCESS,_loc5_);
         }
      }
   }
}

