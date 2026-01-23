package net.bigpoint.cityrama.model.common.vo
{
   public class RewardImprovementItemComponentVo extends RewardItemComponentVo
   {
      
      private var _animationDelay:Number;
      
      private var _configID:Number;
      
      public function RewardImprovementItemComponentVo(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(param1);
            if(!(_loc2_ && _loc3_))
            {
               if(param1.configID != null)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0042);
                  }
               }
               §§goto(addr0059);
            }
         }
         addr0042:
         this._configID = param1.configID;
         if(!(_loc2_ && Boolean(param1)))
         {
            addr0059:
            this._animationDelay = 1;
         }
      }
      
      public function get animationDelay() : Number
      {
         return this._animationDelay;
      }
      
      public function set animationDelay(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._animationDelay = param1;
         }
      }
      
      public function get configID() : Number
      {
         return this._configID;
      }
   }
}

