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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get drawnRewards() : ArrayCollection
      {
         return this._drawnRewards;
      }
      
      public function set drawnRewards(param1:ArrayCollection) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._drawnRewards = param1;
         }
      }
      
      public function get rewardDrops() : Vector.<DropInfoVo>
      {
         return this._rewardDrops;
      }
      
      public function set rewardDrops(param1:Vector.<DropInfoVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._rewardDrops = param1;
         }
      }
      
      public function get drawnRewardsAsVector() : Vector.<RewardItemComponentVo>
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:Vector.<RewardItemComponentVo> = null;
         var _loc2_:RewardItemComponentVo = null;
         if(_loc5_)
         {
            if(this.drawnRewards)
            {
               _loc1_ = new Vector.<RewardItemComponentVo>();
               addr002d:
               for each(_loc2_ in this.drawnRewards)
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     _loc1_.push(_loc2_);
                  }
               }
               if(!_loc6_)
               {
                  return _loc1_;
               }
            }
            return null;
         }
         §§goto(addr002d);
      }
   }
}

