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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               this._professionalLibName = param1.lib;
               if(_loc3_ || Boolean(param1))
               {
                  this._professionalBmpName = param1.bmp;
                  if(_loc3_)
                  {
                     this._professionalSWFName = param1.swf;
                     if(_loc3_)
                     {
                        addr0074:
                        this._positionOccupied = param1.occ;
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0074);
               }
               addr007e:
               return;
            }
         }
         §§goto(addr0074);
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

