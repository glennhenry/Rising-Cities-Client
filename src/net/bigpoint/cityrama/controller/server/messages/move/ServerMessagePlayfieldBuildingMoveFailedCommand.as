package net.bigpoint.cityrama.controller.server.messages.move
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingMoveFailedCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldBuildingMoveFailedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc4_:NeedMatrixProxy = NeedMatrixProxy(facade.retrieveProxy(NeedMatrixProxy.NAME));
         var _loc5_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc6_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc5_ != null)
         {
            _loc5_.billboardObjectVo.matrix3dCoordinates = new Cuboid(_loc2_.json.x,_loc2_.json.y,0,_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeY,_loc5_.billboardObjectVo.configPlayfieldItemVo.zLevels.length);
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,_loc5_);
            _loc3_.reAddGameObjVoToMatrix(_loc5_.billboardObjectVo);
            if(_loc5_ is ShopFieldObject)
            {
               _loc4_.addShop(_loc5_ as ShopFieldObject);
               (_loc5_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
            }
            if(_loc5_ is IEmergencyInfrastructure)
            {
               _loc6_.addObject((_loc5_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
            }
            _loc5_.billboardObjectVo.userInteractionLocked = false;
            return;
         }
         throw new RamaCityError("ServerMessagePlayfieldBuildingMoveFailedCommand: moved Building NULL!");
      }
   }
}

