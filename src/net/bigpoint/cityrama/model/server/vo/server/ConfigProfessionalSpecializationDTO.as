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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this._id = param1.cpsi;
               if(_loc3_ || _loc2_)
               {
                  this._departmentTagId = param1.dt;
                  if(_loc3_)
                  {
                     addr0052:
                     this._rank = param1.r;
                     if(!_loc2_)
                     {
                        this._slotMaxValue = param1.v;
                        if(!_loc2_)
                        {
                           addr007a:
                           this._gfxId = param1.gfx;
                           if(_loc3_ || _loc2_)
                           {
                              addr0090:
                              this._locaId = param1.lo;
                           }
                        }
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr007a);
            }
            addr009a:
            return;
         }
         §§goto(addr0052);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._department = param1;
         }
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

