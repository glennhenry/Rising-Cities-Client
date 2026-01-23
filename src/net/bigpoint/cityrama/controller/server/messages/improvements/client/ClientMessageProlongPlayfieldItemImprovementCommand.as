package net.bigpoint.cityrama.controller.server.messages.improvements.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageProlongPlayfieldItemImprovementCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageProlongPlayfieldItemImprovementCommand()
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc2_:ImprovementVo = param1.getBody() as ImprovementVo;
         if(_loc7_)
         {
            if(_loc2_)
            {
               addr003d:
               _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc4_ = new Object();
               _loc4_.bid = _loc2_.equippedBuildingId;
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  _loc4_.imp = _loc2_.config.id;
                  if(_loc7_ || Boolean(param1))
                  {
                     _loc4_.slot = _loc2_.currentSlotId;
                  }
               }
               _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PROLONG_PLAYFIELDITEM_IMPROVEMENT);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  _loc3_.sendMessage(_loc5_);
               }
            }
            return;
         }
         §§goto(addr003d);
      }
   }
}

