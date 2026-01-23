package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageRequestUpgrade extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageRequestUpgrade()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:MessageVo = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         if(!_loc4_.uprgadePhase)
         {
            throw new ArgumentError("ClientMessageRequestUpgrade - Object has no UPGRADE phase!");
         }
         if(_loc6_ || Boolean(param1))
         {
            _loc3_.bid = _loc4_.buildingDTO.id;
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               _loc3_.pid = _loc4_.uprgadePhase.config.phaseId;
               if(!_loc7_)
               {
                  _loc5_ = _loc2_.createMessage(_loc3_,ServerMessageConstants.PLAYFIELD_BUILDING_PROCESSPHASE);
                  addr0098:
                  if(_loc6_)
                  {
                     _loc2_.sendMessage(_loc5_);
                     if(_loc6_ || Boolean(param1))
                     {
                        _loc4_.informationFloaterPhase = _loc4_.uprgadePhase.config;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0098);
      }
   }
}

