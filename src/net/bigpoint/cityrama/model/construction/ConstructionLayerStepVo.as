package net.bigpoint.cityrama.model.construction
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class ConstructionLayerStepVo
   {
      
      public static var STATE_AVAILABLE:String = "STATE_AVAILABLE";
      
      public static var STATE_RUNNING:String = "STATE_RUNNING";
      
      public static var STATE_DONE:String = "STATE_DONE";
      
      public static var STATE_UNAVAILABLE:String = "STATE_UNAVAILABLE";
      
      private var _state:String;
      
      private var _configOutput:ConfigOutputDTO;
      
      private var _currentStock:int;
      
      private var _phaseID:Number;
      
      private var _runningPhase:PhaseDTO;
      
      private var _currentTime:Number;
      
      private var _duration:int;
      
      private var _instantFinishCost:Number = 0;
      
      private var _rcStock:Number;
      
      private var _isUpgrade:Boolean;
      
      private var _stepIndex:int;
      
      private var _numIndices:int;
      
      private var _displayInstantButton:Boolean = true;
      
      public function ConstructionLayerStepVo()
      {
         super();
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      public function set configOutput(param1:ConfigOutputDTO) : void
      {
         this._configOutput = param1;
      }
      
      public function get configOutput() : ConfigOutputDTO
      {
         return this._configOutput;
      }
      
      public function get icon() : String
      {
         if(this._state == STATE_DONE)
         {
            return "task_checkmark_grey";
         }
         if(this._configOutput)
         {
            if(this._configOutput.goodConfig)
            {
               return "small_" + this._configOutput.goodConfig.gfxId;
            }
            if(this._configOutput.resourceConfig)
            {
               switch(this._configOutput.resourceConfig.type)
               {
                  case ServerResConst.RESOURCE_REALCURRENCY:
                     return "task50016";
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                     return "task50014";
                  case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                     return "task50030";
                  case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                     return "task50035";
               }
            }
         }
         return "";
      }
      
      public function get iconLibName() : String
      {
         if(this._state == STATE_DONE)
         {
            return "gui_popups_questPopup";
         }
         if(this._configOutput)
         {
            if(this._configOutput.goodConfig)
            {
               return "gui_popups_smallGoodIcons";
            }
            if(this._configOutput.resourceConfig)
            {
               return "gui_popups_questPopup";
            }
         }
         return "";
      }
      
      public function get resourceIcon() : String
      {
         if(this._configOutput)
         {
            if(this._configOutput.goodConfig)
            {
               return "product_icon_small";
            }
            if(this._configOutput.resourceConfig)
            {
               return "";
            }
         }
         return "";
      }
      
      public function get resourceIconLibName() : String
      {
         if(this._configOutput)
         {
            if(this._configOutput.goodConfig)
            {
               return "gui_resources_icons";
            }
            if(this._configOutput.resourceConfig)
            {
               return "";
            }
         }
         return "";
      }
      
      public function get progressTarget() : int
      {
         if(this._configOutput)
         {
            return Math.abs(this._configOutput.outputAmount);
         }
         return 1;
      }
      
      public function get currentProgress() : int
      {
         if(this.state == STATE_DONE)
         {
            if(this._configOutput)
            {
               return Math.abs(this._configOutput.outputAmount);
            }
         }
         return this._currentStock;
      }
      
      public function set currentStock(param1:int) : void
      {
         this._currentStock = param1;
      }
      
      public function get timerBarData() : TimerBarComponentVo
      {
         var _loc1_:TimerBarComponentVo = null;
         if(this.state == STATE_RUNNING && Boolean(this._runningPhase))
         {
            _loc1_ = new TimerBarComponentVo();
            _loc1_.userMayStart = false;
            _loc1_.cycleLength = this._runningPhase.config.durationConfig.duration;
            _loc1_.startTime = this._runningPhase.expirationTime - _loc1_.cycleLength;
            _loc1_.targetTime = this._runningPhase.expirationTime;
            _loc1_.currentTime = this._currentTime;
            return _loc1_;
         }
         return null;
      }
      
      public function set runningPhase(param1:PhaseDTO) : void
      {
         this._runningPhase = param1;
      }
      
      public function get currentTime() : Number
      {
         return this._currentTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         this._currentTime = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this._duration = param1;
      }
      
      public function get duration() : int
      {
         return this._duration;
      }
      
      public function get instantFinishCost() : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.state == STATE_DONE)
         {
            return 0;
         }
         var _loc1_:Number = Math.abs(this._instantFinishCost);
         if(_loc1_ == 0)
         {
            return _loc1_;
         }
         if(this.state == STATE_RUNNING)
         {
            _loc1_ *= 0.5;
            if(this._runningPhase)
            {
               _loc2_ = this._runningPhase.expirationTime - this._runningPhase.config.durationConfig.duration;
               _loc3_ = 1 - (this._currentTime - _loc2_) / (this._runningPhase.expirationTime - _loc2_);
               _loc1_ *= _loc3_;
            }
         }
         _loc1_ = Math.floor(_loc1_);
         return Math.max(_loc1_,1);
      }
      
      public function set instantFinishCost(param1:Number) : void
      {
         this._instantFinishCost = param1;
      }
      
      public function get phaseID() : Number
      {
         return this._phaseID;
      }
      
      public function set phaseID(param1:Number) : void
      {
         this._phaseID = param1;
      }
      
      public function get isUpgrade() : Boolean
      {
         return this._isUpgrade;
      }
      
      public function set isUpgrade(param1:Boolean) : void
      {
         this._isUpgrade = param1;
      }
      
      public function get stepIndex() : int
      {
         return this._stepIndex;
      }
      
      public function set stepIndex(param1:int) : void
      {
         this._stepIndex = param1;
      }
      
      public function get numIndices() : int
      {
         return this._numIndices;
      }
      
      public function set numIndices(param1:int) : void
      {
         this._numIndices = param1;
      }
      
      public function get rcStock() : Number
      {
         return this._rcStock;
      }
      
      public function set rcStock(param1:Number) : void
      {
         this._rcStock = param1;
      }
      
      public function get displayInstantButton() : Boolean
      {
         return this._displayInstantButton;
      }
      
      public function set displayInstantButton(param1:Boolean) : void
      {
         this._displayInstantButton = param1;
      }
   }
}

