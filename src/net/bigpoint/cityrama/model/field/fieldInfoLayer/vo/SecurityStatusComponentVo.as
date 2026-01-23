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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               this._showChecks = param1.checks;
               §§goto(addr0026);
            }
            §§goto(addr0047);
         }
         addr0026:
         if(!(_loc3_ && _loc2_))
         {
            this._department = param1.dept;
            addr0047:
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0069);
            }
            §§goto(addr0080);
         }
         addr0069:
         this._requiredGrade = param1.req;
         if(!(_loc3_ && Boolean(param1)))
         {
            addr0080:
            this._actualGrade = param1.grade;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._lastInList = param1;
         }
      }
   }
}

