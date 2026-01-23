package net.bigpoint.cityrama.model.globalbalance
{
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.needsSystem.GlobalModifiersVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class GlobalBalanceProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "GlobalBalanceProxy";
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _gameconfigProxy:GameConfigProxy;
      
      public function GlobalBalanceProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
      }
      
      public function get energyPercental() : Number
      {
         var _loc1_:Number = NaN;
         _loc1_ = this.playfieldProxy.energyProduced / this.playfieldProxy.energyConsumed;
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         else if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return _loc1_;
      }
      
      public function get happinessPercental() : Number
      {
         var _loc1_:Number = NaN;
         _loc1_ = this.playfieldProxy.happynessProduced / this.playfieldProxy.happynessConsumed;
         if(_loc1_ < 0)
         {
            _loc1_ = 0;
         }
         else if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         return _loc1_;
      }
      
      public function get energyOutputModifier() : Number
      {
         if(this.energyPercental <= 0.25)
         {
            return 0.25;
         }
         if(this.energyPercental > 0.25 && this.energyPercental <= 0.5)
         {
            return 0.5;
         }
         if(this.energyPercental > 0.5 && this.energyPercental <= 0.75)
         {
            return 0.75;
         }
         if(this.energyPercental > 0.75)
         {
            return 1;
         }
         return 0;
      }
      
      public function get happinessOutputModifier() : Number
      {
         if(this.happinessPercental <= 0.25)
         {
            return 0.25;
         }
         if(this.happinessPercental > 0.25 && this.happinessPercental <= 0.5)
         {
            return 0.5;
         }
         if(this.happinessPercental > 0.5 && this.happinessPercental <= 0.75)
         {
            return 0.75;
         }
         if(this.happinessPercental > 0.75)
         {
            return 1;
         }
         return 0;
      }
      
      override public function onRemove() : void
      {
      }
      
      private function get playfieldProxy() : PlayfieldProxy
      {
         if(this._playfieldProxy == null)
         {
            this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         }
         return this._playfieldProxy;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._gameconfigProxy == null)
         {
            this._gameconfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gameconfigProxy;
      }
      
      public function get eventOutPutModifier() : Number
      {
         return 0;
      }
      
      public function get allGlobalModifiers() : GlobalModifiersVo
      {
         return new GlobalModifiersVo(this.energyOutputModifier,this.happinessOutputModifier,this.eventOutPutModifier);
      }
   }
}

