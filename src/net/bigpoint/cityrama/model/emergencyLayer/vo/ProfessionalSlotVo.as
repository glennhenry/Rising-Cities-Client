package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.IProfessionalSlotVo;
   
   public class ProfessionalSlotVo implements IProfessionalSlotVo
   {
      
      private var _reqDepartment:String;
      
      private var _reqSpecialisationrank:int;
      
      private var _reqSpecialisationId:Number;
      
      private var _reqSpecialisationLocaId:String;
      
      private var _reqSpecialisationGfxId:int;
      
      private var _reqSecurityGrade:uint;
      
      private var _empty:Boolean;
      
      private var _profDepartment:String;
      
      private var _profSpecialisation:int;
      
      private var _profSpecialisationLocaId:String;
      
      private var _profSpecialisationGfxId:int;
      
      private var _securityGrade:uint;
      
      private var _profLib:String;
      
      private var _profImage:String;
      
      private var _name:String;
      
      private var _professionalId:Number;
      
      private var _slotNumber:Number;
      
      private var _operationsLeft:int = -1;
      
      private var _profSpecialisationId:Number;
      
      private var _traits:Vector.<CharacteristicsEntryVo>;
      
      public function ProfessionalSlotVo(param1:Object, param2:Boolean = true)
      {
         super();
         this._reqDepartment = param1.reqDep;
         this._reqSpecialisationrank = param1.reqSpec;
         this._reqSpecialisationId = param1.reqSpecId;
         this._reqSpecialisationGfxId = param1.reqSpecGfx;
         this._reqSpecialisationLocaId = param1.reqSpecLoca;
         this._reqSecurityGrade = param1.reqSecGrade;
         this._slotNumber = param1.slotNr;
         this._empty = param2;
         this._traits = new Vector.<CharacteristicsEntryVo>();
         if(!this._empty)
         {
            this._profDepartment = param1.profDep;
            this._profSpecialisation = param1.profSpec;
            this._profSpecialisationGfxId = param1.profSpecGfx;
            this._profSpecialisationLocaId = param1.profSpecLoca;
            this._profSpecialisationId = param1.proSpecId;
            this._securityGrade = param1.secGrade;
            this._profLib = param1.lib;
            this._profImage = param1.img;
            this._name = param1.name;
            this._professionalId = param1.id;
            this._traits = param1.traits;
         }
         if(!isNaN(param1.operationsLeft))
         {
            this._operationsLeft = param1.operationsLeft;
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
      
      public function get reqDepartment() : String
      {
         return this._reqDepartment;
      }
      
      public function get reqSpecialisationrank() : int
      {
         return this._reqSpecialisationrank;
      }
      
      public function get profDepartment() : String
      {
         return this._profDepartment;
      }
      
      public function get profSpecialisation() : int
      {
         return this._profSpecialisation;
      }
      
      public function get reqSecurityGrade() : uint
      {
         return this._reqSecurityGrade;
      }
      
      public function get securityGrade() : uint
      {
         if(this._reqDepartment != this._profDepartment)
         {
            return 0;
         }
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
      
      public function get reqSpecialisationLocaId() : String
      {
         return this._reqSpecialisationLocaId;
      }
      
      public function get reqSpecialisationGfxId() : int
      {
         return this._reqSpecialisationGfxId;
      }
      
      public function get profSpecialisationLocaId() : String
      {
         return this._profSpecialisationLocaId;
      }
      
      public function get profSpecialisationGfxId() : Number
      {
         return this._profSpecialisationGfxId;
      }
      
      public function get operationsLeft() : int
      {
         return this._operationsLeft;
      }
      
      public function set operationsLeft(param1:int) : void
      {
         this._operationsLeft = param1;
      }
      
      public function get reqSpecialisationId() : Number
      {
         return this._reqSpecialisationId;
      }
      
      public function get profSpecialisationId() : Number
      {
         return this._profSpecialisationId;
      }
      
      public function get traits() : Vector.<CharacteristicsEntryVo>
      {
         return this._traits;
      }
   }
}

