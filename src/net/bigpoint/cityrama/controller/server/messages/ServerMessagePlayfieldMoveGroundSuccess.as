package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldMoveGroundSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldMoveGroundSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:PlaneProxy = facade.retrieveProxy(PlaneProxy.NAME) as PlaneProxy;
         var _loc4_:MessageVo = MessageVo(param1.getBody());
         var _loc5_:IPlaneObject = _loc2_.getPlaneObjectById(_loc4_.json.g.id);
         if(!_loc5_)
         {
            return;
         }
         _loc3_.removeIPlaneObjectByData(_loc5_.objectVo);
         _loc5_.objectVo.groundDTO.posX = _loc5_.objectVo.matrix3dCoordinates.x;
         _loc5_.objectVo.groundDTO.posY = _loc5_.objectVo.matrix3dCoordinates.y;
         _loc3_.addIPlaneObjectByData(_loc5_.objectVo);
         _loc2_.reAddGameObjVoToMatrix(_loc5_.objectVo,_loc5_ as IInteraction);
      }
   }
}

