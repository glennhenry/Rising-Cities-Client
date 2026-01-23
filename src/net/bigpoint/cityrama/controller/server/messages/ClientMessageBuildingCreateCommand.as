package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.vo.PlayfieldItemCreateVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingCreateCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingCreateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:PlayfieldItemCreateVo = param1.getBody() as PlayfieldItemCreateVo;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:BillboardObjectVo = _loc3_.billboardObjectVo;
         var _loc5_:Object = new Object();
         _loc5_.cbi = _loc4_.configPlayfieldItemVo.id;
         _loc5_.x = _loc4_.matrix3dCoordinates.x;
         _loc5_.y = _loc4_.matrix3dCoordinates.y;
         var _loc6_:* = ServerMessageConstants.PLAYFIELD_BUILDING_CREATE;
         if(_loc3_.buyPermission)
         {
            _loc6_ += "_PERMISSION";
         }
         var _loc7_:MessageVo = _loc2_.createMessage(_loc5_,_loc6_);
         _loc2_.sendMessage(_loc7_);
         _loc4_.informationFloaterPhase = _loc4_.configPlayfieldItemVo.constructionPhases[0];
      }
   }
}

