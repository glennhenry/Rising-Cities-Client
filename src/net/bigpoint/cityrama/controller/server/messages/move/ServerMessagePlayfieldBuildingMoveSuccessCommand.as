package net.bigpoint.cityrama.controller.server.messages.move
{
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingMoveSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldBuildingMoveSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc4_:MessageVo = MessageVo(param1.getBody());
         var _loc5_:BillboardObject = _loc2_.getBillboardById(_loc4_.json.bid);
         var _loc6_:Cuboid = _loc5_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
         _loc5_.billboardObjectVo.matrix3dCoordinates = _loc5_.billboardObjectVo.lastPositonHistoryPoint;
         _loc2_.removeGameObjectVofromMatrix(_loc5_.billboardObjectVo);
         if(_loc5_ is ResidentialFieldObject)
         {
            _loc3_.removeResidential((_loc5_ as ResidentialFieldObject).residentialFieldObjectVo);
         }
         else if(_loc5_ is ShopFieldObject)
         {
            _loc3_.removeShop(_loc5_ as ShopFieldObject);
         }
         _loc5_.billboardObjectVo.matrix3dCoordinates = _loc6_;
         _loc5_.billboardObjectVo.buildingDTO.posX = _loc5_.billboardObjectVo.matrix3dCoordinates.x = _loc5_.billboardObjectVo.matrixCoordinates.x = _loc6_.x;
         _loc5_.billboardObjectVo.buildingDTO.posY = _loc5_.billboardObjectVo.matrix3dCoordinates.y = _loc5_.billboardObjectVo.matrixCoordinates.y = _loc6_.y;
         _loc2_.reAddGameObjVoToMatrix(_loc5_.billboardObjectVo);
         if(_loc5_ is ResidentialFieldObject)
         {
            _loc3_.addResidential((_loc5_ as ResidentialFieldObject).residentialFieldObjectVo);
         }
         else if(_loc5_ is ShopFieldObject)
         {
            _loc3_.addShop(_loc5_ as ShopFieldObject);
            _loc3_.updateShopsOldResidentials((_loc5_ as ShopFieldObject).shopFieldObjectVo);
            _loc3_.updateShop((_loc5_ as ShopFieldObject).shopFieldObjectVo);
            (_loc5_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
         }
         var _loc7_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc5_ is IEmergencyInfrastructure)
         {
            var _loc8_:IEmergencyInfrastructure = _loc5_ as IEmergencyInfrastructure;
            _loc7_.addObject(null.emergencyFieldObjectVo);
         }
      }
   }
}

