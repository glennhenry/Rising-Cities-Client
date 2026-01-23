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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc7_:AssistantUiInfolayerContentVo = null;
         var _loc2_:Number = Number(param1.getBody().cid);
         var _loc3_:Point = Point(param1.getBody().pt);
         var _loc4_:uint = uint(param1.getBody().lineId);
         var _temp_2:* = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         var _loc5_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         var _loc6_:ConfigAssistDTO = _loc5_.getConfigAssistById(_loc2_);
         if(_loc6_)
         {
            _loc7_ = new AssistantUiInfolayerContentVo(_loc4_,_loc3_,_loc6_);
            if(!_loc8_)
            {
               sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc7_,param1.getType());
            }
         }
      }
   }
}

