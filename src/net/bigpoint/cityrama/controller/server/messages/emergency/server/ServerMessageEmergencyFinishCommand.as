package net.bigpoint.cityrama.controller.server.messages.emergency.server
{
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEmergencyFinishCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageEmergencyFinishCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:PhaseDTO = null;
         var _loc8_:Vector.<PhaseDTO> = null;
         var _loc9_:PhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc5_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         if(_loc4_)
         {
            if(_loc2_.json.p)
            {
               _loc7_ = ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc2_.json.p,_loc4_.billboardObjectVo.configPlayfieldItemVo);
               _loc8_ = new Vector.<PhaseDTO>(0);
               _loc8_.push(_loc7_);
               for each(_loc9_ in _loc4_.billboardObjectVo.buildingDTO.activePhases)
               {
                  if(_loc9_.phaseId != _loc7_.phaseId)
                  {
                     _loc8_.push(_loc9_);
                  }
               }
               _loc4_.billboardObjectVo.buildingDTO.activePhases = _loc8_;
            }
            _loc4_.billboardObjectVo.buildingDTO.emergencyDTO = null;
            _loc4_.billboardObjectVo.userInteractionLocked = false;
            _loc4_.invalidateAnimationSlotManager();
            _loc4_.invalidateIconStateManager();
            _loc5_.removeEmergencyInfo(_loc4_.billboardObjectVo.buildingDTO.id);
         }
         var _loc6_:EmergencyProxy = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         _loc6_.currentEmergency = null;
      }
   }
}

