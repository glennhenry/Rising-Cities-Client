package net.bigpoint.cityrama.controller.server.messages.cityWheel.server
{
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageCityWheelUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageCityWheelUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         _loc3_.updateWheel(new CityWheelDTO(_loc2_.json));
      }
   }
}

