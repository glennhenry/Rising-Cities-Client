package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEducationStepDTO
   {
      
      private var _step:int;
      
      private var _goodCost:int;
      
      private var _resourceCost:int;
      
      private var _minSkillPointAdded:int;
      
      private var _maxSkillPointAdded:int;
      
      public function ConfigEducationStepDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super();
            if(_loc3_ || Boolean(this))
            {
               this._step = param1.step;
               if(_loc3_ || _loc2_)
               {
                  addr0051:
                  this._goodCost = param1.gc;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr0073:
                     this._resourceCost = param1.rc;
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0073);
            }
            addr008a:
            this._minSkillPointAdded = param1.min;
            if(_loc3_)
            {
               addr0099:
               this._maxSkillPointAdded = param1.max;
            }
            return;
         }
         §§goto(addr0051);
      }
      
      public function get maxSkillPointAdded() : int
      {
         return this._maxSkillPointAdded;
      }
      
      public function get minSkillPointAdded() : int
      {
         return this._minSkillPointAdded;
      }
      
      public function get resourceCost() : int
      {
         return this._resourceCost;
      }
      
      public function get goodCost() : int
      {
         return this._goodCost;
      }
      
      public function get step() : int
      {
         return this._step;
      }
   }
}

