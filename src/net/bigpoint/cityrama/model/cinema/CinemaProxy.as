package net.bigpoint.cityrama.model.cinema
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaRewardMiniLayerVo;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CinemaDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCinemaDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CinemaProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CinemaProxy";
      
      private var _cinemaRewardPaymentPack:ConfigPaymentPackDTO;
      
      private var _disabledByAID:Boolean;
      
      private var _inMaintenance:Boolean;
      
      private var _cP:GameConfigProxy;
      
      private var _ciP:CityProxy;
      
      private var _exIP:ExternalInterfaceProxy;
      
      private var _tP:TimerProxy;
      
      private var _pOP:PlayfieldObjectsProxy;
      
      public function CinemaProxy()
      {
         super(NAME);
         var _loc1_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         if(_loc1_)
         {
            this._disabledByAID = _loc1_.cinemaDisabled;
            this._inMaintenance = _loc1_.cinemaInMaintenance;
         }
         _loc1_ = null;
      }
      
      public function get cinemaLayerVo() : CinemaLayerVo
      {
         var _loc2_:TimerBarComponentVo = null;
         var _loc1_:CinemaLayerVo = new CinemaLayerVo();
         _loc1_.maxViews = this.maxViews;
         _loc1_.realCurrencyRewardAmount = this.rewardRealCurrencyAmount;
         _loc1_.videosWatchedToday = this.videosWatchedToday;
         if(_loc1_.videosLeftToday > 0)
         {
            _loc1_.videoAvailableFromProvider = this.externalInterfaceProxy.cinemaVideoAvailable();
         }
         if(!_loc1_.videoAvailable && this.currentCinemaDTO.resetTimeStamp > 0)
         {
            _loc2_ = new TimerBarComponentVo();
            _loc2_.waitingForStart = false;
            _loc2_.cycleLength = this.resetTimerCycleLength;
            _loc2_.targetTime = this.currentCinemaDTO.resetTimeStamp;
            _loc2_.startTime = _loc2_.targetTime - _loc2_.cycleLength;
            _loc2_.currentTime = this.timerProxy.currentTimeStamp;
            _loc1_.availabilityTimer = _loc2_;
         }
         return _loc1_;
      }
      
      public function get cinemaRewardMiniLayerVo() : CinemaRewardMiniLayerVo
      {
         var _loc1_:CinemaRewardMiniLayerVo = new CinemaRewardMiniLayerVo();
         _loc1_.maxViews = this.maxViews;
         _loc1_.viewsLeft = Math.max(this.maxViews - this.currentCinemaDTO.viewsToday,0);
         _loc1_.paymentPack = this.cinemaPaymentPack;
         _loc1_.cinemaLocaleId = this.cinemaPlayfieldItemConfig.localeId;
         return _loc1_;
      }
      
      public function get videosWatchedToday() : uint
      {
         if(this.currentCinemaDTO)
         {
            return this.currentCinemaDTO.viewsToday;
         }
         return 0;
      }
      
      public function get maxViews() : uint
      {
         return this.cinemaConfigDTO.maxViewsPerDay;
      }
      
      public function get disabledByAID() : Boolean
      {
         return this._disabledByAID;
      }
      
      public function get inMaintenance() : Boolean
      {
         return this._inMaintenance;
      }
      
      public function set inMaintenance(param1:Boolean) : void
      {
         this._inMaintenance = param1;
         if(this.cinemaPlayfieldItem)
         {
            this.cinemaPlayfieldItem.cinemaFieldObjectVo.inMaintenance = this.inMaintenance;
            this.cinemaPlayfieldItem.invalidateIconStateManager();
            sendNotification(ApplicationNotificationConstants.CINEMA_MAINTENANCE_CHANGED,this.inMaintenance);
         }
      }
      
      private function get resetTimerCycleLength() : Number
      {
         return this.cinemaConfigDTO.maxResetLifeTime;
      }
      
      private function get currentCinemaDTO() : CinemaDTO
      {
         if(this.cityProxy.city.cinema)
         {
            return this.cityProxy.city.cinema;
         }
         return null;
      }
      
      private function get cinemaConfigDTO() : ConfigCinemaDTO
      {
         return this.configProxy.config.configCinema;
      }
      
      private function get cinemaPlayfieldItemConfig() : ConfigPlayfieldItemDTO
      {
         return this.cinemaPlayfieldItem.cinemaFieldObjectVo.configPlayfieldItemVo;
      }
      
      private function get cinemaPlayfieldItem() : CinemaFieldObject
      {
         return this.playfieldObjectProxy.cinemaFieldObject;
      }
      
      private function get cinemaPaymentPack() : ConfigPaymentPackDTO
      {
         var _loc1_:ConfigPaymentPackDTO = null;
         if(!this._cinemaRewardPaymentPack)
         {
            for each(_loc1_ in this.configProxy.config.paymentPacks)
            {
               if(_loc1_.type == ServerPaymentPackConst.CINEMA)
               {
                  this._cinemaRewardPaymentPack = _loc1_;
                  break;
               }
            }
         }
         return this._cinemaRewardPaymentPack;
      }
      
      private function get rewardRealCurrencyAmount() : uint
      {
         return this.cinemaPaymentPack.resources[0].outputAmount;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._cP)
         {
            this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._cP;
      }
      
      private function get cityProxy() : CityProxy
      {
         if(!this._ciP)
         {
            this._ciP = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         }
         return this._ciP;
      }
      
      private function get externalInterfaceProxy() : ExternalInterfaceProxy
      {
         if(!this._exIP)
         {
            this._exIP = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         }
         return this._exIP;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(!this._tP)
         {
            this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._tP;
      }
      
      private function get playfieldObjectProxy() : PlayfieldObjectsProxy
      {
         if(!this._pOP)
         {
            this._pOP = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         }
         return this._pOP;
      }
   }
}

