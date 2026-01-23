package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingInaugurate extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingInaugurate()
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
         var _loc2_:BillboardObjectVo = param1.getBody().vo as BillboardObjectVo;
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingDTO.id;
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            _loc4_.pid = _loc2_.inaugurationPhase.phaseId;
            if(_loc6_ || Boolean(param1))
            {
               if(param1.getBody().pop)
               {
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     addr00ac:
                     _loc4_.pop = param1.getBody().pop;
                  }
               }
            }
            var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BUILDING_INAUGURATE);
            if(!_loc7_)
            {
               _loc3_.sendMessage(_loc5_);
            }
            return;
         }
         §§goto(addr00ac);
      }
   }
}

