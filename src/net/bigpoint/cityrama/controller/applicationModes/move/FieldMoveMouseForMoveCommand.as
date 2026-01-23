package net.bigpoint.cityrama.controller.applicationModes.move
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.PowerplantFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.field3d.interfaces.IMatrixObject3D;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldMoveMouseForMoveCommand extends SimpleCommand
   {
      
      public function FieldMoveMouseForMoveCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc3_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc4_:FieldMoveProxy = FieldMoveProxy(facade.retrieveProxy(FieldMoveProxy.NAME));
         var _loc5_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         if(_loc4_.objectToMove != null)
         {
            _loc2_.setPositionByMouse(_loc3_.mouseMatrixPoint.x,_loc3_.mouseMatrixPoint.y);
            if(_loc4_.objectToMove is BillboardObject)
            {
               var _loc8_:BillboardObject = _loc4_.objectToMove as BillboardObject;
               var _loc7_:int = Math.round(_loc3_.mouseMatrixPoint.x - null.billboardObjectVo.configPlayfieldItemVo.sizeX / 2);
               var _loc6_:int = Math.round(_loc3_.mouseMatrixPoint.y - null.billboardObjectVo.configPlayfieldItemVo.sizeY / 2);
               if(null.xIndex == 0 && null.yIndex == 0 && (0 != _loc4_.originalPosition.x && 0 != _loc4_.originalPosition.y))
               {
                  return;
               }
               if(!_loc3_.checkIfRectIsInUsablePlayfieldSize(new Rectangle(0,0,null.billboardObjectVo.configPlayfieldItemVo.sizeX,null.billboardObjectVo.configPlayfieldItemVo.sizeY)))
               {
                  null.presentation.visible = false;
               }
               else
               {
                  null.presentation.visible = true;
                  var _loc9_:Boolean = _loc2_.selectedRectangleIsFree;
                  var _loc10_:Boolean = _loc5_.positionPossible(null.billboardObjectVo.configPlayfieldItemVo);
                  null.billboardObjectVo.isRestrictedByGround = false;
                  null.billboardObjectVo.isBlockedByBoulder = false;
                  null.billboardObjectVo.isBlockedByObject = false;
                  var _loc11_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
                  var _loc12_:Vector.<IGameObjectVo> = _loc11_.getGameObjectsByCuboid(_loc2_.selectedCuboid);
                  for each(var _loc13_ in null)
                  {
                     null.billboardObjectVo.isBlockedByObject = true;
                     if(null is BoulderObjectVo)
                     {
                        null.billboardObjectVo.isBlockedByBoulder = false;
                     }
                  }
                  null.billboardObjectVo.isRestrictedByGround = true;
                  var _loc14_:Vector.<ConfigGroundRestrictionDTO> = _loc5_.getAllRestrictionsForItem(null.billboardObjectVo.configPlayfieldItemVo);
                  var _loc15_:Boolean = false;
                  for each(var _loc16_ in null)
                  {
                     if(_loc16_.whiteList)
                     {
                        null.billboardObjectVo.terrainTypeNeeded = null.groundType;
                        _loc15_ = true;
                        break;
                     }
                  }
                  null.billboardObjectVo.terrainTypeNeeded = ServerRestrictionConstants.BUILDINGLAND;
                  null.invalidateHighlightManager(HighlightManager.INMOVE_DISALLOW_TINT);
                  null.updateIndex(0,0);
                  sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,_loc4_.objectToMove);
               }
               if(_loc4_.objectToMove is ShopFieldObject || _loc4_.objectToMove is IEmergencyInfrastructure)
               {
                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,(_loc4_.objectToMove as BillboardObject).billboardObjectVo);
               }
               if(_loc4_.objectToMove is ResidentialFieldObject || _loc4_.objectToMove is InfrastructureBuildingFieldObject || _loc4_.objectToMove is PowerplantFieldObject || _loc4_.objectToMove is ProductionFieldObject || _loc4_.objectToMove is ShopFieldObject || _loc4_.objectToMove is AcademyFieldObject || _loc4_.objectToMove is CinemaFieldObject || _loc4_.objectToMove is CitySquareFieldObject || _loc4_.objectToMove is ScheduledDropFieldObject || _loc4_.objectToMove is MysteryBuildingFieldObject)
               {
                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_ACTIVATED,null);
               }
               if(_loc4_.objectToMove is ResidentialFieldObject)
               {
                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_SHOPS_FOR_NEEDS,null.billboardObjectVo);
               }
               sendNotification(ApplicationNotificationConstants.MOUSE_MOVE_FOR_CHANGE_HEATMAP);
            }
            else if(_loc4_.objectToMove is IPlaneObject)
            {
               var _loc17_:IPlaneObject = _loc4_.objectToMove as IPlaneObject;
               _loc7_ = Math.round(_loc3_.mouseMatrixPoint.x - null.objectVo.configPlayfieldItemVo.sizeX / 2);
               _loc6_ = Math.round(_loc3_.mouseMatrixPoint.y - null.objectVo.configPlayfieldItemVo.sizeY / 2);
               if((null as IMatrixObject3D).xIndex == 0 && (null as IMatrixObject3D).yIndex == 0 && (0 != _loc4_.originalPosition.x && 0 != _loc4_.originalPosition.y))
               {
                  return;
               }
               if(!_loc3_.checkIfRectIsInUsablePlayfieldSize(new Rectangle(0,0,null.objectVo.configPlayfieldItemVo.sizeX,null.objectVo.configPlayfieldItemVo.sizeY)))
               {
                  null.presentation.visible = false;
                  null.container.visible = false;
               }
               else
               {
                  null.presentation.visible = true;
                  null.container.visible = true;
                  if(_loc2_.selectedRectangleIsFree && _loc5_.positionPossible(null.objectVo.configPlayfieldItemVo))
                  {
                     (null as IInteraction).invalidateHighlightManager(HighlightManager.INMOVE_ALLOW_MOVE_TINT);
                  }
                  else
                  {
                     (null as IInteraction).invalidateHighlightManager(HighlightManager.INMOVE_DISALLOW_TINT);
                  }
                  null.updateIndex(0,0);
                  sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,_loc4_.objectToMove);
               }
            }
         }
      }
   }
}

