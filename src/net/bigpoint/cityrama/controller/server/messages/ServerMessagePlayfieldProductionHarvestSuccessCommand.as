package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldProductionHarvestSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldProductionHarvestSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:PhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProductionFieldObject = ProductionFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         for each(_loc6_ in _loc4_.billboardObjectVo.activePhases)
         {
            if(_loc6_.config.phaseType != ServerPhaseTypes.PRODUCTION)
            {
               _loc5_.push(_loc6_);
            }
         }
         _loc4_.billboardObjectVo.buildingDTO.activePhases = _loc5_;
         _loc4_.billboardObjectVo.userInteractionLocked = false;
         _loc4_.productionFieldObjectVo.stopProductionTime();
         _loc4_.invalidateProductionSlotManager();
         _loc4_.billboardObjectVo.invalidate();
         _loc4_.invalidateIconStateManager();
         _loc4_.billboardObjectVo.buildingDTO.upgradeCount += 1;
      }
   }
}

