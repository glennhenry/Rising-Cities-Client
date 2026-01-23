package net.bigpoint.cityrama.model.improvement
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityImprovementProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityImprovementProxy";
      
      private var _cP:CityProxy;
      
      private var _tP:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _improvements:Vector.<ImprovementVo>;
      
      public function CityImprovementProxy()
      {
         super(NAME);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.updateData();
      }
      
      private function get cityProxy() : CityProxy
      {
         if(this._cP == null)
         {
            this._cP = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         }
         return this._cP;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(this._tP == null)
         {
            this._tP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._tP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._configProxy == null)
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._configProxy;
      }
      
      public function isImprovementActive(param1:String) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:ImprovementVo = this.getImprovement(param1);
         if(_loc2_)
         {
            _loc3_ = this.timerProxy.currentTimeStamp;
            return !(_loc3_ < _loc2_.startTime || _loc3_ > _loc2_.expirationTime);
         }
         return false;
      }
      
      public function getImprovement(param1:String) : ImprovementVo
      {
         var _loc2_:ImprovementVo = null;
         var _loc3_:String = null;
         for each(_loc2_ in this._improvements)
         {
            for each(_loc3_ in _loc2_.tags)
            {
               if(_loc3_ == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function updateData() : void
      {
         var _loc1_:ImprovementVo = null;
         var _loc2_:ConfigImprovementDTO = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:ImprovementDTO = null;
         var _loc5_:Number = NaN;
         this._improvements = new Vector.<ImprovementVo>();
         for each(_loc4_ in this.cityProxy.city.improvements)
         {
            _loc2_ = this.configProxy.config.cityImprovements[_loc4_.configId];
            _loc1_ = new ImprovementVo(_loc4_,_loc2_);
            _loc3_ = new Vector.<String>();
            for each(_loc5_ in _loc2_.tagIds)
            {
               _loc3_.push((this.configProxy.config.tags[_loc5_] as ConfigTagDTO).tagName);
            }
            _loc1_.tags = _loc3_;
            this._improvements.push(_loc1_);
            this.activationAction(_loc1_);
         }
      }
      
      private function activationAction(param1:ImprovementVo) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1.tags)
         {
            switch(_loc2_)
            {
               case ServerTagConstants.CLIENT_BONUS_DAY:
                  TweenMax.delayedCall(1,sendNotification,[ApplicationNotificationConstants.OPEN_BONUS_DAY_ACTIVATED_LAYER]);
            }
         }
      }
   }
}

