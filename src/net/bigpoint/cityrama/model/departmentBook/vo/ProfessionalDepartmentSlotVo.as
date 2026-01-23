package net.bigpoint.cityrama.model.departmentBook.vo
{
   public class ProfessionalDepartmentSlotVo
   {
      
      private var _empty:Boolean;
      
      private var _profDepartment:String;
      
      private var _profSpecialisation:int;
      
      private var _profSpecialisationLocaId:String;
      
      private var _profSpecialisationGfxId:int;
      
      private var _departmentGfxId:int;
      
      private var _securityGrade:uint;
      
      private var _profLib:String;
      
      private var _profImage:String;
      
      private var _name:String;
      
      private var _professionalId:Number;
      
      private var _slotNumber:Number;
      
      private var _activeAcademy:Boolean;
      
      private var _operationsLeft:uint;
      
      private var _canLevelUp:Boolean;
      
      public function ProfessionalDepartmentSlotVo(param1:Object, param2:Boolean = true)
      {
         super();
         this._slotNumber = param1.slotNr;
         this._empty = param2;
         this._activeAcademy = param1.activeAcademy;
         this._departmentGfxId = param1.departmentGfx;
         if(!this._empty)
         {
            this._profDepartment = param1.profDep;
            this._profSpecialisation = param1.profSpec;
            this._profSpecialisationGfxId = param1.profSpecGfx;
            this._profSpecialisationLocaId = param1.profSpecLoca;
            this._operationsLeft = param1.operationsLeft;
            this._securityGrade = param1.secGrade;
            this._profLib = param1.lib;
            this._profImage = param1.img;
            this._name = param1.name;
            this._professionalId = param1.id;
            this._canLevelUp = param1.canLevelUp;
         }
      }
      
      public function get profLib() : String
      {
         return this._profLib;
      }
      
      public function get profImage() : String
      {
         return this._profImage;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get empty() : Boolean
      {
         return this._empty;
      }
      
      public function get profDepartment() : String
      {
         return this._profDepartment;
      }
      
      public function get profSpecialisation() : int
      {
         return this._profSpecialisation;
      }
      
      public function get securityGrade() : uint
      {
         return this._securityGrade;
      }
      
      public function get professionalId() : Number
      {
         return this._professionalId;
      }
      
      public function get slotNumber() : Number
      {
         return this._slotNumber;
      }
      
      public function get profSpecialisationLocaId() : String
      {
         return this._profSpecialisationLocaId;
      }
      
      public function get profSpecialisationGfxId() : int
      {
         return this._profSpecialisationGfxId;
      }
      
      public function get departmentGfxId() : int
      {
         return this._departmentGfxId;
      }
      
      public function get activeAcademy() : Boolean
      {
         return this._activeAcademy;
      }
      
      public function get operationsLeft() : uint
      {
         return this._operationsLeft;
      }
      
      public function get canLevelUp() : Boolean
      {
         return this._canLevelUp;
      }
   }
}

