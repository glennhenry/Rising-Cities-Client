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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:Object = null;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc3_:MessageVo = MessageVo(param1.getBody());
         var _loc4_:Vector.<PlayerPaymentPackDTO> = new Vector.<PlayerPaymentPackDTO>();
         for each(_loc5_ in _loc3_.json.pp)
         {
            if(_loc8_)
            {
               _loc4_.push(new PlayerPaymentPackDTO(_loc5_));
            }
         }
         if(_loc8_ || Boolean(param1))
         {
            _loc2_.player.playerPaymentPackInfo.purchasedPaymentPacks = _loc4_;
         }
      }
   }
}

