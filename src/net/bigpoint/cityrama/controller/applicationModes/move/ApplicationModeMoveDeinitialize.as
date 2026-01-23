package net.bigpoint.cityrama.controller.applicationModes.move
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
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
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.playfieldItemInventory.PlayfieldItemInventoryMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeMoveDeinitialize extends SimpleCommand
   {
      
      public function ApplicationModeMoveDeinitialize()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:BillboardObject = null;
         var _loc10_:ClientFieldObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:Cuboid = null;
         var _loc2_:FieldMoveProxy = FieldMoveProxy(facade.retrieveProxy(FieldMoveProxy.NAME));
         var _loc3_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc4_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         var _loc5_:BasementViewProxy = BasementViewProxy(facade.retrieveProxy(BasementViewProxy.NAME));
         var _loc6_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         _loc4_.tileGridVisiblity = false;
         _loc4_.itemGridVisiblity = false;
         _loc6_.restrictionGridVisibility = false;
         for each(_loc9_ in _loc3_.billboardList)
         {
            _loc9_.changeInteractionstate(true);
         }
         for each(_loc10_ in _loc3_.clientFieldObjectsList)
         {
            _loc10_.changeInteractionstate(true);
         }
         if(_loc2_.objectToMove != null)
         {
            if(_loc2_.objectToMove is BillboardObject)
            {
               _loc11_ = _loc2_.objectToMove as BillboardObject;
               _loc11_.billboardObjectVo.matrix3dCoordinates = _loc2_.originalPosition;
               _loc11_.shrinkHitzone();
               _loc11_.billboardObjectVo.isRestrictedByGround = false;
               _loc11_.billboardObjectVo.isBlockedByObject = false;
               sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,_loc2_.objectToMove);
               _loc2_.objectToMove.invalidateHighlightManager(HighlightManager.COLOR_RESET);
               _loc3_.reAddGameObjVoToMatrix(_loc11_.billboardObjectVo);
               if(_loc5_.isBaseViewEnabled)
               {
                  _loc5_.changeBaseViewForSingleBillboard(_loc11_);
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
               _loc11_.billboardObjectVo.isConnectedToStreet = _loc3_.iPlaneObjectVosByCuboid(_loc12_).length > 1;
               _loc11_.invalidateIconStateManager();
            }
            else if(_loc2_.objectToMove is IPlaneObject)
            {
               (_loc2_.objectToMove as IPlaneObject).objectVo.matrix3dCoordinates = _loc2_.originalPosition;
               if(_loc2_.objectToMove is PlaneObject)
               {
                  (_loc2_.objectToMove as PlaneObject).restEventListener();
               }
               else
               {
                  (_loc2_.objectToMove as PierObject).restEventListener();
               }
               sendNotification(ApplicationNotificationConstants.GROUND_MOVE_GROUND,_loc2_.objectToMove);
               TweenMax.to((_loc2_.objectToMove as IPlaneObject).container,0,{"colorTransform":{
                  "tint":255,
                  "tintAmount":0
               }});
               _loc3_.reAddGameObjVoToMatrix((_loc2_.objectToMove as IPlaneObject).objectVo,_loc2_.objectToMove);
            }
            _loc2_.objectToMove.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
            _loc2_.objectToMove = null;
         }
         facade.removeProxy(FieldMoveProxy.NAME);
         (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(true);
         facade.removeMediator(PlayfieldItemInventoryMediator.NAME);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
         facade.removeCommand(ApplicationNotificationConstants.INVENTORY_ITEM_SELECTED_FOR_MOVE);
         facade.removeCommand(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_ITEM_DESELECTED_FOR_MOVE);
         sendNotification(ApplicationNotificationConstants.MENU_SELECTED_DEFAULT_SUB_NAVIGATION_POINT);
         sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
         sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
         sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_MOVE_DEINIT);
         sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES);
      }
   }
}

