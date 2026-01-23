package net.bigpoint.cityrama.model.assistants
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.assistants.vo.AssistVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityAssistProxy extends Proxy
   {
      
      public static const NAME:String = "CityAssistProxy";
      
      private var _cityProxy:CityProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _ownedAssists:Vector.<AssistVo>;
      
      private var _initialized:Boolean = false;
      
      private var _rentCollectorActiveOnRebuild:AssistVo;
      
      public function CityAssistProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private static function isAssistPaymentPack(param1:ConfigPaymentPackDTO) : Boolean
      {
         if(param1.type == ServerPaymentPackConst.INTERNAL || param1.type == ServerPaymentPackConst.EXTERNAL)
         {
            if(param1.assists.length > 0)
            {
               if(param1.goods.length == 0 && param1.resources.length == 0 && param1.improvements.length == 0 && param1.permissions.length == 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function onRegister() : void
      {
         facade.registerProxy(new AssistViewProxy(AssistViewProxy.NAME));
         this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         this._cityProxy = CityProxy(facade.retrieveProxy(CityProxy.NAME));
         this._timerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME)) as TimerProxy;
         this._ownedAssists = new Vector.<AssistVo>();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         facade.removeProxy(AssistViewProxy.NAME);
      }
      
      public function init() : void
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in this._cityProxy.city.phases)
         {
            this._ownedAssists.push(this.createAssistVo(_loc1_));
         }
         this._initialized = true;
         sendNotification(ApplicationNotificationConstants.ASSIST_DATA_CHANGE);
         this.checkRentCollectorActivation();
      }
      
      private function checkRentCollectorActivation() : void
      {
         var _loc1_:AssistVo = null;
         if(this._rentCollectorActiveOnRebuild)
         {
            if(this.isAssistActive(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL))
            {
               _loc1_ = this.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
               if(Boolean(_loc1_) && this._rentCollectorActiveOnRebuild.endTime < _loc1_.endTime)
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_ACTIVATED_LAYER);
               }
            }
            this._rentCollectorActiveOnRebuild = null;
         }
         else if(this.isAssistActive(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL))
         {
            sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_ACTIVATED_LAYER);
         }
      }
      
      private function createAssistVo(param1:PhaseDTO) : AssistVo
      {
         var _loc2_:AssistVo = new AssistVo();
         _loc2_.endTime = param1.expirationTime;
         _loc2_.initTime = param1.initTime;
         _loc2_.configId = param1.phaseId;
         _loc2_.config = this.getAssistConfigByPhaseId(param1.phaseId);
         return _loc2_;
      }
      
      private function getAssistConfigByPhaseId(param1:Number) : ConfigAssistDTO
      {
         var _loc2_:ConfigAssistDTO = null;
         for each(_loc2_ in this._configProxy.config.assists)
         {
            if(_loc2_.connectedPhaseId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function rebuild() : void
      {
         this._rentCollectorActiveOnRebuild = this.getRunningAssistByType(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
         if(!this._ownedAssists)
         {
            this._ownedAssists = new Vector.<AssistVo>();
         }
         this._initialized = false;
         this._ownedAssists.length = 0;
         this.init();
      }
      
      public function isAssistActive(param1:String) : Boolean
      {
         var _loc2_:AssistVo = this.getRunningAssistByType(param1);
         if(_loc2_)
         {
            if(_loc2_.endTime > this._timerProxy.currentTimeStamp)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getRunningAssistByType(param1:String) : AssistVo
      {
         var _loc2_:AssistVo = null;
         for each(_loc2_ in this._ownedAssists)
         {
            if(_loc2_.config.type == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getAssistPaymentPacks(param1:Number) : Vector.<ConfigPaymentPackDTO>
      {
         var _loc4_:ConfigPaymentPackDTO = null;
         var _loc2_:ConfigAssistDTO = this.getConfigAssistById(param1);
         var _loc3_:Vector.<ConfigPaymentPackDTO> = new Vector.<ConfigPaymentPackDTO>();
         if(_loc2_)
         {
            for each(_loc4_ in this._configProxy.config.paymentPacks)
            {
               if(isAssistPaymentPack(_loc4_))
               {
                  if(_loc2_.id == _loc4_.assists[0].configId)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public function getConfigAssistsByType(param1:String) : Vector.<ConfigAssistDTO>
      {
         var _loc3_:ConfigAssistDTO = null;
         var _loc2_:Vector.<ConfigAssistDTO> = new Vector.<ConfigAssistDTO>();
         for each(_loc3_ in this._configProxy.config.assists)
         {
            if(_loc3_.type == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function getConfigAssistById(param1:Number) : ConfigAssistDTO
      {
         return this._configProxy.config.assists[param1];
      }
      
      public function get initialized() : Boolean
      {
         return this._initialized;
      }
      
      public function get ownedAssists() : Vector.<AssistVo>
      {
         return this._ownedAssists;
      }
   }
}

