package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.GoodUiInfolayerContentVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowGoodInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowGoodInUiInfolayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:ConfigPlayfieldItemDTO = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         var _loc11_:Boolean = false;
         var _loc12_:PlayerResourceProxy = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc4_:Number = Number(param1.getBody().cid);
         var _loc5_:Point = Point(param1.getBody().pt);
         var _loc6_:uint = uint(param1.getBody().lineId);
         var _loc7_:ConfigGoodDTO = ConfigGoodDTO(param1.getBody().cpidto);
         if(!_loc7_)
         {
            _loc7_ = _loc2_.config.goods[_loc4_];
         }
         var _loc8_:GoodUiInfolayerContentVo = new GoodUiInfolayerContentVo(_loc6_,_loc5_,_loc7_,_loc3_.currentRunningEventQuestLocaleId);
         for each(_loc9_ in ConfigFactory.getProducerOfGood(_loc7_.id))
         {
            if(_loc8_.productionBuildingLocaleIds.indexOf(_loc9_.localeId) == -1)
            {
               _loc8_.productionBuildingLocaleIds.push(_loc9_.localeId);
            }
         }
         for each(_loc10_ in ConfigFactory.getConsumerOfGood(_loc7_.id))
         {
            if(_loc8_.consumerBuildingLocaleIds.indexOf(_loc10_.localeId) == -1)
            {
               _loc8_.consumerBuildingLocaleIds.push(_loc10_.localeId);
            }
         }
         _loc11_ = Boolean(param1.getBody().showLocked);
         if(_loc11_)
         {
            _loc12_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            if(ConfigUserLevelDTO(_loc2_.config.levels[_loc7_.levelId]).level > _loc12_.userLevel)
            {
               _loc8_.locked = true;
            }
         }
         sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc8_,param1.getType());
      }
   }
}

