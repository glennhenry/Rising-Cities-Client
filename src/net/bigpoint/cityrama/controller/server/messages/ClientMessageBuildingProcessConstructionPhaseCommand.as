package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingProcessConstructionPhaseCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingProcessConstructionPhaseCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc11_:PhaseDTO = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:BillboardObjectVo = _loc2_.vo as BillboardObjectVo;
         var _loc4_:Boolean = Boolean(_loc2_.boost);
         var _loc5_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc6_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc7_:Object = new Object();
         _loc7_.bid = _loc3_.buildingDTO.id;
         _loc7_.pid = _loc3_.activePhases[0].phaseId;
         _loc7_.bst = _loc4_;
         var _loc8_:MessageVo = _loc5_.createMessage(_loc7_,ServerMessageConstants.PLAYFIELD_BUILDING_PROCESSPHASE);
         for each(_loc11_ in _loc3_.activePhases)
         {
            if(_loc11_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc11_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               if(_loc11_.expirationTime <= _loc6_.currentTimeStamp)
               {
                  if(_loc11_.expirationTime == 0)
                  {
                     _loc9_ = _loc11_.config;
                  }
                  else
                  {
                     for each(_loc10_ in _loc3_.configPlayfieldItemVo.constructionPhases)
                     {
                        if(_loc10_.phaseOrderId == _loc11_.config.phaseOrderId + 1)
                        {
                           _loc9_ = _loc10_;
                           break;
                        }
                     }
                  }
               }
               else if(_loc11_.expirationTime > _loc6_.currentTimeStamp)
               {
                  _loc9_ = _loc11_.config;
               }
            }
            else if(_loc11_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL)
            {
               for each(_loc10_ in _loc3_.configPlayfieldItemVo.constructionPhases)
               {
                  if(_loc10_.phaseOrderId == _loc11_.config.phaseOrderId + 1)
                  {
                     _loc9_ = _loc10_;
                     break;
                  }
               }
            }
         }
         if(!_loc9_)
         {
            _loc9_ = _loc3_.activePhases[0].config;
         }
         _loc3_.informationFloaterPhase = _loc9_;
         _loc5_.sendMessage(_loc8_);
      }
   }
}

