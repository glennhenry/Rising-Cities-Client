package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CinemaDTO;
   import net.bigpoint.cityrama.model.server.vo.server.CityDTO;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityProxy extends Proxy
   {
      
      public static const NAME:String = "CityProxy";
      
      private var _city:CityDTO;
      
      public function CityProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private static function buildWheelModel(param1:CityWheelDTO, param2:GameConfigProxy) : CityWheelDTO
      {
         var _loc3_:CityWheelRewardDTO = null;
         for each(_loc3_ in param1.lottery)
         {
            addConfigsToRewardDTOs(_loc3_,param2);
         }
         for each(_loc3_ in param1.drawnRewards)
         {
            addConfigsToRewardDTOs(_loc3_,param2);
         }
         param1.drawnbuff = param2.config.configCityWheelDTO.wheelBuffs[param1.drawnbuffId];
         return param1;
      }
      
      private static function addConfigsToRewardDTOs(param1:CityWheelRewardDTO, param2:GameConfigProxy) : void
      {
         if(param2.config.tags[param1.rewardTypeTagId] as ConfigTagDTO != null)
         {
            param1.rewardType = (param2.config.tags[param1.rewardTypeTagId] as ConfigTagDTO).tagName;
         }
         else
         {
            param1.rewardType = ServerTagConstants.WHEEL_REWARD_JACKPOT;
         }
         switch(param1.type)
         {
            case ServerOutputConstants.ASSIST:
               param1.assistConfig = param2.config.assists[param1.configId];
               break;
            case ServerOutputConstants.GOOD:
               param1.goodConfig = param2.config.goods[param1.configId];
               break;
            case ServerOutputConstants.IMPROVEMENT:
               param1.improvementConfig = param2.config.improvements[param1.configId];
               break;
            case ServerOutputConstants.RESOURCE:
               param1.resourceConfig = param2.config.resources[param1.configId];
               break;
            case ServerOutputConstants.PERMISSION:
               param1.playfieldItemConfig = getConfigPlayfieldItemByPermissionId(param1.configId,param2);
               break;
            case ServerOutputConstants.TAG:
               param1.tagConfig = param2.config.tags[param1.configId];
         }
      }
      
      private static function getConfigPlayfieldItemByPermissionId(param1:Number, param2:GameConfigProxy) : ConfigPlayfieldItemDTO
      {
         var _loc3_:ConfigPlayfieldItemDTO = null;
         if(param2)
         {
            for each(_loc3_ in param2.config.items)
            {
               if(_loc3_.permissionConfigId == param1 && !_loc3_.isUpgrade)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public function get city() : CityDTO
      {
         return this._city;
      }
      
      public function set city(param1:CityDTO) : void
      {
         if(!RandomUtilities.isEqual(param1,this._city))
         {
            this._city = param1;
            if(this._city.cityWheel != null)
            {
               this.updateWheel(this._city.cityWheel);
            }
            sendNotification(ApplicationNotificationConstants.CITY_DATA_CHANGED);
            if(this._city.cinema)
            {
               sendNotification(ApplicationNotificationConstants.CINEMA_DATA_CHANGED);
            }
         }
      }
      
      public function updateCinema(param1:CinemaDTO) : void
      {
         if(!RandomUtilities.isEqual(this._city.cinema,param1))
         {
            this._city.cinema = param1;
            sendNotification(ApplicationNotificationConstants.CINEMA_DATA_CHANGED);
         }
      }
      
      public function updateWheel(param1:CityWheelDTO) : void
      {
         var _loc2_:CityWheelDTO = this.city.cityWheel;
         this.city.cityWheel = buildWheelModel(param1,facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy);
         if(!RandomUtilities.isEqual(_loc2_,this.city.cityWheel))
         {
            if(Boolean(this.city.cityWheel.drawnRewards) && Boolean(this.city.cityWheel.drawnRewards.length))
            {
               sendNotification(ApplicationNotificationConstants.CITY_WHEEL_REWARD_READY);
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED);
            }
         }
      }
   }
}

