package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigBoosterDTO;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowBoosterPackInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowBoosterPackInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:Number = Number(param1.getBody().cid);
         var _loc4_:Point = Point(param1.getBody().pt);
         var _loc5_:uint = uint(param1.getBody().lineId);
         var _loc6_:ConfigBoosterDTO = _loc2_.config.boosterpacks[_loc3_];
         if(_loc6_ == null)
         {
            _loc6_ = _loc2_.config.improvementBoosterPacks[_loc3_];
         }
         var _loc7_:String = param1.getBody().type;
         var _loc8_:String = LocaUtils.getString("rcl.guiinfolayer.boosterpacks","rcl.guiinfolayer.boosterpacks." + _loc6_.locaId + ".name.capital");
         var _loc9_:String = LocaUtils.getString("rcl.guiinfolayer.boosterpacks","rcl.guiinfolayer.boosterpacks." + _loc6_.locaId + ".flavor");
         var _loc10_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc5_,_loc4_,_loc9_,_loc8_);
         sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc10_,param1.getType());
      }
   }
}

