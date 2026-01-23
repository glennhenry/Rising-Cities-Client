package net.bigpoint.cityrama.controller.applicationModes.move
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickToPlaceInventoryMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldClickToPlaceInventoryMoveItemCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:BillboardObject = null;
         var _loc10_:BillboardObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:ClientFieldObject = null;
         var _loc2_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc3_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc4_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc5_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:PlayFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
         var _loc8_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(_loc2_.objectToMove != null && _loc3_.selectedRectangleIsFree)
         {
            if(_loc2_.objectToMove is BillboardObject)
            {
               _loc9_ = BillboardObject(_loc2_.objectToMove);
               if(_loc4_.positionPossible(_loc9_.billboardObjectVo.configPlayfieldItemVo))
               {
                  _loc5_.playBuildingClick();
                  _loc9_.billboardObjectVo.matrix3dCoordinates = _loc3_.selectedCuboid;
                  _loc9_.shrinkHitzone();
                  _loc8_.addGameObjectByData(_loc9_.billboardObjectVo);
                  _loc10_ = BillboardObject(_loc8_.getObjectByVo(_loc9_.billboardObjectVo));
                  if(_loc6_.isBaseViewEnabled)
                  {
                     _loc6_.changeBaseViewForSingleBillboard(_loc10_);
                  }
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_INVENTORYITEM_TO_PLAYFIELD,_loc9_);
                  facade.sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc9_);
                  sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
                  if(_loc10_ is ShopFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                  }
                  else if(_loc10_ is ResidentialFieldObject)
                  {
                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                  }
                  _loc4_.restrictionGridVisibility = false;
                  _loc2_.objectToMove = null;
                  _loc3_.tileGridVisiblity = false;
                  _loc3_.itemGridVisiblity = false;
                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                  _loc7_.resetHighlightedShops();
                  _loc7_.resetHighlight();
                  facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
                  facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
                  facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
                  for each(_loc11_ in _loc8_.billboardList)
                  {
                     _loc11_.changeInteractionstate(true);
                  }
                  for each(_loc12_ in _loc8_.clientFieldObjectsList)
                  {
                     _loc12_.changeInteractionstate(true);
                  }
               }
            }
         }
      }
   }
}

