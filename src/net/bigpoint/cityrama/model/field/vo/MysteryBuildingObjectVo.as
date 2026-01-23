package net.bigpoint.cityrama.model.field.vo
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MysteryBuildingPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class MysteryBuildingObjectVo extends SpecialFieldObjectVo
   {
      
      public static const EVENT_CONSTRUCTION_TERM_CHANGED:String = "EVENT_CONSTRUCTION_TERM_CHANGED";
      
      private var _constructionTerm:uint = 1;
      
      private var _constructionTimer:Timer;
      
      private var _constructionTimeLeft:Number;
      
      private var _unwrapProgressIsRunning:Boolean = false;
      
      private var _totalConstructionTime:Number;
      
      public function MysteryBuildingObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
         this._constructionTimer = new Timer(1000);
      }
      
      public function get currentMysteryConstructionPhase() : PhaseDTO
      {
         var _loc1_:PhaseDTO = null;
         if(_buildingDTO)
         {
            for each(_loc1_ in _buildingDTO.activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function startConstructionTime() : void
      {
         if(this.currentMysteryConstructionPhase != null)
         {
            this.clearTimer();
            this._constructionTerm = 0;
            this._totalConstructionTime = Math.floor(this.currentMysteryConstructionPhase.config.durationConfig.duration / 1000);
            this._constructionTimeLeft = this.currentMysteryConstructionPhase.timeLeft;
            this._constructionTimeLeft = Math.floor(this._constructionTimeLeft / 1000);
            this.checkConstructionTerm();
            this._constructionTimer.start();
            this._constructionTimer.addEventListener(TimerEvent.TIMER,this.handleConstructionInterval);
         }
      }
      
      private function clearTimer() : void
      {
         this._constructionTimer.stop();
         this._constructionTimer.reset();
         this._constructionTimer.removeEventListener(TimerEvent.TIMER,this.handleConstructionInterval);
      }
      
      private function handleConstructionInterval(param1:TimerEvent) : void
      {
         --this._constructionTimeLeft;
         this.checkConstructionTerm();
      }
      
      public function get constructionTerm() : uint
      {
         return this._constructionTerm;
      }
      
      public function get mysteryResultFieldItemSize() : Number
      {
         var _loc1_:MysteryBuildingPhaseDTO = this.currentMysteryConstructionPhase as MysteryBuildingPhaseDTO;
         if(_loc1_ == null)
         {
            return 3;
         }
         return _loc1_.mysteryResultFieldItemSize;
      }
      
      private function checkConstructionTerm() : void
      {
         var _loc1_:uint = this.constructionTerm;
         var _loc2_:Number = this.mysteryResultFieldItemSize;
         if(this._constructionTimeLeft <= 1 || this.isHarvestReady)
         {
            this._constructionTerm = _loc2_;
            this.stopConstructionTime();
         }
         else if(this._constructionTimeLeft <= this._totalConstructionTime / 2 || this.halfDone)
         {
            switch(_loc2_)
            {
               case 1:
               case 2:
                  this._constructionTerm = 1;
                  break;
               case 3:
                  this._constructionTerm = 2;
            }
         }
         else
         {
            this._constructionTerm = 1;
         }
         if(_loc1_ != this.constructionTerm)
         {
            dispatchEvent(new Event(EVENT_CONSTRUCTION_TERM_CHANGED,true,true));
         }
      }
      
      private function get halfDone() : Boolean
      {
         if(this.currentMysteryConstructionPhase)
         {
            if(this.currentMysteryConstructionPhase.expirationTime - this.currentMysteryConstructionPhase.config.durationConfig.duration / 2 <= currentTimeStamp)
            {
               return true;
            }
         }
         return false;
      }
      
      public function stopConstructionTime() : void
      {
         this.clearTimer();
         this._totalConstructionTime = 0;
         this._constructionTimeLeft = 0;
      }
      
      public function updateConstructionTime() : void
      {
         this._constructionTimeLeft = this.currentMysteryConstructionPhase.timeLeft;
         this._constructionTimeLeft = Math.floor(this._constructionTimeLeft / 1000);
         this.checkConstructionTerm();
      }
      
      public function get unwrapProgressIsRunning() : Boolean
      {
         return this._unwrapProgressIsRunning;
      }
      
      public function set unwrapProgressIsRunning(param1:Boolean) : void
      {
         this._unwrapProgressIsRunning = param1;
      }
      
      override public function get isHarvestReady() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(_buildingDTO)
         {
            for each(_loc1_ in _buildingDTO.activePhases)
            {
               if(Boolean(_loc1_) && _loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
               {
                  return _loc1_.timeLeft == 0 || _loc1_.expirationTime <= currentTimeStamp;
               }
            }
         }
         return false;
      }
   }
}

