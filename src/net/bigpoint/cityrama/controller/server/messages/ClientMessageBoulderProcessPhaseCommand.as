package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBoulderProcessPhaseCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBoulderProcessPhaseCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc7_:PhaseDTO = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:BoulderObjectVo = BoulderObjectVo(param1.getBody());
         var _loc4_:Object = {};
         _loc4_.bid = _loc3_.boulderVo.id;
         if(_loc11_ || Boolean(_loc2_))
         {
            if(_loc3_.activePhases.length > 0)
            {
               addr006f:
               for each(_loc7_ in _loc3_.activePhases)
               {
                  if(_loc7_.config.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
                  {
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        §§push(_loc7_.phaseId);
                        if(_loc11_ || Boolean(param1))
                        {
                           §§push(§§pop());
                        }
                        _loc5_ = §§pop();
                     }
                  }
               }
               if(_loc10_ && Boolean(_loc2_))
               {
               }
               addr0114:
               _loc4_.pid = _loc5_;
            }
            else
            {
               _loc5_ = _loc3_.configPlayfieldItemVo.destructionPhases[0].phaseId;
               if(!(_loc10_ && Boolean(param1)))
               {
                  §§goto(addr0114);
               }
            }
            var _loc6_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BOULDER_PROCESSPHASE);
            if(_loc11_ || Boolean(param1))
            {
               _loc2_.sendMessage(_loc6_);
            }
            return;
         }
         §§goto(addr006f);
      }
   }
}

