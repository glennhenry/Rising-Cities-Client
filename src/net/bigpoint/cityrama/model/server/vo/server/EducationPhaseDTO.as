package net.bigpoint.cityrama.model.server.vo.server
{
   public class EducationPhaseDTO extends PhaseDTO
   {
      
      private var _educationStep:int;
      
      public function EducationPhaseDTO(param1:Object, param2:ConfigPhaseDTO)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
            if(_loc3_)
            {
               addr0023:
               this._educationStep = param1.a;
            }
            return;
         }
         §§goto(addr0023);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._educationStep = param1;
         }
      }
      
      public function get configPhaseId() : Number
      {
         return super.phaseId;
      }
   }
}

