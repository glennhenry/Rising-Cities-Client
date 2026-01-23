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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_)
            {
               addr0025:
               this._rewardDrops = new Vector.<DropInfoVo>();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function get level() : Number
      {
         return this._level;
      }
      
      public function set level(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._level = param1;
         }
      }
      
      public function get rewards() : ArrayCollection
      {
         return this._rewards;
      }
      
      public function set rewards(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._rewards = param1;
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
   }
}

