package net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToSelectFieldMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOutForMoveCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOverForMoveCommand;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
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
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ResetSelectedFieldItemForMoveCommand extends SimpleCommand implements ICommand
   {
      
      public function ResetSelectedFieldItemForMoveCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:BillboardObject = null;
         var _loc10_:ClientFieldObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:Cuboid = null;
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc3_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc5_.objectToMove != null)
         {
            _loc2_.tileGridVisiblity = false;
            _loc2_.itemGridVisiblity = false;
            sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
            _loc3_.restrictionGridVisibility = false;
            for each(_loc9_ in _loc4_.billboardList)
            {
               _loc9_.changeInteractionstate(true);
            }
            for each(_loc10_ in _loc4_.clientFieldObjectsList)
            {
               _loc10_.changeInteractionstate(true);
            }
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
            if(_loc5_.objectToMove is BillboardObject)
            {
               _loc11_ = _loc5_.objectToMove as BillboardObject;
               _loc11_.billboardObjectVo.matrix3dCoordinates = _loc5_.originalPosition;
               _loc11_.shrinkHitzone();
               _loc11_.billboardObjectVo.isRestrictedByGround = false;
               _loc11_.billboardObjectVo.isBlockedByObject = false;
               sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,_loc11_);
               _loc5_.objectToMove.invalidateHighlightManager(HighlightManager.COLOR_RESET);
               _loc4_.reAddGameObjVoToMatrix(_loc11_.billboardObjectVo);
               if(_loc6_.isBaseViewEnabled)
               {
                  _loc6_.changeBaseViewForSingleBillboard(_loc11_);
               }
               if(_loc11_ is ShopFieldObject)
               {
                  _loc7_.addShop(_loc11_ as ShopFieldObject);
                  (_loc11_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                  facade.sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
               }
               else if(_loc11_ is ResidentialFieldObject)
               {
                  facade.sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
               }
               else if(_loc11_ is IEmergencyInfrastructure)
               {
                  _loc8_.addObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                  facade.sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
                  PlayFieldHighlightedObjectsProxy(facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME)).resetHighlight();
               }
               _loc12_ = _loc11_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
               _loc12_.width += 2;
               _loc12_.height += 2;
               --_loc12_.x;
               --_loc12_.y;
               _loc11_.billboardObjectVo.isConnectedToStreet = _loc4_.iPlaneObjectVosByCuboid(_loc12_).length > 1;
               _loc11_.invalidateIconStateManager();
            }
            else if(_loc5_.objectToMove is IPlaneObject)
            {
               (_loc5_.objectToMove as IPlaneObject).objectVo.matrix3dCoordinates = _loc5_.originalPosition;
               if(_loc5_.objectToMove is PlaneObject)
               {
                  (_loc5_.objectToMove as PlaneObject).restEventListener();
               }
               else
               {
                  (_loc5_.objectToMove as PierObject).restEventListener();
               }
               sendNotification(ApplicationNotificationConstants.GROUND_MOVE_GROUND,_loc5_.objectToMove);
               TweenMax.to((_loc5_.objectToMove as IPlaneObject).container,0,{"colorTransform":{
                  "tint":255,
                  "tintAmount":0
               }});
               _loc4_.reAddGameObjVoToMatrix((_loc5_.objectToMove as IPlaneObject).objectVo,_loc5_.objectToMove);
            }
            _loc5_.objectToMove.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
            _loc5_.objectToMove = null;
            sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
         }
      }
   }
}

