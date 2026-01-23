package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowTreasauryItemInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowTreasauryItemInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:Point = Point(param1.getBody().pt);
         var _loc3_:uint = uint(param1.getBody().lineId);
         var _loc4_:String = param1.getBody().type;
         _loc5_ = LocaUtils.getString("rcl.guiinfolayer.treasury","rcl.guiinfolayer.treasury." + _loc4_ + ".flavor");
         _loc6_ = LocaUtils.getString("rcl.guiinfolayer.treasury","rcl.guiinfolayer.treasury." + _loc4_ + ".name.capital");
         var _loc7_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc3_,_loc2_,_loc5_,_loc6_);
         _loc7_.width = 300;
         sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc7_,param1.getType());
      }
   }
}

