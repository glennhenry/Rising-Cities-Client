package net.bigpoint.cityrama.controller.applicationModes.move
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickToPlaceFieldMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldClickToPlaceFieldMoveItemCommand()
      {
         super();
      }
      
      private static function checkForIdenticalPosition(param1:Cuboid, param2:Cuboid) : Boolean
      {
         return param1.y == param2.y && param1.x == param2.x && param1.z == param2.z;
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc11_:IInteraction = null;
         var _loc12_:ConfigPlayfieldItemDTO = null;
         var _loc13_:BillboardObject = null;
         var _loc14_:ClientFieldObject = null;
         var _loc15_:BillboardObject = null;
         var _loc16_:SecurityGradeHeatMapMediator = null;
         var _loc17_:SecurityGradeHeatMapMediator = null;
         var _loc18_:IPlaneObject = null;
         var _loc2_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc3_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc4_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc5_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc9_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc10_:PlayFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
         if(_loc2_.objectToMove != null && _loc3_.selectedRectangleIsFree)
         {
            _loc11_ = _loc2_.objectToMove;
            if(_loc11_ is BillboardObject)
            {
               _loc12_ = (_loc11_ as BillboardObject).billboardObjectVo.configPlayfieldItemVo;
            }
            else if(_loc2_.objectToMove is IPlaneObject)
            {
               _loc12_ = (_loc11_ as IPlaneObject).objectVo.configPlayfieldItemVo;
            }
            if(_loc4_.positionPossible(_loc12_))
            {
               if(_loc11_ is BillboardObject)
               {
                  _loc15_ = _loc11_ as BillboardObject;
                  _loc5_.playBuildingClick();
                  _loc15_.billboardObjectVo.matrix3dCoordinates = _loc3_.selectedCuboid;
                  _loc15_.shrinkHitzone();
                  if(!checkForIdenticalPosition(_loc3_.selectedCuboid,_loc2_.originalPosition))
                  {
                     if(_loc15_ is DecorationFieldObject)
                     {
                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_MOVE,_loc15_.billboardObjectVo);
                     }
                     else
                     {
                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_BUILDING,_loc15_.billboardObjectVo);
                     }
                     if(_loc15_ is IEmergencyInfrastructure)
                     {
                        _loc16_ = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
                        _loc16_.hideRangeRect();
                     }
                  }
                  else
                  {
                     _loc6_.reAddGameObjVoToMatrix(_loc15_.billboardObjectVo);
                     if(_loc15_ is ShopFieldObject)
                     {
                        _loc7_.addShop(_loc15_ as ShopFieldObject);
                        (_loc15_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                        sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                     }
                     if(_loc15_ is IEmergencyInfrastructure)
                     {
                        _loc8_.addObject((_loc15_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                        _loc17_ = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
                        _loc17_.hideRangeRect();
                     }
                  }
                  TweenMax.to(_loc15_.presentation,0,{"colorTransform":{
                     "tint":0,
                     "tintAmount":0
                  }});
                  if(_loc15_ is ShopFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                  }
                  else if(_loc15_ is ResidentialFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                  }
                  if(_loc9_.isBaseViewEnabled)
                  {
                     _loc9_.changeBaseViewForSingleBillboard(_loc15_);
                  }
               }
               else if(_loc11_ is IPlaneObject)
               {
                  _loc18_ = _loc11_ as IPlaneObject;
                  _loc18_.objectVo.matrix3dCoordinates = _loc3_.selectedCuboid;
                  _loc5_.playStreetBuild();
                  if(!checkForIdenticalPosition(_loc3_.selectedCuboid,_loc2_.originalPosition))
                  {
                     sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_GROUND,_loc18_.objectVo);
                  }
                  else
                  {
                     _loc6_.reAddGameObjVoToMatrix(_loc18_.objectVo,_loc11_);
                  }
                  TweenMax.to(_loc18_.container,0,{"colorTransform":{
                     "tint":0,
                     "tintAmount":0
                  }});
               }
               sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
               _loc4_.restrictionGridVisibility = false;
               _loc2_.objectToMove = null;
               _loc3_.tileGridVisiblity = false;
               _loc3_.itemGridVisiblity = false;
               sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
               _loc10_.resetHighlightedShops();
               _loc10_.resetHighlight();
               facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
               facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
               facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
               for each(_loc13_ in _loc6_.billboardList)
               {
                  _loc13_.changeInteractionstate(true);
               }
               for each(_loc14_ in _loc6_.clientFieldObjectsList)
               {
                  _loc14_.changeInteractionstate(true);
               }
            }
         }
      }
   }
}

