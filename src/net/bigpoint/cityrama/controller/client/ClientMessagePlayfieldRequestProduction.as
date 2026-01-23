package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldRequestProduction extends SimpleCommand implements ICommand
   {
      
      public function ClientMessagePlayfieldRequestProduction()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         var _loc11_:ConfigPhaseDTO = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:ProductionFieldObjectVo = ProductionFieldObjectVo(_loc3_.building);
         var _loc5_:ProductionGoodObjectVo = _loc3_.good;
         for each(_loc7_ in _loc4_.configPlayfieldItemVo.activePhases)
         {
            for each(_loc10_ in _loc7_.listEntryOutputs)
            {
               if(Boolean(_loc10_.goodConfig) && _loc10_.goodConfig.id == _loc5_.config.id)
               {
                  for each(_loc11_ in _loc4_.configPlayfieldItemVo.activePhases)
                  {
                     if(_loc11_.phaseOrderId == _loc7_.phaseOrderId - 1)
                     {
                        _loc6_ = _loc11_.phaseId;
                     }
                  }
               }
            }
         }
         if(isNaN(_loc6_))
         {
            throw new RamaCityError("Invalid Production Phase!!!");
         }
         var _loc8_:Object = new Object();
         _loc8_.bid = _loc4_.buildingDTO.id;
         _loc8_.cpi = _loc6_;
         _loc8_.bst = false;
         if(_loc3_.boost)
         {
            _loc8_.bst = _loc3_.boost;
         }
         var _loc9_:MessageVo = _loc2_.createMessage(_loc8_,ServerMessageConstants.PLAYFIELD_REQUEST_PRODUCTION);
         _loc2_.sendMessage(_loc9_);
      }
   }
}

