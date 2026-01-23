package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.ImprovementUiInfolayerContentVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowImprovementInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowImprovementInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc8_:ImprovementProxy = null;
         var _loc2_:Number = Number(param1.getBody().cid);
         var _loc3_:Point = Point(param1.getBody().pt);
         var _loc4_:uint = uint(param1.getBody().lineId);
         var _loc5_:ImprovementVo = ImprovementVo(param1.getBody().impro);
         if(!_loc5_)
         {
            _loc8_ = facade.retrieveProxy(ImprovementProxy.NAME) as ImprovementProxy;
            _loc5_ = _loc8_.getImprovementVoByConfigId(_loc2_);
         }
         var _loc6_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc7_:ImprovementUiInfolayerContentVo = new ImprovementUiInfolayerContentVo(_loc4_,_loc3_,_loc5_,"",_loc6_.currentTimeStamp);
         sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc7_,param1.getType());
      }
   }
}

