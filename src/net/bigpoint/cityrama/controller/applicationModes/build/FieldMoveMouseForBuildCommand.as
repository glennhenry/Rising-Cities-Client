package net.bigpoint.cityrama.controller.applicationModes.build
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
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
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldMoveMouseForBuildCommand extends SimpleCommand
   {
      
      public function FieldMoveMouseForBuildCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Point = null;
         var _loc12_:Vector.<IGameObjectVo> = null;
         var _loc13_:IGameObjectVo = null;
         var _loc14_:Vector.<ConfigGroundRestrictionDTO> = null;
         var _loc15_:Boolean = false;
         var _loc16_:ConfigGroundRestrictionDTO = null;
         var _loc17_:StreetBuildProxy = null;
         var _loc18_:PlayerGoodsStockProxy = null;
         var _loc19_:* = false;
         var _loc20_:Number = NaN;
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc3_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc4_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc5_:FieldBuildProxy = FieldBuildProxy(facade.retrieveProxy(FieldBuildProxy.NAME));
         var _loc6_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         _loc2_.setPositionByMouse(_loc3_.mouseMatrixPoint.x,_loc3_.mouseMatrixPoint.y);
         if(_loc5_.billboardObjectToAdd != null)
         {
            _loc2_.overrideStreets = false;
            _loc7_ = Math.round(_loc3_.mouseMatrixPoint.x - _loc5_.billboardObjectToAdd.billboardObjectVo.configPlayfieldItemVo.sizeX / 2);
            _loc8_ = Math.round(_loc3_.mouseMatrixPoint.y - _loc5_.billboardObjectToAdd.billboardObjectVo.configPlayfieldItemVo.sizeY / 2);
            if(!_loc3_.checkIfRectIsInUsablePlayfieldSize(new Rectangle(_loc7_,_loc8_,_loc5_.billboardObjectToAdd.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc5_.billboardObjectToAdd.billboardObjectVo.configPlayfieldItemVo.sizeY)))
            {
               _loc5_.billboardObjectToAdd.presentation.visible = false;
            }
            else
            {
               _loc5_.billboardObjectToAdd.presentation.visible = true;
               _loc9_ = _loc2_.selectedRectangleIsFree;
               _loc10_ = _loc6_.positionPossible(_loc5_.billboardObjectToAdd.billboardObjectVo.configPlayfieldItemVo);
               _loc5_.billboardObjectToAdd.billboardObjectVo.isRestrictedByGround = false;
               _loc5_.billboardObjectToAdd.billboardObjectVo.isBlockedByBoulder = false;
               _loc5_.billboardObjectToAdd.billboardObjectVo.isBlockedByObject = false;
               if(_loc9_ && _loc10_)
               {
                  _loc5_.billboardObjectToAdd.invalidateHighlightManager(HighlightManager.INMOVE_ALLOW_MOVE_TINT);
               }
               else
               {
                  if(!_loc9_)
                  {
                     _loc12_ = _loc4_.getGameObjectsByCuboid(_loc2_.selectedCuboid);
                     for each(_loc13_ in _loc12_)
                     {
                        _loc5_.billboardObjectToAdd.billboardObjectVo.isBlockedByObject = true;
                        if(_loc13_ is BoulderObjectVo)
                        {
                           _loc5_.billboardObjectToAdd.billboardObjectVo.isBlockedByBoulder = false;
                        }
                     }
                  }
                  if(!_loc10_)
                  {
                     _loc5_.billboardObjectToAdd.billboardObjectVo.isRestrictedByGround = true;
                     _loc14_ = _loc6_.getAllRestrictionsForItem(_loc5_.billboardObjectToAdd.billboardObjectVo.configPlayfieldItemVo);
                     _loc15_ = false;
                     for each(_loc16_ in _loc14_)
                     {
                        if(_loc16_.whiteList)
                        {
                           _loc5_.billboardObjectToAdd.billboardObjectVo.terrainTypeNeeded = _loc16_.groundType;
                           _loc15_ = true;
                           break;
                        }
                     }
                     if(!_loc15_)
                     {
                        _loc5_.billboardObjectToAdd.billboardObjectVo.terrainTypeNeeded = ServerRestrictionConstants.BUILDINGLAND;
                     }
                  }
                  _loc5_.billboardObjectToAdd.invalidateHighlightManager(HighlightManager.INMOVE_DISALLOW_TINT);
               }
               _loc11_ = new Point(_loc7_,_loc8_);
               _loc5_.billboardObjectToAdd.updateIndex(_loc7_,_loc8_);
               if(_loc5_.billboardObjectToAdd is ShopFieldObject)
               {
                  if(!_loc5_.oldMatrixCoordinates || _loc11_.x != _loc5_.oldMatrixCoordinates.x || _loc11_.y != _loc5_.oldMatrixCoordinates.y)
                  {
                     sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_MOVE,(_loc5_.billboardObjectToAdd as ShopFieldObject).shopFieldObjectVo);
                     _loc5_.oldMatrixCoordinates = _loc11_;
                  }
               }
               if(_loc5_.billboardObjectToAdd is InfrastructureBuildingFieldObject || _loc5_.billboardObjectToAdd is ResidentialFieldObject || _loc5_.billboardObjectToAdd is PowerplantFieldObject || _loc5_.billboardObjectToAdd is ShopFieldObject || _loc5_.billboardObjectToAdd is AcademyFieldObject || _loc5_.billboardObjectToAdd is ScheduledDropFieldObject || _loc5_.billboardObjectToAdd is CitySquareFieldObject || _loc5_.billboardObjectToAdd is CinemaFieldObject || _loc5_.billboardObjectToAdd is ProductionFieldObject || _loc5_.billboardObjectToAdd is MysteryBuildingFieldObject)
               {
                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_ACTIVATED,_loc5_.billboardObjectToAdd);
               }
               if(_loc5_.billboardObjectToAdd is ResidentialFieldObject)
               {
                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM_CHECK_SHOPS_FOR_NEEDS,_loc5_.billboardObjectToAdd.billboardObjectVo);
               }
               sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,_loc5_.billboardObjectToAdd);
            }
            sendNotification(ApplicationNotificationConstants.MOUSE_MOVE_FOR_CHANGE_HEATMAP);
         }
         else if(_loc5_.planeObjectToAdd != null)
         {
            _loc17_ = facade.retrieveProxy(StreetBuildProxy.NAME) as StreetBuildProxy;
            _loc2_.overrideStreets = true;
            _loc7_ = Math.round(_loc3_.mouseMatrixPoint.x - _loc5_.planeObjectToAdd.objectVo.configPlayfieldItemVo.sizeX / 2);
            _loc8_ = Math.round(_loc3_.mouseMatrixPoint.y - _loc5_.planeObjectToAdd.objectVo.configPlayfieldItemVo.sizeY / 2);
            if(!_loc3_.checkIfRectIsInUsablePlayfieldSize(new Rectangle(_loc7_,_loc8_,_loc5_.planeObjectToAdd.objectVo.configPlayfieldItemVo.sizeX,_loc5_.planeObjectToAdd.objectVo.configPlayfieldItemVo.sizeY)))
            {
               _loc5_.planeObjectToAdd.presentation.visible = false;
               _loc5_.planeObjectToAdd.container.visible = false;
            }
            else
            {
               _loc5_.planeObjectToAdd.presentation.visible = true;
               _loc5_.planeObjectToAdd.container.visible = true;
               _loc18_ = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
               _loc19_ = true;
               _loc20_ = (facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy).ingameCurrency;
               if(_loc5_.selectedConfig.constructionPhases.length > 0)
               {
                  if(_loc5_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).listEntryOutputs.length > 0 && Boolean(_loc5_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY)))
                  {
                     _loc19_ = _loc20_ >= Math.abs(_loc5_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY).outputAmount);
                  }
               }
               if(_loc19_ && _loc2_.selectedRectangleIsFree && _loc6_.positionPossible(_loc5_.planeObjectToAdd.objectVo.configPlayfieldItemVo))
               {
                  (_loc5_.planeObjectToAdd as IInteraction).invalidateHighlightManager(HighlightManager.INMOVE_ALLOW_MOVE_TINT);
                  this.setTo(_loc17_,_loc5_,_loc7_,_loc8_,true);
               }
               else
               {
                  (_loc5_.planeObjectToAdd as IInteraction).invalidateHighlightManager(HighlightManager.INMOVE_DISALLOW_TINT);
                  this.setTo(_loc17_,_loc5_,_loc7_,_loc8_,false);
               }
               _loc5_.planeObjectToAdd.updateIndex(_loc7_,_loc8_);
               sendNotification(ApplicationNotificationConstants.FIELD_UPDATE_SINGLE_POSITION,_loc5_.planeObjectToAdd);
            }
         }
      }
      
      private function setTo(param1:StreetBuildProxy, param2:FieldBuildProxy, param3:Number, param4:Number, param5:Boolean) : void
      {
         if(param1.isStartSet)
         {
            if(param5)
            {
               param1.setTo(new Cuboid(param3,param4,1,1,1,1));
            }
            else
            {
               param1.clearTemporary();
               param1.setTo(null);
            }
            if(param1.getNumStreetsToBuild() > 0)
            {
               param2.planeObjectToAdd.presentation.visible = false;
               param2.planeObjectToAdd.container.visible = false;
            }
            else
            {
               param2.planeObjectToAdd.presentation.visible = true;
               param2.planeObjectToAdd.container.visible = true;
            }
         }
      }
   }
}

