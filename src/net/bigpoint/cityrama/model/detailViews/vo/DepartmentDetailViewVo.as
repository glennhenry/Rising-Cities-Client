package net.bigpoint.cityrama.model.detailViews.vo
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   
   public class DepartmentDetailViewVo
   {
      
      private var _buildingId:Number;
      
      private var _gfxId:Number;
      
      private var _buildingLibName:String;
      
      private var _departmentGfxId:Number;
      
      private var _localeId:String;
      
      private var _headerIcon:String;
      
      private var _upgradeCurrentLevel:int;
      
      private var _emergencyCount:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _upgradeCountTotal:Number;
      
      private var _upgradePrice:Number;
      
      private var _attributePoints:Number;
      
      private var _maxAttributePoints:Number;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeNextLevel:int;
      
      private var _nextDepartmentDetail:DepartmentDetailViewVo;
      
      private var _upgradeReady:Boolean;
      
      private var _maxSlots:int;
      
      private var _currentSlots:int;
      
      private var _type:String;
      
      private var _professionalList:Vector.<ProfessionalDepartmentSlotVo>;
      
      private var _configSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      private var _thresholds:Dictionary;
      
      private var _buildingSizeX:Number;
      
      private var _buildingSizeY:Number;
      
      private var _userRcStock:Number;
      
      private var _upgradeInstaFinishRCCost:Number;
      
      public function DepartmentDetailViewVo(param1:Object)
      {
         super();
         this._buildingId = param1.id;
         this._type = param1.type;
         this._gfxId = param1.gfxId;
         this._buildingLibName = param1.libName;
         this._departmentGfxId = param1.departmentGfxId;
         this._thresholds = param1.thresholds;
         this._localeId = param1.localeId;
         this._headerIcon = param1.headerIcon;
         this._emergencyCount = param1.emergencyCount;
         this._attributePoints = param1.attributePoints;
         this._maxAttributePoints = param1.maxAttributePoints;
         this._upgradeCurrentLevel = param1.upgradeCurrentLevel;
         this._hasEnoughDD = param1.hasEnoughDD;
         this._upgradeCountTotal = param1.upgradeCountTotal;
         this._upgradePrice = param1.upgradePrice;
         this._upgradeMaxLevel = param1.upgradeMaxLevel;
         this._upgradeNextLevel = param1.upgradeNextLevel;
         this._currentSlots = param1.currentSlots;
         this._maxSlots = param1.maxSlots;
         this._professionalList = param1.slotList;
         this._configSecurityGrades = param1.configSecurityGrades;
         this._nextDepartmentDetail = null;
         this._buildingSizeX = param1.buildingSizeX;
         this._buildingSizeY = param1.buildingSizeY;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get upgradeCurrentLevel() : int
      {
         return this._upgradeCurrentLevel;
      }
      
      public function get emergencyCount() : Number
      {
         return this._emergencyCount;
      }
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get upgradeCountTotal() : Number
      {
         return this._upgradeCountTotal;
      }
      
      public function get upgradePrice() : Number
      {
         return this._upgradePrice;
      }
      
      public function get upgradeMaxLevel() : int
      {
         return this._upgradeMaxLevel;
      }
      
      public function get upgradeNextLevel() : int
      {
         return this._upgradeNextLevel;
      }
      
      public function get upgradeReady() : Boolean
      {
         if(this._upgradeCountTotal <= this._emergencyCount)
         {
            this._upgradeReady = true;
         }
         else
         {
            this._upgradeReady = false;
         }
         return this._upgradeReady;
      }
      
      public function get nextDepartmentDetail() : DepartmentDetailViewVo
      {
         return this._nextDepartmentDetail;
      }
      
      public function set nextDepartmentDetail(param1:DepartmentDetailViewVo) : void
      {
         this._nextDepartmentDetail = param1;
      }
      
      public function get maxSlots() : int
      {
         return this._maxSlots;
      }
      
      public function get currentSlots() : int
      {
         return this._currentSlots;
      }
      
      public function get professionalList() : Vector.<ProfessionalDepartmentSlotVo>
      {
         return this._professionalList;
      }
      
      public function get headerIcon() : String
      {
         return this._headerIcon;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return this._configSecurityGrades;
      }
      
      public function get attributePoints() : Number
      {
         return this._attributePoints;
      }
      
      public function get maxAttributePoints() : Number
      {
         return this._maxAttributePoints;
      }
      
      public function get thresholds() : Dictionary
      {
         return this._thresholds;
      }
      
      public function get departmentGfxId() : Number
      {
         return this._departmentGfxId;
      }
      
      public function get buildingSizeX() : Number
      {
         return this._buildingSizeX;
      }
      
      public function get buildingSizeY() : Number
      {
         return this._buildingSizeY;
      }
      
      public function get buildingLibName() : String
      {
         return this._buildingLibName;
      }
      
      public function get buildingId() : Number
      {
         return this._buildingId;
      }
      
      public function get userRcStock() : Number
      {
         return this._userRcStock;
      }
      
      public function set userRcStock(param1:Number) : void
      {
         this._userRcStock = param1;
      }
      
      public function get upgradeInstaFinishRCCost() : Number
      {
         return this._upgradeInstaFinishRCCost;
      }
      
      public function set upgradeInstaFinishRCCost(param1:Number) : void
      {
         this._upgradeInstaFinishRCCost = param1;
      }
   }
}

