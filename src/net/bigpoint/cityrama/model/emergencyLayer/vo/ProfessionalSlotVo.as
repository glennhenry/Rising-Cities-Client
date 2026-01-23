package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.IProfessionalSlotVo;
   
   public class ProfessionalSlotVo implements IProfessionalSlotVo
   {
      
      private var _reqDepartment:String;
      
      private var _reqSpecialisationrank:int;
      
      private var _reqSpecialisationId:Number;
      
      private var _reqSpecialisationLocaId:String;
      
      private var _reqSpecialisationGfxId:int;
      
      private var _reqSecurityGrade:uint;
      
      private var _empty:Boolean;
      
      private var _profDepartment:String;
      
      private var _profSpecialisation:int;
      
      private var _profSpecialisationLocaId:String;
      
      private var _profSpecialisationGfxId:int;
      
      private var _securityGrade:uint;
      
      private var _profLib:String;
      
      private var _profImage:String;
      
      private var _name:String;
      
      private var _professionalId:Number;
      
      private var _slotNumber:Number;
      
      private var _operationsLeft:int = -1;
      
      private var _profSpecialisationId:Number;
      
      private var _traits:Vector.<CharacteristicsEntryVo>;
      
      public function ProfessionalSlotVo(param1:Object, param2:Boolean = true)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super();
            if(_loc4_ || param2)
            {
               this._reqDepartment = param1.reqDep;
               if(_loc4_ || param2)
               {
                  this._reqSpecialisationrank = param1.reqSpec;
                  if(_loc4_)
                  {
                     this._reqSpecialisationId = param1.reqSpecId;
                     if(_loc4_)
                     {
                        this._reqSpecialisationGfxId = param1.reqSpecGfx;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this._reqSpecialisationLocaId = param1.reqSpecLoca;
                           if(!_loc3_)
                           {
                              addr008c:
                              this._reqSecurityGrade = param1.reqSecGrade;
                              if(_loc4_)
                              {
                                 this._slotNumber = param1.slotNr;
                                 if(!_loc3_)
                                 {
                                    addr00aa:
                                    this._empty = param2;
                                    if(_loc4_ || Boolean(this))
                                    {
                                       this._traits = new Vector.<CharacteristicsEntryVo>();
                                       if(!(_loc3_ && param2))
                                       {
                                          if(!this._empty)
                                          {
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                this._profDepartment = param1.profDep;
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§goto(addr010f);
                                                }
                                                §§goto(addr0125);
                                             }
                                             addr010f:
                                             this._profSpecialisation = param1.profSpec;
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr0125:
                                                this._profSpecialisationGfxId = param1.profSpecGfx;
                                                if(_loc4_ || param2)
                                                {
                                                   §§goto(addr013d);
                                                }
                                                §§goto(addr019c);
                                             }
                                             addr013d:
                                             this._profSpecialisationLocaId = param1.profSpecLoca;
                                             if(_loc4_)
                                             {
                                                this._profSpecialisationId = param1.proSpecId;
                                                if(_loc4_)
                                                {
                                                   this._securityGrade = param1.secGrade;
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr0174:
                                                      this._profLib = param1.lib;
                                                      if(_loc4_ || param2)
                                                      {
                                                         §§goto(addr018c);
                                                      }
                                                      §§goto(addr019c);
                                                   }
                                                   §§goto(addr01b6);
                                                }
                                                §§goto(addr01d4);
                                             }
                                             §§goto(addr018c);
                                          }
                                       }
                                       §§goto(addr01d4);
                                    }
                                    §§goto(addr01e9);
                                 }
                                 §§goto(addr01c6);
                              }
                              §§goto(addr0174);
                           }
                           §§goto(addr01e9);
                        }
                        §§goto(addr019c);
                     }
                     §§goto(addr008c);
                  }
                  addr018c:
                  this._profImage = param1.img;
                  if(_loc4_)
                  {
                     addr019c:
                     this._name = param1.name;
                     if(_loc4_)
                     {
                        addr01b6:
                        this._professionalId = param1.id;
                        if(_loc4_)
                        {
                           addr01c6:
                           this._traits = param1.traits;
                           if(!_loc3_)
                           {
                              §§goto(addr01d4);
                           }
                           §§goto(addr01e9);
                        }
                        addr01d4:
                        if(!isNaN(param1.operationsLeft))
                        {
                           if(!_loc3_)
                           {
                              addr01e9:
                              this._operationsLeft = param1.operationsLeft;
                           }
                        }
                        §§goto(addr01f2);
                     }
                     §§goto(addr01c6);
                  }
                  addr01f2:
                  return;
               }
               §§goto(addr00aa);
            }
            §§goto(addr01c6);
         }
         §§goto(addr010f);
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
      
      public function get reqDepartment() : String
      {
         return this._reqDepartment;
      }
      
      public function get reqSpecialisationrank() : int
      {
         return this._reqSpecialisationrank;
      }
      
      public function get profDepartment() : String
      {
         return this._profDepartment;
      }
      
      public function get profSpecialisation() : int
      {
         return this._profSpecialisation;
      }
      
      public function get reqSecurityGrade() : uint
      {
         return this._reqSecurityGrade;
      }
      
      public function get securityGrade() : uint
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(this._reqDepartment != this._profDepartment)
            {
               if(!_loc2_)
               {
                  return 0;
               }
            }
         }
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
      
      public function get reqSpecialisationLocaId() : String
      {
         return this._reqSpecialisationLocaId;
      }
      
      public function get reqSpecialisationGfxId() : int
      {
         return this._reqSpecialisationGfxId;
      }
      
      public function get profSpecialisationLocaId() : String
      {
         return this._profSpecialisationLocaId;
      }
      
      public function get profSpecialisationGfxId() : Number
      {
         return this._profSpecialisationGfxId;
      }
      
      public function get operationsLeft() : int
      {
         return this._operationsLeft;
      }
      
      public function set operationsLeft(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._operationsLeft = param1;
         }
      }
      
      public function get reqSpecialisationId() : Number
      {
         return this._reqSpecialisationId;
      }
      
      public function get profSpecialisationId() : Number
      {
         return this._profSpecialisationId;
      }
      
      public function get traits() : Vector.<CharacteristicsEntryVo>
      {
         return this._traits;
      }
   }
}

