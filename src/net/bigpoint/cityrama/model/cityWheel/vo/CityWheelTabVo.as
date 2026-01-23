package net.bigpoint.cityrama.model.cityWheel.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class CityWheelTabVo
   {
      
      private var _lottery:Vector.<CityWheelRewardVo>;
      
      private var _buffs:Vector.<ConfigCityWheelBuffDTO>;
      
      private var _numSpinTokens:int = 0;
      
      private var _numBuffTokens:int = 0;
      
      private var _availabilityTimer:TimerBarComponentVo;
      
      public function CityWheelTabVo()
      {
         super();
      }
      
      public function set lottery(param1:Vector.<CityWheelRewardVo>) : void
      {
         this._lottery = param1;
      }
      
      public function get numSpinTokens() : int
      {
         return this._numSpinTokens;
      }
      
      public function set numSpinTokens(param1:int) : void
      {
         this._numSpinTokens = param1;
      }
      
      public function get numBuffTokens() : int
      {
         return this._numBuffTokens;
      }
      
      public function set numBuffTokens(param1:int) : void
      {
         this._numBuffTokens = param1;
      }
      
      public function set buffs(param1:Vector.<ConfigCityWheelBuffDTO>) : void
      {
         this._buffs = param1;
      }
      
      public function get availabilityTimer() : TimerBarComponentVo
      {
         return this._availabilityTimer;
      }
      
      public function set availabilityTimer(param1:TimerBarComponentVo) : void
      {
         this._availabilityTimer = param1;
      }
      
      public function get rewardData() : ArrayCollection
      {
         var _loc2_:CityWheelRewardVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this._lottery)
         {
            _loc1_.addItem(_loc2_);
         }
         return _loc1_;
      }
      
      public function get buffData() : ArrayCollection
      {
         var _loc2_:ConfigCityWheelBuffDTO = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this._buffs)
         {
            _loc1_.addItem(_loc2_);
         }
         return _loc1_;
      }
   }
}

