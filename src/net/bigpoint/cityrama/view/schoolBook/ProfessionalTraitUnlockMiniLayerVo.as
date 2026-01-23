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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get traitLocaleId() : String
      {
         return this._traitLocaleId;
      }
      
      public function set traitLocaleId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._traitLocaleId = param1;
         }
      }
      
      public function get traitGfxId() : Number
      {
         return this._traitGfxId;
      }
      
      public function set traitGfxId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._traitGfxId = param1;
         }
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._amount = param1;
         }
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

