package net.bigpoint.cityrama.controller.applicationModes.move
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickToSelectFieldMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldClickToSelectFieldMoveItemCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc9_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc10_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         if(_loc2_.clickObject != null)
         {
            if(!this.canBeMoved(_loc2_.clickObject))
            {
               return;
            }
            if(_loc2_.clickObject is BillboardObject)
            {
               var _loc12_:BillboardObject = _loc2_.clickObject as BillboardObject;
               _loc2_.clickObject = null;
               if(null.billboardObjectVo.interactionBlockedByEmergency())
               {
                  facade.sendNotification(MiniLayerConstants.OPEN_MINI_MOVE_BLOCKED);
               }
            }
            else if(_loc2_.clickObject is IPlaneObject)
            {
               var _loc15_:IPlaneObject = _loc2_.clickObject as IPlaneObject;
               _loc2_.clickObject = null;
            }
         }
      }
      
      private function removeAndRegisterCommands() : void
      {
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToPlaceFieldMoveItemCommand);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         var _loc2_:Object = null;
         if(param1 is ShopFieldObject || param1 is ResidentialFieldObject)
         {
            _loc2_ = new Object();
            _loc2_.vo = param1.billboardObjectVo;
            _loc2_.rollOver = false;
            facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,_loc2_);
         }
      }
      
      private function canBeMoved(param1:IInteraction) : Boolean
      {
         var _loc2_:BillboardObject = null;
         if(param1 is BillboardObject)
         {
            _loc2_ = param1 as BillboardObject;
            if(_loc2_.billboardObjectVo.isExpansionObject || !_loc2_.billboardObjectVo.configPlayfieldItemVo.moveable)
            {
               return false;
            }
         }
         else if(param1 is ClientFieldObject)
         {
            return false;
         }
         return true;
      }
   }
}

