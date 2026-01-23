package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldExpansionBuyVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageExpandPlayfieldRequest extends SimpleCommand
   {
      
      public function ClientMessageExpandPlayfieldRequest()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:PlayfieldExpansionBuyVo = PlayfieldExpansionBuyVo(param1.getBody());
         var _loc4_:Object = new Object();
         _loc4_.cpeid = _loc3_.cpe;
         if(_loc6_ || Boolean(this))
         {
            _loc4_.pp = _loc3_.pp;
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_EXPAND);
         if(_loc6_)
         {
            _loc2_.sendMessage(_loc5_);
         }
      }
   }
}

