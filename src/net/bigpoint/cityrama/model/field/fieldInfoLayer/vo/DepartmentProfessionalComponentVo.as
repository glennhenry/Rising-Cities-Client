package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class DepartmentProfessionalComponentVo
   {
      
      private var _professionalLibName:String;
      
      private var _professionalBmpName:String;
      
      private var _professionalSWFName:String;
      
      private var _positionOccupied:Boolean;
      
      public function DepartmentProfessionalComponentVo(param1:Object)
      {
         super();
         this._professionalLibName = param1.lib;
         this._professionalBmpName = param1.bmp;
         this._professionalSWFName = param1.swf;
         this._positionOccupied = param1.occ;
      }
      
      public function get professionalLibName() : String
      {
         return this._professionalLibName;
      }
      
      public function get professionalBmpName() : String
      {
         return this._professionalBmpName;
      }
      
      public function get positionOccupied() : Boolean
      {
         return this._positionOccupied;
      }
      
      public function get professionalSWFName() : String
      {
         return this._professionalSWFName;
      }
   }
}

