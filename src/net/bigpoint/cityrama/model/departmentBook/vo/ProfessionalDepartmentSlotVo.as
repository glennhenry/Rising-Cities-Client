package net.bigpoint.cityrama.model.departmentBook.vo
{
   public class ProfessionalDepartmentSlotVo
   {
      
      private var _empty:Boolean;
      
      private var _profDepartment:String;
      
      private var _profSpecialisation:int;
      
      private var _profSpecialisationLocaId:String;
      
      private var _profSpecialisationGfxId:int;
      
      private var _departmentGfxId:int;
      
      private var _securityGrade:uint;
      
      private var _profLib:String;
      
      private var _profImage:String;
      
      private var _name:String;
      
      private var _professionalId:Number;
      
      private var _slotNumber:Number;
      
      private var _activeAcademy:Boolean;
      
      private var _operationsLeft:uint;
      
      private var _canLevelUp:Boolean;
      
      public function ProfessionalDepartmentSlotVo(param1:Object, param2:Boolean = true)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super();
            if(_loc4_)
            {
               this._slotNumber = param1.slotNr;
               if(!_loc3_)
               {
                  this._empty = param2;
                  if(!_loc3_)
                  {
                     §§goto(addr0042);
                  }
                  §§goto(addr0076);
               }
               addr0042:
               this._activeAcademy = param1.activeAcademy;
               if(!_loc3_)
               {
                  this._departmentGfxId = param1.departmentGfx;
                  if(_loc4_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr00e4);
               }
               addr0060:
               if(!this._empty)
               {
                  if(_loc4_ || param2)
                  {
                     addr0076:
                     this._profDepartment = param1.profDep;
                     if(_loc4_ || param2)
                     {
                        addr008e:
                        this._profSpecialisation = param1.profSpec;
                        if(!_loc3_)
                        {
                           this._profSpecialisationGfxId = param1.profSpecGfx;
                           if(!_loc3_)
                           {
                              this._profSpecialisationLocaId = param1.profSpecLoca;
                              if(_loc4_ || Boolean(this))
                              {
                                 this._operationsLeft = param1.operationsLeft;
                                 if(!(_loc3_ && param2))
                                 {
                                    addr00e4:
                                    this._securityGrade = param1.secGrade;
                                    if(_loc4_)
                                    {
                                       addr00f4:
                                       this._profLib = param1.lib;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr010b:
                                          this._profImage = param1.img;
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             this._name = param1.name;
                                             addr0121:
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§goto(addr0146);
                                             }
                                             §§goto(addr015e);
                                          }
                                          addr0146:
                                          this._professionalId = param1.id;
                                          if(_loc4_ || Boolean(this))
                                          {
                                             addr015e:
                                             this._canLevelUp = param1.canLevelUp;
                                          }
                                       }
                                       §§goto(addr0168);
                                    }
                                    §§goto(addr0121);
                                 }
                                 §§goto(addr0168);
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr0146);
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr010b);
                  }
               }
               addr0168:
               return;
            }
         }
         §§goto(addr008e);
      }
      
      public function get profLib() : String
      {
         return this._profLib;
      }
      
      public function get profImage() : String
      {
         return this._profImage;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get empty() : Boolean
      {
         return this._empty;
      }
      
      public function get profDepartment() : String
      {
         return this._profDepartment;
      }
      
      public function get profSpecialisation() : int
      {
         return this._profSpecialisation;
      }
      
      public function get securityGrade() : uint
      {
         return this._securityGrade;
      }
      
      public function get professionalId() : Number
      {
         return this._professionalId;
      }
      
      public function get slotNumber() : Number
      {
         return this._slotNumber;
      }
      
      public function get profSpecialisationLocaId() : String
      {
         return this._profSpecialisationLocaId;
      }
      
      public function get profSpecialisationGfxId() : int
      {
         return this._profSpecialisationGfxId;
      }
      
      public function get departmentGfxId() : int
      {
         return this._departmentGfxId;
      }
      
      public function get activeAcademy() : Boolean
      {
         return this._activeAcademy;
      }
      
      public function get operationsLeft() : uint
      {
         return this._operationsLeft;
      }
      
      public function get canLevelUp() : Boolean
      {
         return this._canLevelUp;
      }
   }
}

