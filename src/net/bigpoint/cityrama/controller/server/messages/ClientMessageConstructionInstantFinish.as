package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageConstructionInstantFinish extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageConstructionInstantFinish()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingDTO.id;
         var _loc5_:Boolean = false;
         for each(_loc6_ in _loc2_.configPlayfieldItemVo.constructionPhases)
         {
            if(_loc6_.phaseType == ServerPhaseTypes.INSTANT_CONSTRUCTION)
            {
               if(_loc11_ || Boolean(param1))
               {
                  _loc4_.cpi = _loc6_.phaseId;
                  if(_loc10_ && Boolean(param1))
                  {
                     break;
                  }
               }
               _loc5_ = true;
               break;
            }
         }
         if(_loc11_ || Boolean(this))
         {
            if(!_loc5_)
            {
               if(!_loc10_)
               {
                  return;
               }
            }
         }
         var _loc7_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_REQUEST_INSTANTFINISH);
         if(_loc11_ || Boolean(this))
         {
            _loc3_.sendMessage(_loc7_);
         }
      }
   }
}

