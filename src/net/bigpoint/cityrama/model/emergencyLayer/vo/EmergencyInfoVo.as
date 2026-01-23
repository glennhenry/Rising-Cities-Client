package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   
   public class EmergencyInfoVo
   {
      
      private var _emergencyDTO:EmergencyDTO;
      
      private var _billboardObjVo:BillboardObjectVo;
      
      private var _requiredFireGrade:int;
      
      private var _requiredPoliceGrade:int;
      
      private var _requiredHospitalGrade:int;
      
      private var _currentFireGrade:int;
      
      private var _currentPoliceGrade:int;
      
      private var _currentHospitalGrade:int;
      
      private var _maxSuccessPercent:Number;
      
      private var _maxSuccessPoints:int;
      
      private var _maxPossibleSuccessPoints:int;
      
      private var _currentSuccessPercent:Number;
      
      private var _currentSuccessPoints:int;
      
      private var _rewardTypeThresholds:Vector.<ConfigProfessionalAttributeThresholdDTO>;
      
      private var _rewardAmountThresholds:Vector.<ConfigProfessionalAttributeThresholdDTO>;
      
      private var _currentReward:ConfigGoodDTO;
      
      private var _currentRewardAmount:Number;
      
      private var _possibleProfessionals:Vector.<ProfessionalDTO>;
      
      private var _slotVector:Vector.<SlotProfessionalVo>;
      
      private var _efficiencyPercent:Number;
      
      private var _efficiencyPoints:Number;
      
      private var _efficiencyMaxPoints:Number;
      
      private var _luckPercent:Number;
      
      private var _luckPoints:Number;
      
      private var _luckMaxPoints:Number;
      
      private var _goofyPercent:Number;
      
      private var _goofyPoints:Number;
      
      private var _goofyMaxPoints:Number;
      
      private var _showZoneLayer:Boolean;
      
      public function EmergencyInfoVo(param1:BillboardObjectVo)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this._billboardObjVo = param1;
               if(_loc3_ || _loc3_)
               {
                  this._emergencyDTO = this._billboardObjVo.buildingDTO.emergencyDTO;
                  if(_loc3_)
                  {
                     addr0051:
                     this._slotVector = new Vector.<SlotProfessionalVo>();
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0051);
            }
            addr0060:
            return;
         }
         §§goto(addr0051);
      }
      
      public function get maxSuccessPercent() : Number
      {
         return this._maxSuccessPercent;
      }
      
      public function set maxSuccessPercent(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._maxSuccessPercent = param1;
         }
      }
      
      public function get currentSuccessPercent() : Number
      {
         return this._currentSuccessPercent;
      }
      
      public function set currentSuccessPercent(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._currentSuccessPercent = param1;
         }
      }
      
      public function get efficiencyPercent() : Number
      {
         return this._efficiencyPercent;
      }
      
      public function set efficiencyPercent(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._efficiencyPercent = param1;
         }
      }
      
      public function get luckPercent() : Number
      {
         return this._luckPercent;
      }
      
      public function set luckPercent(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._luckPercent = param1;
         }
      }
      
      public function get goofyPercent() : Number
      {
         return this._goofyPercent;
      }
      
      public function set goofyPercent(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._goofyPercent = param1;
         }
      }
      
      public function get possibleProfessionals() : Vector.<ProfessionalDTO>
      {
         return this._possibleProfessionals;
      }
      
      public function set possibleProfessionals(param1:Vector.<ProfessionalDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._possibleProfessionals = param1;
         }
      }
      
      public function get slotVector() : Vector.<SlotProfessionalVo>
      {
         return this._slotVector;
      }
      
      public function set slotVector(param1:Vector.<SlotProfessionalVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._slotVector = param1;
         }
      }
      
      public function get requiredFireGrade() : int
      {
         return this._requiredFireGrade;
      }
      
      public function set requiredFireGrade(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._requiredFireGrade = param1;
         }
      }
      
      public function get requiredPoliceGrade() : int
      {
         return this._requiredPoliceGrade;
      }
      
      public function set requiredPoliceGrade(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._requiredPoliceGrade = param1;
         }
      }
      
      public function get requiredHospitalGrade() : int
      {
         return this._requiredHospitalGrade;
      }
      
      public function set requiredHospitalGrade(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._requiredHospitalGrade = param1;
         }
      }
      
      public function get currentFireGrade() : int
      {
         return this._currentFireGrade;
      }
      
      public function set currentFireGrade(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currentFireGrade = param1;
         }
      }
      
      public function get currentPoliceGrade() : int
      {
         return this._currentPoliceGrade;
      }
      
      public function set currentPoliceGrade(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentPoliceGrade = param1;
         }
      }
      
      public function get currentHospitalGrade() : int
      {
         return this._currentHospitalGrade;
      }
      
      public function set currentHospitalGrade(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._currentHospitalGrade = param1;
         }
      }
      
      public function get showZoneLayer() : Boolean
      {
         return this._showZoneLayer;
      }
      
      public function set showZoneLayer(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._showZoneLayer = param1;
         }
      }
      
      public function get billboardObjVo() : BillboardObjectVo
      {
         return this._billboardObjVo;
      }
      
      public function set billboardObjVo(param1:BillboardObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._billboardObjVo = param1;
         }
      }
      
      public function get emergencyDTO() : EmergencyDTO
      {
         return this._emergencyDTO;
      }
      
      public function get currentRewardAmount() : Number
      {
         return this._currentRewardAmount;
      }
      
      public function set currentRewardAmount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._currentRewardAmount = param1;
         }
      }
      
      public function get efficiencyPoints() : Number
      {
         return this._efficiencyPoints;
      }
      
      public function set efficiencyPoints(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._efficiencyPoints = param1;
         }
      }
      
      public function get efficiencyMaxPoints() : Number
      {
         return this._efficiencyMaxPoints;
      }
      
      public function set efficiencyMaxPoints(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._efficiencyMaxPoints = param1;
         }
      }
      
      public function get luckPoints() : Number
      {
         return this._luckPoints;
      }
      
      public function set luckPoints(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._luckPoints = param1;
         }
      }
      
      public function get luckMaxPoints() : Number
      {
         return this._luckMaxPoints;
      }
      
      public function set luckMaxPoints(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._luckMaxPoints = param1;
         }
      }
      
      public function get goofyPoints() : Number
      {
         return this._goofyPoints;
      }
      
      public function set goofyPoints(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._goofyPoints = param1;
         }
      }
      
      public function get goofyMaxPoints() : Number
      {
         return this._goofyMaxPoints;
      }
      
      public function set goofyMaxPoints(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._goofyMaxPoints = param1;
         }
      }
      
      public function get maxSuccessPoints() : int
      {
         return this._maxSuccessPoints;
      }
      
      public function set maxSuccessPoints(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._maxSuccessPoints = param1;
         }
      }
      
      public function get currentSuccessPoints() : int
      {
         return this._currentSuccessPoints;
      }
      
      public function set currentSuccessPoints(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._currentSuccessPoints = param1;
         }
      }
      
      public function get maxPossibleSuccessPoints() : int
      {
         return this._maxPossibleSuccessPoints;
      }
      
      public function set maxPossibleSuccessPoints(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._maxPossibleSuccessPoints = param1;
         }
      }
      
      public function get currentReward() : ConfigGoodDTO
      {
         return this._currentReward;
      }
      
      public function set currentReward(param1:ConfigGoodDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentReward = param1;
         }
      }
      
      public function get rewardTypeThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._rewardTypeThresholds;
      }
      
      public function set rewardTypeThresholds(param1:Vector.<ConfigProfessionalAttributeThresholdDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._rewardTypeThresholds = param1;
         }
      }
      
      public function get rewardAmountThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._rewardAmountThresholds;
      }
      
      public function set rewardAmountThresholds(param1:Vector.<ConfigProfessionalAttributeThresholdDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._rewardAmountThresholds = param1;
         }
      }
   }
}

