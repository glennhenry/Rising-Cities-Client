package net.bigpoint.cityrama.model.detailViews.vo
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   
   public class DepartmentDetailViewVo
   {
      
      private var _buildingId:Number;
      
      private var _gfxId:Number;
      
      private var _buildingLibName:String;
      
      private var _departmentGfxId:Number;
      
      private var _localeId:String;
      
      private var _headerIcon:String;
      
      private var _upgradeCurrentLevel:int;
      
      private var _emergencyCount:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _upgradeCountTotal:Number;
      
      private var _upgradePrice:Number;
      
      private var _attributePoints:Number;
      
      private var _maxAttributePoints:Number;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeNextLevel:int;
      
      private var _nextDepartmentDetail:DepartmentDetailViewVo;
      
      private var _upgradeReady:Boolean;
      
      private var _maxSlots:int;
      
      private var _currentSlots:int;
      
      private var _type:String;
      
      private var _professionalList:Vector.<ProfessionalDepartmentSlotVo>;
      
      private var _configSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      private var _thresholds:Dictionary;
      
      private var _buildingSizeX:Number;
      
      private var _buildingSizeY:Number;
      
      private var _userRcStock:Number;
      
      private var _upgradeInstaFinishRCCost:Number;
      
      public function DepartmentDetailViewVo(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               this._buildingId = param1.id;
               if(!_loc3_)
               {
                  this._type = param1.type;
                  if(_loc2_ || Boolean(this))
                  {
                     this._gfxId = param1.gfxId;
                     if(!(_loc3_ && _loc3_))
                     {
                        this._buildingLibName = param1.libName;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this._departmentGfxId = param1.departmentGfxId;
                           if(_loc2_)
                           {
                              addr008a:
                              this._thresholds = param1.thresholds;
                              if(_loc2_ || _loc3_)
                              {
                                 this._localeId = param1.localeId;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b8:
                                    this._headerIcon = param1.headerIcon;
                                    if(!_loc3_)
                                    {
                                       this._emergencyCount = param1.emergencyCount;
                                       if(_loc2_)
                                       {
                                          this._attributePoints = param1.attributePoints;
                                          if(!_loc3_)
                                          {
                                             this._maxAttributePoints = param1.maxAttributePoints;
                                             if(!_loc3_)
                                             {
                                                §§goto(addr00fd);
                                             }
                                             §§goto(addr012b);
                                          }
                                          addr00fd:
                                          this._upgradeCurrentLevel = param1.upgradeCurrentLevel;
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr0114:
                                             this._hasEnoughDD = param1.hasEnoughDD;
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr012b:
                                                this._upgradeCountTotal = param1.upgradeCountTotal;
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   this._upgradePrice = param1.upgradePrice;
                                                   if(!_loc3_)
                                                   {
                                                      this._upgradeMaxLevel = param1.upgradeMaxLevel;
                                                      if(_loc2_)
                                                      {
                                                         addr015f:
                                                         this._upgradeNextLevel = param1.upgradeNextLevel;
                                                         if(!_loc3_)
                                                         {
                                                            addr016e:
                                                            this._currentSlots = param1.currentSlots;
                                                            if(_loc2_ || Boolean(param1))
                                                            {
                                                               addr0184:
                                                               this._maxSlots = param1.maxSlots;
                                                               if(_loc2_ || Boolean(param1))
                                                               {
                                                                  addr019b:
                                                                  this._professionalList = param1.slotList;
                                                                  if(!_loc3_)
                                                                  {
                                                                     this._configSecurityGrades = param1.configSecurityGrades;
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr01c3:
                                                                        this._nextDepartmentDetail = null;
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           addr01d5:
                                                                           this._buildingSizeX = param1.buildingSizeX;
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr01e4:
                                                                              this._buildingSizeY = param1.buildingSizeY;
                                                                           }
                                                                        }
                                                                        §§goto(addr01ed);
                                                                     }
                                                                     §§goto(addr01e4);
                                                                  }
                                                               }
                                                               §§goto(addr01ed);
                                                            }
                                                            §§goto(addr01e4);
                                                         }
                                                         §§goto(addr019b);
                                                      }
                                                      §§goto(addr01ed);
                                                   }
                                                   §§goto(addr01e4);
                                                }
                                                §§goto(addr015f);
                                             }
                                             §§goto(addr016e);
                                          }
                                          §§goto(addr01ed);
                                       }
                                       addr01ed:
                                       return;
                                    }
                                    §§goto(addr012b);
                                 }
                                 §§goto(addr01c3);
                              }
                              §§goto(addr01e4);
                           }
                           §§goto(addr01c3);
                        }
                        §§goto(addr01d5);
                     }
                     §§goto(addr0184);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00b8);
            }
            §§goto(addr016e);
         }
         §§goto(addr0114);
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get upgradeCurrentLevel() : int
      {
         return this._upgradeCurrentLevel;
      }
      
      public function get emergencyCount() : Number
      {
         return this._emergencyCount;
      }
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get upgradeCountTotal() : Number
      {
         return this._upgradeCountTotal;
      }
      
      public function get upgradePrice() : Number
      {
         return this._upgradePrice;
      }
      
      public function get upgradeMaxLevel() : int
      {
         return this._upgradeMaxLevel;
      }
      
      public function get upgradeNextLevel() : int
      {
         return this._upgradeNextLevel;
      }
      
      public function get upgradeReady() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._upgradeCountTotal <= this._emergencyCount)
            {
               if(_loc1_ || Boolean(this))
               {
                  addr0038:
                  this._upgradeReady = true;
                  if(_loc1_ || Boolean(this))
                  {
                  }
               }
            }
            else
            {
               this._upgradeReady = false;
            }
            return this._upgradeReady;
         }
         §§goto(addr0038);
      }
      
      public function get nextDepartmentDetail() : DepartmentDetailViewVo
      {
         return this._nextDepartmentDetail;
      }
      
      public function set nextDepartmentDetail(param1:DepartmentDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._nextDepartmentDetail = param1;
         }
      }
      
      public function get maxSlots() : int
      {
         return this._maxSlots;
      }
      
      public function get currentSlots() : int
      {
         return this._currentSlots;
      }
      
      public function get professionalList() : Vector.<ProfessionalDepartmentSlotVo>
      {
         return this._professionalList;
      }
      
      public function get headerIcon() : String
      {
         return this._headerIcon;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return this._configSecurityGrades;
      }
      
      public function get attributePoints() : Number
      {
         return this._attributePoints;
      }
      
      public function get maxAttributePoints() : Number
      {
         return this._maxAttributePoints;
      }
      
      public function get thresholds() : Dictionary
      {
         return this._thresholds;
      }
      
      public function get departmentGfxId() : Number
      {
         return this._departmentGfxId;
      }
      
      public function get buildingSizeX() : Number
      {
         return this._buildingSizeX;
      }
      
      public function get buildingSizeY() : Number
      {
         return this._buildingSizeY;
      }
      
      public function get buildingLibName() : String
      {
         return this._buildingLibName;
      }
      
      public function get buildingId() : Number
      {
         return this._buildingId;
      }
      
      public function get userRcStock() : Number
      {
         return this._userRcStock;
      }
      
      public function set userRcStock(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._userRcStock = param1;
         }
      }
      
      public function get upgradeInstaFinishRCCost() : Number
      {
         return this._upgradeInstaFinishRCCost;
      }
      
      public function set upgradeInstaFinishRCCost(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._upgradeInstaFinishRCCost = param1;
         }
      }
   }
}

