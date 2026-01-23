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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:CityDTO = new CityDTO(_loc2_.json.c);
         var _loc4_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         var _loc5_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         var _loc6_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         if(!(_loc8_ && Boolean(_loc2_)))
         {
            _loc4_.city = _loc3_;
            if(_loc7_ || Boolean(_loc2_))
            {
               _loc6_.rebuild();
               if(_loc7_)
               {
                  addr00b8:
                  _loc5_.updateData();
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     addr00cc:
                     TweenMax.delayedCall(1,sendNotification,[ApplicationNotificationConstants.CITY_IMPROVEMENTS_UPDATED]);
                  }
               }
               return;
            }
            §§goto(addr00cc);
         }
         §§goto(addr00b8);
      }
   }
}

