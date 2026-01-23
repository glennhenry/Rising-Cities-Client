package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageTimeUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageTimeUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         _loc3_.currentTimeStamp = Number(_loc2_.json.ts);
      }
   }
}

