package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class EmergencyZoneLayerVo
   {
      
      private var _flavourText:String;
      
      private var _maxSolvingPossibility:Number;
      
      private var _buildingLib:String;
      
      private var _buildingImage:String;
      
      private var _emergencyLib:String;
      
      private var _emergencyImage:String;
      
      private var _emergencySWF:String;
      
      private var _requiredPoliceGrade:int;
      
      private var _requiredFireGrade:int;
      
      private var _requiredHospitalGrade:int;
      
      private var _policeGrade:int;
      
      private var _fireGrade:int;
      
      private var _hospitalGrade:int;
      
      private var _timerData:TimerBarComponentVo;
      
      private var _showZoneLayer:Boolean;
      
      private var _grades:Vector.<GradeVo>;
      
      public function EmergencyZoneLayerVo(param1:Object)
      {
         var _loc2_:GradeVo = null;
         super();
         this._flavourText = param1.flavour;
         this._maxSolvingPossibility = param1.max;
         this._buildingLib = param1.buildingLib;
         this._buildingImage = param1.buildingImage;
         this._emergencyLib = param1.emergencyLib;
         this._emergencyImage = param1.emergencyImage;
         this._emergencySWF = param1.emergencySWF;
         this._requiredPoliceGrade = param1.reqPolice;
         this._requiredFireGrade = param1.reqFire;
         this._requiredHospitalGrade = param1.reqHospital;
         this._policeGrade = param1.police;
         this._fireGrade = param1.fire;
         this._hospitalGrade = param1.hospital;
         this._grades = new Vector.<GradeVo>();
         if(this._requiredFireGrade > 0)
         {
            _loc2_ = new GradeVo();
            _loc2_.locaID = "1100001";
            _loc2_.gfxID = 1100001;
            _loc2_.requiredGrade = this._requiredFireGrade;
            _loc2_.currentGrade = this._fireGrade;
            this._grades.push(_loc2_);
         }
         if(this._requiredPoliceGrade > 0)
         {
            _loc2_ = new GradeVo();
            _loc2_.locaID = "1110001";
            _loc2_.gfxID = 1110001;
            _loc2_.requiredGrade = this._requiredPoliceGrade;
            _loc2_.currentGrade = this._policeGrade;
            this._grades.push(_loc2_);
         }
         if(this._requiredHospitalGrade > 0)
         {
            _loc2_ = new GradeVo();
            _loc2_.locaID = "1120001";
            _loc2_.gfxID = 1120001;
            _loc2_.requiredGrade = this._requiredHospitalGrade;
            _loc2_.currentGrade = this._hospitalGrade;
            this._grades.push(_loc2_);
         }
         this._timerData = param1.timer;
         this._showZoneLayer = param1.show;
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function get maxSolvingPossibility() : Number
      {
         return this._maxSolvingPossibility;
      }
      
      public function get policeRequiredGrade() : int
      {
         return this._requiredPoliceGrade;
      }
      
      public function get fireRequiredGrade() : int
      {
         return this._requiredFireGrade;
      }
      
      public function get hospitalRequiredGrade() : int
      {
         return this._requiredHospitalGrade;
      }
      
      public function get timerData() : TimerBarComponentVo
      {
         return this._timerData;
      }
      
      public function get buildingLib() : String
      {
         return this._buildingLib;
      }
      
      public function get buildingImage() : String
      {
         return this._buildingImage;
      }
      
      public function get emergencyLib() : String
      {
         return this._emergencyLib;
      }
      
      public function get emergencyImage() : String
      {
         return this._emergencyImage;
      }
      
      public function get policeGrade() : int
      {
         return this._policeGrade;
      }
      
      public function get fireGrade() : int
      {
         return this._fireGrade;
      }
      
      public function get hospitalGrade() : int
      {
         return this._hospitalGrade;
      }
      
      public function get showZoneLayer() : Boolean
      {
         return this._showZoneLayer;
      }
      
      public function get grades() : Vector.<GradeVo>
      {
         return this._grades;
      }
      
      public function get emergencySWF() : String
      {
         return this._emergencySWF;
      }
   }
}

