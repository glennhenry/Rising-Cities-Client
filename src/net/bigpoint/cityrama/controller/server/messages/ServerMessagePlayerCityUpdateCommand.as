package net.bigpoint.cityrama.controller.server.messages
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.assistants.CityAssistProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.CityDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayerCityUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayerCityUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:CityDTO = new CityDTO(_loc2_.json.c);
         var _loc4_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         var _loc5_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         var _loc6_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         _loc4_.city = _loc3_;
         _loc6_.rebuild();
         _loc5_.updateData();
         TweenMax.delayedCall(1,sendNotification,[ApplicationNotificationConstants.CITY_IMPROVEMENTS_UPDATED]);
      }
   }
}

