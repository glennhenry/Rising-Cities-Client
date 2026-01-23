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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
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
         §§push(LocaUtils);
         §§push("rcl.guiinfolayer.boosterpacks");
         §§push("rcl.guiinfolayer.boosterpacks.");
         if(!_loc12_)
         {
            §§push(§§pop() + _loc6_.locaId);
            if(!(_loc12_ && Boolean(this)))
            {
               §§push(§§pop() + ".name.capital");
            }
         }
         §§push(§§pop().getString(§§pop(),§§pop()));
         if(_loc11_)
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         §§push(LocaUtils);
         §§push("rcl.guiinfolayer.boosterpacks");
         §§push("rcl.guiinfolayer.boosterpacks.");
         if(_loc11_)
         {
            §§push(§§pop() + _loc6_.locaId);
            if(_loc11_)
            {
               addr00e4:
               §§push(§§pop() + ".flavor");
            }
            §§push(§§pop().getString(§§pop(),§§pop()));
            if(!(_loc12_ && Boolean(param1)))
            {
               §§push(§§pop());
            }
            var _loc9_:* = §§pop();
            var _loc10_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc5_,_loc4_,_loc9_,_loc8_);
            if(!(_loc12_ && Boolean(this)))
            {
               sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc10_,param1.getType());
            }
            return;
         }
         §§goto(addr00e4);
      }
   }
}

