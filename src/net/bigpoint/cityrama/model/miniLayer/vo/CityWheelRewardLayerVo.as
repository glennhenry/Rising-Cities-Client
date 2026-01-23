package net.bigpoint.cityrama.model.miniLayer.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   
   public class CityWheelRewardLayerVo
   {
      
      private var _drawnRewards:ArrayCollection;
      
      private var _rewardDrops:Vector.<DropInfoVo>;
      
      public function CityWheelRewardLayerVo()
      {
         super();
      }
      
      public function get drawnRewards() : ArrayCollection
      {
         return this._drawnRewards;
      }
      
      public function set drawnRewards(param1:ArrayCollection) : void
      {
         this._drawnRewards = param1;
      }
      
      public function get rewardDrops() : Vector.<DropInfoVo>
      {
         return this._rewardDrops;
      }
      
      public function set rewardDrops(param1:Vector.<DropInfoVo>) : void
      {
         this._rewardDrops = param1;
      }
      
      public function get drawnRewardsAsVector() : Vector.<RewardItemComponentVo>
      {
         var _loc1_:Vector.<RewardItemComponentVo> = null;
         var _loc2_:RewardItemComponentVo = null;
         if(this.drawnRewards)
         {
            _loc1_ = new Vector.<RewardItemComponentVo>();
            for each(_loc2_ in this.drawnRewards)
            {
               _loc1_.push(_loc2_);
            }
            return _loc1_;
         }
         return null;
      }
   }
}

