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
         super();
         this._step = param1.step;
         this._goodCost = param1.gc;
         this._resourceCost = param1.rc;
         this._minSkillPointAdded = param1.min;
         this._maxSkillPointAdded = param1.max;
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

