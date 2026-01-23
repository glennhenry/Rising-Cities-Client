package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldProductionCancelSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldProductionCancelSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:PhaseDTO = null;
         var _loc6_:Vector.<PhaseDTO> = null;
         var _loc7_:int = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProductionFieldObject = ProductionFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         for each(_loc5_ in _loc4_.billboardObjectVo.activePhases)
         {
            if(_loc5_.config.phaseType == ServerPhaseTypes.PRODUCTION)
            {
               _loc6_ = new Vector.<PhaseDTO>();
               _loc7_ = 0;
               while(_loc7_ < _loc4_.billboardObjectVo.activePhases.length)
               {
                  if(_loc4_.billboardObjectVo.activePhases[_loc7_].config.phaseType != _loc5_.config.phaseType)
                  {
                     _loc6_.push(_loc4_.billboardObjectVo.activePhases[_loc7_]);
                  }
                  _loc7_++;
               }
               _loc4_.billboardObjectVo.activePhases = _loc6_;
            }
         }
         _loc4_.productionFieldObjectVo.stopProductionTime();
         _loc4_.invalidateProductionSlotManager();
         sendNotification(ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED);
      }
   }
}

