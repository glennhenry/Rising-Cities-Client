package net.bigpoint.cityrama.model.server.vo.server
{
   public class EducationPhaseDTO extends PhaseDTO
   {
      
      private var _educationStep:int;
      
      public function EducationPhaseDTO(param1:Object, param2:ConfigPhaseDTO)
      {
         super(param1,param2);
         this._educationStep = param1.a;
      }
      
      public function get behaviourInitialTime() : Number
      {
         return super.initTime;
      }
      
      public function get behaviourTimeLeft() : Number
      {
         return super.timeLeft;
      }
      
      public function get behaviourEndTime() : Number
      {
         return super.expirationTime;
      }
      
      public function get educationStep() : int
      {
         return this._educationStep;
      }
      
      public function set educationStep(param1:int) : void
      {
         this._educationStep = param1;
      }
      
      public function get configPhaseId() : Number
      {
         return super.phaseId;
      }
   }
}

