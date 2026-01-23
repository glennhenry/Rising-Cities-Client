package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldMoveBuildingCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessagePlayfieldMoveBuildingCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc3_.buildingDTO.id;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            _loc4_.x = _loc3_.matrixCoordinates.x;
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               _loc4_.y = _loc3_.matrixCoordinates.y;
            }
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_MOVE_BUILDING);
         if(!(_loc7_ && Boolean(this)))
         {
            _loc2_.sendMessage(_loc5_);
            if(_loc6_)
            {
               addr00c7:
               facade.sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
            }
            return;
         }
         §§goto(addr00c7);
      }
   }
}

