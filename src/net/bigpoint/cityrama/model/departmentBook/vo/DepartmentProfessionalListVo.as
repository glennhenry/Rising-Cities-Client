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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._headerIconImg = param1;
         }
      }
      
      public function set headerIconLib(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._headerIconLib = param1;
         }
      }
      
      public function set headerText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._headerText = param1;
         }
      }
      
      public function set flavourText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._flavourText = param1;
         }
      }
      
      public function set professionalSlots(param1:Vector.<ProfessionalDepartmentSlotVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._professionalSlots = param1;
         }
      }
   }
}

