package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageConstructionInstantFinish extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageConstructionInstantFinish()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:ConfigPhaseDTO = null;
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingDTO.id;
         for each(_loc6_ in _loc2_.configPlayfieldItemVo.constructionPhases)
         {
            if(_loc6_.phaseType == ServerPhaseTypes.INSTANT_CONSTRUCTION)
            {
               _loc4_.cpi = _loc6_.phaseId;
               var _loc5_:Boolean = true;
               break;
            }
         }
      }
   }
}

