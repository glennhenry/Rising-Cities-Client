package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.vo.PlayfieldItemCreateVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldItemCreateCommand extends SimpleCommand
   {
      
      private static const PERMISSION:String = "_PERMISSION";
      
      public function ClientMessagePlayfieldItemCreateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:String = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:PlayfieldItemCreateVo = param1.getBody() as PlayfieldItemCreateVo;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:BillboardObjectVo = _loc3_.billboardObjectVo;
         var _loc5_:Object = new Object();
         if(_loc3_.billboardObjectVo is DecorationFieldObjectVo)
         {
            _loc5_.cdi = _loc4_.configPlayfieldItemVo.id;
            _loc6_ = ServerMessageConstants.PLAYFIELD_DECORATION_CREATE;
         }
         else
         {
            _loc5_.cbi = _loc4_.configPlayfieldItemVo.id;
            _loc6_ = ServerMessageConstants.PLAYFIELD_BUILDING_CREATE;
         }
         _loc5_.x = _loc4_.matrix3dCoordinates.x;
         _loc5_.y = _loc4_.matrix3dCoordinates.y;
         if(_loc3_.buyPermission)
         {
            _loc6_ += PERMISSION;
         }
         var _loc7_:MessageVo = _loc2_.createMessage(_loc5_,_loc6_);
         _loc2_.sendMessage(_loc7_);
         _loc4_.informationFloaterPhase = _loc4_.configPlayfieldItemVo.constructionPhases[0];
      }
   }
}

