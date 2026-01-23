package net.bigpoint.cityrama.model.cityWheel
{
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CityWheelProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "CityWheelProxy";
      
      private var _cp:CityProxy;
      
      private var _lastCollectedRewards:Vector.<RewardItemComponentVo>;
      
      public function CityWheelProxy()
      {
         super(NAME);
      }
      
      public function get possibleRewards() : Vector.<CityWheelRewardDTO>
      {
         if(this.cityProxy.city.cityWheel)
         {
            return this.cityProxy.city.cityWheel.lottery;
         }
         return null;
      }
      
      public function get drawnBuff() : ConfigCityWheelBuffDTO
      {
         if(this.cityProxy.city.cityWheel)
         {
            return this.cityProxy.city.cityWheel.drawnbuff;
         }
         return null;
      }
      
      public function get drawnRewards() : Vector.<CityWheelRewardDTO>
      {
         if(this.cityProxy.city.cityWheel)
         {
            return this.cityProxy.city.cityWheel.drawnRewards;
         }
         return null;
      }
      
      public function get rewardsReadyToCollect() : Boolean
      {
         return this.cityProxy.city.cityWheel != null && this.cityProxy.city.cityWheel.drawnRewards != null && this.cityProxy.city.cityWheel.drawnRewards.length > 0;
      }
      
      private function get cityProxy() : CityProxy
      {
         if(this._cp == null)
         {
            this._cp = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         }
         return this._cp;
      }
      
      public function get lastCollectedRewards() : Vector.<RewardItemComponentVo>
      {
         return this._lastCollectedRewards;
      }
      
      public function set lastCollectedRewards(param1:Vector.<RewardItemComponentVo>) : void
      {
         this._lastCollectedRewards = param1;
      }
   }
}

