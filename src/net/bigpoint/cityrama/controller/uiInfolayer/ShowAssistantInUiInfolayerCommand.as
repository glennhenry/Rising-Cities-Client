package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.CityAssistProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AssistantUiInfolayerContentVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowAssistantInUiInfolayerCommand extends SimpleCommand implements ICommand
   {
      
      public function ShowAssistantInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = Number(param1.getBody().cid);
         var _loc3_:Point = Point(param1.getBody().pt);
         var _loc4_:uint = uint(param1.getBody().lineId);
         var _loc5_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         var _loc6_:ConfigAssistDTO = _loc5_.getConfigAssistById(_loc2_);
         if(_loc6_)
         {
            var _loc7_:AssistantUiInfolayerContentVo = new AssistantUiInfolayerContentVo(_loc4_,_loc3_,_loc6_);
            sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,null,param1.getType());
         }
      }
   }
}

