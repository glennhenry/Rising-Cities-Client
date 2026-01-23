package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class SecurityStatusComponentVo
   {
      
      private var _showChecks:Boolean;
      
      private var _department:String;
      
      private var _requiredGrade:uint = 0;
      
      private var _actualGrade:uint = 0;
      
      private var _lastInList:Boolean;
      
      public function SecurityStatusComponentVo(param1:Object)
      {
         super();
         this._showChecks = param1.checks;
         this._department = param1.dept;
         this._requiredGrade = param1.req;
         this._actualGrade = param1.grade;
      }
      
      public function get showChecks() : Boolean
      {
         return this._showChecks;
      }
      
      public function get department() : String
      {
         return this._department;
      }
      
      public function get requiredGrade() : uint
      {
         return this._requiredGrade;
      }
      
      public function get actualGrade() : uint
      {
         return this._actualGrade;
      }
      
      public function get lastInList() : Boolean
      {
         return this._lastInList;
      }
      
      public function set lastInList(param1:Boolean) : void
      {
         this._lastInList = param1;
      }
   }
}

