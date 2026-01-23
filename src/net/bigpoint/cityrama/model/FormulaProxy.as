package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FormulaProxy extends Proxy
   {
      
      public static const NAME:String = "FormulaProxy";
      
      private var _timerProxy:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function FormulaProxy(param1:String)
      {
         super(param1);
      }
      
      public static function calculateEmergencyRateForPatrol(param1:int) : int
      {
         return 100 * (6 / (5 * (1 + param1 / 1000) + 1) - 1);
      }
      
      public function getInstantFinishCostForAcademyPhase(param1:AcademyFieldObjectVo) : Number
      {
         var _loc2_:Number = NaN;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 1;
         var _loc4_:Number = 1;
         for each(_loc5_ in param1.educationPhase.config.listEntryOutputs)
         {
            if(_loc5_.tagConfig)
            {
               if(_loc5_.tagConfig.tagName == ServerTagConstants.INSTANT_FINISH)
               {
                  _loc3_ = _loc5_.outputAmount;
               }
            }
         }
         _loc6_ = Number(this.configProxy.config.balanceParameters[ServerBalanceParameterConstants.EDUCATION_EXTENSION_TIME].value);
         _loc7_ = param1.buildingDTO.config.educationBasicTime;
         _loc4_ = _loc7_ = _loc7_ + _loc6_ * param1.educationPhase.educationStep;
         if(param1.educationPhase.behaviourInitialTime != 0 && param1.educationPhase.behaviourEndTime != 0)
         {
            _loc4_ = param1.educationPhase.behaviourEndTime - param1.educationPhase.behaviourInitialTime;
         }
         _loc4_ /= 1000;
         _loc2_ = Math.round(Math.abs(_loc3_ * Math.ceil(5 * Math.pow(_loc4_,0.4))));
         if(_loc2_ < 1)
         {
            return 1;
         }
         return _loc2_;
      }
      
      public function getInstantFinishCostForProductionPhase(param1:ConfigPhaseDTO, param2:PhaseDTO = null) : Number
      {
         var _loc3_:Number = NaN;
         var _loc6_:ConfigOutputDTO = null;
         var _loc4_:Number = 1;
         var _loc5_:Number = 1;
         for each(_loc6_ in param1.listEntryOutputs)
         {
            if(_loc6_.tagConfig)
            {
               if(_loc6_.tagConfig.tagName == ServerTagConstants.INSTANT_FINISH)
               {
                  _loc4_ = _loc6_.outputAmount;
               }
            }
         }
         if(Boolean(param2) && !isNaN(param2.timeLeft))
         {
            if(this.timerProxy.currentTimeStamp < param2.expirationTime)
            {
               _loc5_ = (param2.expirationTime - this.timerProxy.currentTimeStamp) / 1000;
            }
         }
         else
         {
            _loc5_ = param1.durationConfig.duration / 1000;
         }
         _loc3_ = Math.round(Math.abs(_loc4_ * Math.round(5 * Math.pow(_loc5_,0.4))));
         if(_loc3_ < 1)
         {
            return 1;
         }
         return _loc3_;
      }
      
      public function getInstantFinishCostForMysteryBuilding(param1:Vector.<PhaseDTO>) : Number
      {
         var _loc2_:Number = NaN;
         var _loc5_:PhaseDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc3_:Number = 1;
         for each(_loc5_ in param1)
         {
            if(_loc5_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               for each(_loc6_ in _loc5_.config.listEntryOutputs)
               {
                  if(_loc6_.tagConfig != null && _loc6_.tagConfig.tagName == ServerTagConstants.INSTANT_FINISH)
                  {
                     _loc3_ = _loc6_.outputAmount;
                     break;
                  }
               }
               if(this.timerProxy.currentTimeStamp < _loc5_.expirationTime)
               {
                  var _loc4_:Number = (_loc5_.expirationTime - this.timerProxy.currentTimeStamp) / 1000;
                  break;
               }
               _loc4_ = 0;
               break;
            }
         }
         _loc2_ = Math.ceil(Math.abs(_loc3_ * Math.ceil(5 * Math.pow(1,0.4))));
         if(_loc2_ < 1)
         {
            return 1;
         }
         return _loc2_;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(this._timerProxy == null)
         {
            this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._timerProxy;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._configProxy == null)
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._configProxy;
      }
   }
}

