package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowRessourceInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowRessourceInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:Number = Number(param1.getBody().cid);
         var _loc4_:Point = Point(param1.getBody().pt);
         var _loc5_:uint = uint(param1.getBody().lineId);
         var _loc6_:ConfigResourceDTO = ConfigResourceDTO(param1.getBody().cpidto);
         if(!_loc6_)
         {
            _loc6_ = _loc2_.config.resources[_loc3_];
         }
         switch(_loc6_.type)
         {
            case ServerResConst.RESOURCE_EXPERIENCE:
               _loc7_ = LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.xp.flavor");
               _loc8_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.experience.capital");
               break;
            case ServerResConst.RESOURCE_VIRTUALCURRENCY:
               _loc7_ = LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.vc.flavor");
               _loc8_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.virtualcurrency.capital");
               break;
            case ServerResConst.RESOURCE_REALCURRENCY:
               _loc7_ = LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.rc.flavor");
               _loc8_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.realcurrency.capital");
               break;
            case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
               _loc7_ = LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.pp.flavor");
               _loc8_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.productionpoints.capital");
               break;
            case ServerResConst.RESOURCE_EDUCATIONPOINTS:
               _loc7_ = LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.ep.flavor");
               _loc8_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.educationpoints.capital");
         }
         var _loc9_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc5_,_loc4_,_loc7_,_loc8_);
         _loc9_.width = 230;
         sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc9_,param1.getType());
      }
   }
}

