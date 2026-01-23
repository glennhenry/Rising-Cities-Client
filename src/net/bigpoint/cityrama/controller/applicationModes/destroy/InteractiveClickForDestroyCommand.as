package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class InteractiveClickForDestroyCommand extends SimpleCommand
   {
      
      public function InteractiveClickForDestroyCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:BillboardObject = null;
         var _loc6_:IPlaneObject = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:IGameObjectVo = null;
         var _loc2_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         if(_loc3_.clickObject != null)
         {
            if(_loc3_.clickObject is BillboardObject)
            {
               if(!(_loc3_.clickObject as BillboardObject).billboardObjectVo.isExpansionObject)
               {
                  if(!(_loc3_.clickObject is ExpansionFieldObject))
                  {
                     _loc5_ = _loc3_.clickObject as BillboardObject;
                     _loc5_.billboardObjectVo.userInteractionLocked = true;
                  }
               }
            }
            else if(_loc3_.clickObject is IPlaneObject)
            {
               _loc6_ = _loc3_.clickObject as IPlaneObject;
            }
            _loc3_.clickObject = null;
         }
         else
         {
            _loc7_ = Math.floor(_loc2_.mouse2dPoint.x / _loc2_.tileSize);
            _loc8_ = Math.floor(_loc2_.mouse2dPoint.y / _loc2_.tileSize);
            _loc9_ = _loc4_.getColBy2DCoordinates(_loc7_,_loc8_);
            if(_loc9_)
            {
               _loc11_ = _loc10_ = int(_loc9_.length - 1);
               while(_loc11_ >= 0)
               {
                  if(_loc9_[_loc11_] != null && _loc9_[_loc11_] is IGameObjectVo)
                  {
                     _loc12_ = _loc9_[_loc11_] as IGameObjectVo;
                     if(_loc12_.configPlayfieldItemVo.destroyable && !_loc12_ is IInteraction)
                     {
                        if(_loc12_ is BillboardObjectVo)
                        {
                           _loc5_ = _loc4_.getObjectByVo(_loc12_) as BillboardObject;
                        }
                        else if(_loc12_ is PlaneObjectVo)
                        {
                           _loc6_ = _loc4_.getPlaneObjectByVo(_loc12_) as IPlaneObject;
                        }
                     }
                  }
                  _loc11_--;
               }
            }
         }
         if(Boolean(_loc5_) && !_loc5_.billboardObjectVo.interactionBlockedByEmergency())
         {
            if(_loc5_ is BoulderFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.BOULDER_CLICKED,_loc5_);
            }
            else
            {
               sendNotification(MiniLayerConstants.OPEN_MINI_DEMOLITION,_loc5_);
            }
         }
         else if(Boolean(_loc5_) && _loc5_.billboardObjectVo.interactionBlockedByEmergency())
         {
            sendNotification(MiniLayerConstants.OPEN_MINI_MOVE_BLOCKED);
            _loc5_.billboardObjectVo.userInteractionLocked = false;
         }
         if(Boolean(_loc6_) && Boolean(_loc6_.objectVo.configPlayfieldItemVo.destroyable))
         {
            (_loc6_.objectVo as IFloaterObjectVo).informationFloaterPhase = (_loc6_.objectVo as PlaneObjectVo).getDestructionPhase();
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DESTROY_GROUND,_loc6_);
         }
         _loc3_.reset();
      }
   }
}

