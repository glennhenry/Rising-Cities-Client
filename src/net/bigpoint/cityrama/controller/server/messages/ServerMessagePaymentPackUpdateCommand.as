package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentPackDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePaymentPackUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePaymentPackUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Object = null;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc3_:MessageVo = MessageVo(param1.getBody());
         var _loc4_:Vector.<PlayerPaymentPackDTO> = new Vector.<PlayerPaymentPackDTO>();
         for each(_loc5_ in _loc3_.json.pp)
         {
            _loc4_.push(new PlayerPaymentPackDTO(_loc5_));
         }
         _loc2_.player.playerPaymentPackInfo.purchasedPaymentPacks = _loc4_;
      }
   }
}

