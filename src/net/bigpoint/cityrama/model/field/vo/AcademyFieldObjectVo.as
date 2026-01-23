package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EducationPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class AcademyFieldObjectVo extends SpecialFieldObjectVo implements ITimerInterest
   {
      
      public static const ACADEMY_MODE_START:uint = 0;
      
      public static const ACADEMY_MODE_WAIT:uint = 1;
      
      public static const ACADEMY_MODE_FINISH:uint = 2;
      
      private var _currentAcademyMode:uint = 0;
      
      public function AcademyFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function get currentAcademyMode() : uint
      {
         if(this.educationIsDone)
         {
            return ACADEMY_MODE_FINISH;
         }
         if(this.educationIsIdle)
         {
            return ACADEMY_MODE_START;
         }
         return ACADEMY_MODE_WAIT;
      }
      
      public function get educationIsDone() : Boolean
      {
         if(buildingDTO == null || this.educationPhase == null)
         {
            return false;
         }
         return this.educationPhase.behaviourEndTime != 0 && (this.educationPhase.behaviourEndTime < currentTimeStamp + 500 || this.educationPhase.behaviourTimeLeft == 0);
      }
      
      public function get educationIsIdle() : Boolean
      {
         if(buildingDTO == null || this.educationPhase == null)
         {
            return false;
         }
         return this.educationPhase.behaviourEndTime == 0 && this.educationPhase.behaviourTimeLeft == 0;
      }
      
      public function get educationPhase() : EducationPhaseDTO
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.EDUCATION)
            {
               return _loc1_ as EducationPhaseDTO;
            }
         }
         return null;
      }
      
      override public function get percentageOfRemainingTimer() : Number
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(isConnectedToStreet && !isUnderConstruction())
         {
            _loc1_ = this.educationPhase.behaviourEndTime - currentTimeStamp;
            _loc2_ = this.educationPhase.config.durationConfig.duration + buildingDTO.professionals[0].extendedCount * configPlayfieldItemVo.educationBasicTime;
            return _loc1_ / _loc2_;
         }
         if(isUnderConstruction())
         {
            return super.percentageOfRemainingTimer;
         }
         return -1;
      }
      
      public function tick(param1:Number) : void
      {
         _currentTimestamp = param1;
      }
   }
}

