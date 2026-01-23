package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   public class ProfessionalListInfoVo
   {
      
      private var _name:String;
      
      private var _department:String;
      
      private var _specialisationRank:int;
      
      private var _specialisationLocaId:String;
      
      private var _specialisationGfxId:int;
      
      private var _operationsLeft:int;
      
      private var _profId:Number;
      
      private var _securityGrade:uint;
      
      private var _picLib:String;
      
      private var _picImage:String;
      
      private var _efficiency:Number;
      
      private var _luck:Number;
      
      private var _goofiness:Number;
      
      private var _perception:Number;
      
      private var _successChance:Number;
      
      private var _rewardGfxId:int;
      
      private var _rewardLocaId:String;
      
      private var _rewardAmount:Number;
      
      private var _step:Number;
      
      private var _characteristicLocaIds:Vector.<String>;
      
      private var _professionalVo:ProfessionalSlotVo;
      
      private var _dismissIsUnlocked:Boolean;
      
      private var _requiredDepartment:String;
      
      private var _requiredSpecialisationRank:int;
      
      private var _requiredSpecialisationId:Number;
      
      private var _specialisationId:Number;
      
      public function ProfessionalListInfoVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get department() : String
      {
         return this._department;
      }
      
      public function get operationsLeft() : int
      {
         return this._operationsLeft;
      }
      
      public function get picLib() : String
      {
         return this._picLib;
      }
      
      public function get picImage() : String
      {
         return this._picImage;
      }
      
      public function get efficiency() : Number
      {
         return this._efficiency;
      }
      
      public function get luck() : Number
      {
         return this._luck;
      }
      
      public function get goofiness() : Number
      {
         return this._goofiness;
      }
      
      public function get successChance() : Number
      {
         return this._successChance;
      }
      
      public function get rewardGfxId() : int
      {
         return this._rewardGfxId;
      }
      
      public function get rewardAmount() : Number
      {
         return this._rewardAmount;
      }
      
      public function get profId() : Number
      {
         return this._profId;
      }
      
      public function get specialisationRank() : int
      {
         return this._specialisationRank;
      }
      
      public function get securityGrade() : uint
      {
         return this._securityGrade;
      }
      
      public function get rewardLocaId() : String
      {
         return this._rewardLocaId;
      }
      
      public function get specialisationLocaId() : String
      {
         return this._specialisationLocaId;
      }
      
      public function get specialisationGfxId() : int
      {
         return this._specialisationGfxId;
      }
      
      public function get step() : Number
      {
         return this._step;
      }
      
      public function get characteristicLocaIds() : Vector.<String>
      {
         return this._characteristicLocaIds;
      }
      
      public function set name(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._name = param1;
         }
      }
      
      public function set department(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._department = param1;
         }
      }
      
      public function set specialisationRank(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._specialisationRank = param1;
         }
      }
      
      public function set specialisationLocaId(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._specialisationLocaId = param1;
         }
      }
      
      public function set specialisationGfxId(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._specialisationGfxId = param1;
         }
      }
      
      public function set operationsLeft(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._operationsLeft = param1;
         }
      }
      
      public function set profId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._profId = param1;
         }
      }
      
      public function set securityGrade(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._securityGrade = param1;
         }
      }
      
      public function set picLib(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._picLib = param1;
         }
      }
      
      public function set picImage(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._picImage = param1;
         }
      }
      
      public function set efficiency(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._efficiency = param1;
         }
      }
      
      public function set luck(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._luck = param1;
         }
      }
      
      public function set goofiness(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._goofiness = param1;
         }
      }
      
      public function set successChance(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._successChance = param1;
         }
      }
      
      public function set rewardGfxId(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._rewardGfxId = param1;
         }
      }
      
      public function set rewardLocaId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._rewardLocaId = param1;
         }
      }
      
      public function set rewardAmount(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._rewardAmount = param1;
         }
      }
      
      public function set step(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._step = param1;
         }
      }
      
      public function set characteristicLocaIds(param1:Vector.<String>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._characteristicLocaIds = param1;
         }
      }
      
      public function get professionalVo() : ProfessionalSlotVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Object = null;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this._professionalVo);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  addr003b:
                  _loc1_ = new Object();
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.lib = this._picLib;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.img = this._picImage;
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.name = this._name;
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.profSpecGfx = this._specialisationGfxId;
                              if(!_loc2_)
                              {
                                 addr00ae:
                                 _loc1_.profSpecLoca = this._specialisationLocaId;
                                 if(_loc3_)
                                 {
                                    addr00bc:
                                    _loc1_.profSpec = this._specialisationRank;
                                    if(!_loc2_)
                                    {
                                       _loc1_.profDep = this._department;
                                       if(!_loc2_)
                                       {
                                          addr00d8:
                                          _loc1_.id = this._profId;
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr00fa:
                                             _loc1_.secGrade = this._securityGrade;
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                addr0110:
                                                this._professionalVo = new ProfessionalSlotVo(_loc1_,false);
                                             }
                                          }
                                       }
                                       addr0121:
                                       return this._professionalVo;
                                       addr011d:
                                    }
                                    §§goto(addr0110);
                                 }
                                 §§goto(addr00d8);
                              }
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr0110);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr011d);
            }
            §§goto(addr0121);
         }
         §§goto(addr003b);
      }
      
      public function get perception() : Number
      {
         return this._perception;
      }
      
      public function set perception(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._perception = param1;
         }
      }
      
      public function get dismissIsUnlocked() : Boolean
      {
         return this._dismissIsUnlocked;
      }
      
      public function set dismissIsUnlocked(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._dismissIsUnlocked = param1;
         }
      }
      
      public function get requiredDepartment() : String
      {
         return this._requiredDepartment;
      }
      
      public function set requiredDepartment(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._requiredDepartment = param1;
         }
      }
      
      public function get requiredSpecialisationRank() : int
      {
         return this._requiredSpecialisationRank;
      }
      
      public function set requiredSpecialisationRank(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._requiredSpecialisationRank = param1;
         }
      }
      
      public function get requiredSpecialisationId() : Number
      {
         return this._requiredSpecialisationId;
      }
      
      public function set requiredSpecialisationId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._requiredSpecialisationId = param1;
         }
      }
      
      public function get specialisationId() : Number
      {
         return this._specialisationId;
      }
      
      public function set specialisationId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._specialisationId = param1;
         }
      }
   }
}

