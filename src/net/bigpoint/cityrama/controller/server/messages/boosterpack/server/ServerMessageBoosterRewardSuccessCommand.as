package net.bigpoint.cityrama.controller.server.messages.boosterpack.server
{
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigRewardDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageBoosterRewardSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageBoosterRewardSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Object = null;
         var _loc2_:BoosterpackBookProxy = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
         var _loc3_:MessageVo = MessageVo(param1.getBody());
         var _loc4_:Vector.<ConfigRewardDTO> = new Vector.<ConfigRewardDTO>();
         for each(_loc5_ in _loc3_.json.rs)
         {
            _loc4_.push(ConfigFactory.buildRewardDTO(_loc5_));
         }
         _loc2_.setRewardData(_loc4_);
      }
   }
}

