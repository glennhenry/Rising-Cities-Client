package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class TownHallFieldObjectVo extends SpecialFieldObjectVo
   {
      
      private var _fakeAnimationForQuest:String;
      
      public function TownHallFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function get fakeAnimationForQuest() : String
      {
         return this._fakeAnimationForQuest;
      }
      
      public function set fakeAnimationForQuest(param1:String) : void
      {
         this._fakeAnimationForQuest = param1;
      }
      
      override public function set userInteractionLocked(param1:Boolean) : void
      {
         super.userInteractionLocked = param1;
      }
      
      override public function get isHarvestReady() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(_buildingDTO)
         {
            for each(_loc1_ in _buildingDTO.activePhases)
            {
               if(Boolean(_loc1_) && _loc1_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
               {
                  if(_loc1_.timeLeft == 0 || _loc1_.expirationTime <= currentTimeStamp)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      override public function get activePhases() : Vector.<PhaseDTO>
      {
         var _loc2_:PhaseDTO = null;
         var _loc1_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         for each(_loc2_ in _buildingDTO.activePhases)
         {
            if(_loc2_.config.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
            {
               _loc1_.unshift(_loc2_);
            }
            else
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      override public function isReadyForUpgrade() : Boolean
      {
         if(this.isHarvestReady)
         {
            return false;
         }
         return super.isReadyForUpgrade();
      }
   }
}

