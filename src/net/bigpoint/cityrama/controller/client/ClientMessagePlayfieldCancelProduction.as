package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldCancelProduction extends SimpleCommand implements ICommand
   {
      
      public function ClientMessagePlayfieldCancelProduction()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ProductionFieldObjectVo = ProductionFieldObjectVo(param1.getBody());
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingDTO.id;
         var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_CANCEL_PRODUCTION);
         if(_loc6_ || Boolean(_loc2_))
         {
            _loc3_.sendMessage(_loc5_);
         }
      }
   }
}

