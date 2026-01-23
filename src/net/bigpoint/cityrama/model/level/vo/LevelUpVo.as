package net.bigpoint.cityrama.model.level.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   
   public class LevelUpVo
   {
      
      private var _level:Number;
      
      private var _rewards:ArrayCollection;
      
      private var _rewardDrops:Vector.<DropInfoVo>;
      
      public function LevelUpVo()
      {
         super();
         this._rewardDrops = new Vector.<DropInfoVo>();
      }
      
      public function get level() : Number
      {
         return this._level;
      }
      
      public function set level(param1:Number) : void
      {
         this._level = param1;
      }
      
      public function get rewards() : ArrayCollection
      {
         return this._rewards;
      }
      
      public function set rewards(param1:ArrayCollection) : void
      {
         this._rewards = param1;
      }
      
      public function get rewardDrops() : Vector.<DropInfoVo>
      {
         return this._rewardDrops;
      }
      
      public function set rewardDrops(param1:Vector.<DropInfoVo>) : void
      {
         this._rewardDrops = param1;
      }
   }
}

