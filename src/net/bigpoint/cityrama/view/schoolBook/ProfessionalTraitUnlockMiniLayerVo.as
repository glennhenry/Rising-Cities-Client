package net.bigpoint.cityrama.view.schoolBook
{
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   
   public class ProfessionalTraitUnlockMiniLayerVo extends DepartmentProfessionalDetailInfoVo
   {
      
      private var _traitLocaleId:String;
      
      private var _traitGfxId:Number;
      
      private var _amount:Number;
      
      public function ProfessionalTraitUnlockMiniLayerVo()
      {
         super();
      }
      
      public function get traitLocaleId() : String
      {
         return this._traitLocaleId;
      }
      
      public function set traitLocaleId(param1:String) : void
      {
         this._traitLocaleId = param1;
      }
      
      public function get traitGfxId() : Number
      {
         return this._traitGfxId;
      }
      
      public function set traitGfxId(param1:Number) : void
      {
         this._traitGfxId = param1;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         this._amount = param1;
      }
      
      public function get gender() : int
      {
         return _dto.gender;
      }
      
      override public function get profSpecialisationGfxId() : Number
      {
         return 0;
      }
      
      override public function get profSpecialisationLocaId() : String
      {
         return "";
      }
   }
}

