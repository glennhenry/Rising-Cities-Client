package net.bigpoint.cityrama.model.departmentBook.vo
{
   public class DepartmentProfessionalListVo
   {
      
      private var _headerIconImg:String;
      
      private var _headerIconLib:String;
      
      private var _headerText:String;
      
      private var _flavourText:String;
      
      private var _professionalSlots:Vector.<ProfessionalDepartmentSlotVo>;
      
      public function DepartmentProfessionalListVo()
      {
         super();
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function get professionalSlots() : Vector.<ProfessionalDepartmentSlotVo>
      {
         return this._professionalSlots;
      }
      
      public function get headerIconImg() : String
      {
         return this._headerIconImg;
      }
      
      public function get headerIconLib() : String
      {
         return this._headerIconLib;
      }
      
      public function get headerText() : String
      {
         return this._headerText;
      }
      
      public function set headerIconImg(param1:String) : void
      {
         this._headerIconImg = param1;
      }
      
      public function set headerIconLib(param1:String) : void
      {
         this._headerIconLib = param1;
      }
      
      public function set headerText(param1:String) : void
      {
         this._headerText = param1;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function set professionalSlots(param1:Vector.<ProfessionalDepartmentSlotVo>) : void
      {
         this._professionalSlots = param1;
      }
   }
}

