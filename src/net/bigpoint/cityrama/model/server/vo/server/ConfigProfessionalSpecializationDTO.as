package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigProfessionalSpecializationDTO
   {
      
      private var _id:Number;
      
      private var _departmentTagId:Number;
      
      private var _rank:int;
      
      private var _slotMaxValue:int;
      
      private var _gfxId:int;
      
      private var _locaId:String;
      
      private var _department:String;
      
      public function ConfigProfessionalSpecializationDTO(param1:Object)
      {
         super();
         this._id = param1.cpsi;
         this._departmentTagId = param1.dt;
         this._rank = param1.r;
         this._slotMaxValue = param1.v;
         this._gfxId = param1.gfx;
         this._locaId = param1.lo;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get departmentTagId() : Number
      {
         return this._departmentTagId;
      }
      
      public function get rank() : int
      {
         return this._rank;
      }
      
      public function get department() : String
      {
         return this._department;
      }
      
      public function set department(param1:String) : void
      {
         this._department = param1;
      }
      
      public function get slotMaxValue() : int
      {
         return this._slotMaxValue;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
   }
}

