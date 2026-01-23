package net.bigpoint.cityrama.model.common.vo
{
   public class RewardImprovementItemComponentVo extends RewardItemComponentVo
   {
      
      private var _animationDelay:Number;
      
      private var _configID:Number;
      
      public function RewardImprovementItemComponentVo(param1:Object)
      {
         super(param1);
         if(param1.configID != null)
         {
            this._configID = param1.configID;
         }
         this._animationDelay = 1;
      }
      
      public function get animationDelay() : Number
      {
         return this._animationDelay;
      }
      
      public function set animationDelay(param1:Number) : void
      {
         this._animationDelay = param1;
      }
      
      public function get configID() : Number
      {
         return this._configID;
      }
   }
}

