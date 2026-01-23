package net.bigpoint.cityrama.model.assistants
{
   import flash.errors.IllegalOperationError;
   import mx.collections.ArrayCollection;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.assistants.vo.AssistVo;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolOptionVo;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorActivatedVo;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorSideMenuVo;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorVo;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.ExternalPaymentPackInfoVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class AssistViewProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "AssistViewProxy";
      
      private var _assistProxy:CityAssistProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _cTP:CityTreasuryProxy;
      
      public function AssistViewProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private static function sortByRuntime(param1:RentCollectorVo, param2:RentCollectorVo) : int
      {
         if(param1.runtime > param2.runtime)
         {
            return 1;
         }
         if(param1.runtime < param2.runtime)
         {
            return -1;
         }
         return 0;
      }
      
      private static function toFixedSeconds(param1:Number) : Number
      {
         return Math.round(param1 / 1000);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._assistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
      }
      
      public function get rentCollectorSideMenuVo() : RentCollectorSideMenuVo
      {
         var _loc2_:AssistVo = null;
         var _loc3_:TimerBarComponentVo = null;
         var _loc1_:RentCollectorSideMenuVo = new RentCollectorSideMenuVo();
         _loc1_.saleActive = this.rentCollectorSaleActive;
         if(this._assistProxy.isAssistActive(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL))
         {
            _loc2_ = this._assistProxy.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
            _loc3_ = new TimerBarComponentVo();
            _loc3_.cycleLength = _loc2_.endTime - _loc2_.initTime;
            _loc3_.startTime = _loc2_.initTime;
            _loc3_.targetTime = _loc2_.endTime;
            _loc3_.currentTime = this._timerProxy.currentTimeStamp;
            _loc1_.timerVo = _loc3_;
         }
         return _loc1_;
      }
      
      public function get rentCollectorOffers() : ArrayCollection
      {
         var _loc2_:RentCollectorVo = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = null;
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc5_:ConfigPaymentPackDTO = null;
         var _loc6_:ConfigAssistDTO = null;
         var _loc7_:ConfigPaymentPackDTO = null;
         var _loc8_:ExternalPaymentPackInfoVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc6_ in this._assistProxy.getConfigAssistsByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL))
         {
            _loc2_ = new RentCollectorVo(_loc6_);
            _loc3_ = this._assistProxy.getAssistPaymentPacks(_loc6_.id);
            if(Boolean(_loc3_) && Boolean(_loc3_.length))
            {
               for each(_loc7_ in _loc3_)
               {
                  if(_loc7_.type == ServerPaymentPackConst.INTERNAL)
                  {
                     _loc4_ = _loc7_;
                  }
                  else if(_loc7_.type == ServerPaymentPackConst.EXTERNAL)
                  {
                     _loc5_ = _loc7_;
                  }
               }
            }
            if(_loc5_)
            {
               _loc8_ = this.treasuryProxy.rentCollectorPackInfoDictionary[_loc5_.id];
               if(_loc8_)
               {
                  _loc2_.saleActive = this.rentCollectorSaleActive;
                  if(_loc2_.saleActive)
                  {
                     _loc2_.paymentPrice = _loc8_.discountedPrice.toFixed(2) + " " + _loc8_.currencyAsSymbol;
                  }
                  else
                  {
                     _loc2_.paymentPrice = _loc8_.price.toFixed(2) + " " + _loc8_.currencyAsSymbol;
                  }
               }
               _loc2_.externalPackKey = _loc5_.key;
            }
            _loc2_.price = _loc4_.priceRC;
            _loc2_.realCurrencyStock = this._resourceProxy.realCurrency;
            _loc1_.addItem(_loc2_);
         }
         _loc1_.source.sort(sortByRuntime);
         return _loc1_;
      }
      
      private function get rentCollectorSaleActive() : Boolean
      {
         return false;
      }
      
      public function get rentCollectorActivatedVo() : RentCollectorActivatedVo
      {
         var _loc1_:RentCollectorActivatedVo = new RentCollectorActivatedVo();
         var _loc2_:AssistVo = this._assistProxy.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
         if(_loc2_)
         {
            _loc1_.packGfxId = _loc2_.config.gfxId;
            var _loc3_:TimerBarComponentVo = new TimerBarComponentVo();
            null.cycleLength = _loc2_.endTime - _loc2_.initTime;
            null.startTime = _loc2_.initTime;
            null.targetTime = _loc2_.endTime;
            null.currentTime = this._timerProxy.currentTimeStamp;
            _loc1_.timerVo = null;
            if(toFixedSeconds(null.cycleLength) > toFixedSeconds(_loc2_.config.lifetime))
            {
               _loc1_.stacked = true;
            }
         }
         return _loc1_;
      }
      
      public function getPatrolViewVo() : PatrolViewVo
      {
         var _loc2_:AssistVo = null;
         var _loc3_:AssistVo = null;
         var _loc4_:TimerBarComponentVo = null;
         var _loc1_:PatrolViewVo = new PatrolViewVo();
         _loc1_.name = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.name.capital");
         for each(_loc3_ in this._assistProxy.ownedAssists)
         {
            if(_loc3_.config.type == ServerAssistTypeConstants.EMERGENCY_SPAWNRATE)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         if(Boolean(_loc2_) && _loc2_.endTime > this._timerProxy.currentTimeStamp)
         {
            _loc4_ = new TimerBarComponentVo();
            _loc4_.waitingForStart = false;
            _loc4_.cycleLength = _loc2_.config.lifetime;
            _loc4_.startTime = _loc2_.initTime;
            _loc4_.targetTime = _loc2_.endTime;
            _loc4_.currentTime = this._timerProxy.currentTimeStamp;
            _loc1_.timerVo = _loc4_;
            _loc1_.gfxId = _loc2_.config.gfxId;
            _loc1_.name = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.name." + _loc2_.config.locaId + ".capital");
            _loc1_.emergencyRate = FormulaProxy.calculateEmergencyRateForPatrol(_loc2_.config.behaviourOutput);
         }
         return _loc1_;
      }
      
      public function getPatrolOptions() : Vector.<PatrolOptionVo>
      {
         var _loc2_:PatrolOptionVo = null;
         var _loc3_:Vector.<ConfigPaymentPackDTO> = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:ConfigAssistDTO = null;
         var _loc7_:Number = NaN;
         var _loc1_:Vector.<PatrolOptionVo> = new Vector.<PatrolOptionVo>();
         for each(_loc6_ in this._assistProxy.getConfigAssistsByType(ServerAssistTypeConstants.EMERGENCY_SPAWNRATE))
         {
            _loc2_ = new PatrolOptionVo();
            _loc2_.btnText = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.button.capital");
            _loc2_.btnTooltip = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.button.tooltip");
            _loc2_.currency = ServerResConst.RESOURCE_REALCURRENCY;
            _loc2_.gfxId = _loc6_.gfxId;
            _loc2_.name = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.name." + _loc6_.locaId + ".capital");
            _loc4_ = LocaUtils.getString("rcl.miniLayer.streetPatrol","rcl.miniLayer.streetPatrol.rate." + _loc6_.locaId);
            _loc2_.rate = FormulaProxy.calculateEmergencyRateForPatrol(_loc6_.behaviourOutput);
            _loc2_.rateText = StringUtil.substitute(_loc4_,_loc2_.rate);
            _loc2_.runtimeHours = LocaUtils.getDurationH(_loc6_.lifetime / 1000);
            _loc2_.configId = _loc6_.id;
            _loc3_ = this._assistProxy.getAssistPaymentPacks(_loc6_.id);
            if(!(_loc3_ && _loc3_.length && Boolean(_loc3_[0])))
            {
               throw new IllegalOperationError("AssistViewProxy:: payment pack for patrol could not be found!");
            }
            _loc2_.price = _loc3_[0].priceRC;
            _loc7_ = 0;
            switch(_loc2_.currency)
            {
               case ServerResConst.RESOURCE_REALCURRENCY:
                  _loc7_ = this._resourceProxy.realCurrency;
                  break;
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  _loc7_ = this._resourceProxy.ingameCurrency;
            }
            _loc2_.affordable = _loc2_.price <= _loc7_;
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      private function get treasuryProxy() : CityTreasuryProxy
      {
         if(!this._cTP)
         {
            this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         }
         return this._cTP;
      }
   }
}

