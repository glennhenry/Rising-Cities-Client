package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.mastery.MasteryComponentVo;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   
   public class ResidentialDetailViewVo
   {
      
      private var _gfxId:Number;
      
      private var _libName:String;
      
      private var _localeId:Number;
      
      private var _upgradeCountTotal:Number;
      
      private var _harvestCount:Number;
      
      private var _upgradePrice:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _upgradeReady:Boolean;
      
      private var _upgradeNextLevel:int;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeCurrentLevel:int;
      
      private var _needs:Vector.<ResidentialNeedPopupVo>;
      
      private var _harvestCycleLength:Number = 0;
      
      private var _harvestCurrentTime:Number = 0;
      
      private var _harvestEndTime:Number = 0;
      
      private var _rentalIncomeVo:SimpleItemVo;
      
      private var _needIncomeVo:SimpleItemVo;
      
      private var _residentInfo:SimpleItemVo;
      
      private var _residentChangePossible:Boolean;
      
      private var _moodEffect:SimpleItemVo;
      
      private var _energyEffect:SimpleItemVo;
      
      private var _residentialFieldObjectVo:ResidentialFieldObjectVo;
      
      private var _nextResidentialDetail:ResidentialDetailViewVo;
      
      private var _hasEnoughPermits:Boolean;
      
      private var _exprossoUseMutipleTimesOn:Boolean;
      
      private var _residentChangeLevel:int;
      
      private var _currentMasteryChallenge:MasteryComponentVo;
      
      public function ResidentialDetailViewVo(param1:Object, param2:ResidentialFieldObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               this._gfxId = param1.gfxId;
               if(!(_loc3_ && _loc3_))
               {
                  this._libName = param1.libName;
                  if(!(_loc3_ && Boolean(param2)))
                  {
                     addr004e:
                     this._localeId = param1.localeId;
                     if(!_loc3_)
                     {
                        this._upgradeCountTotal = param1.upgradeCountTotal;
                        if(!_loc3_)
                        {
                           this._harvestCount = param1.harvestCount;
                           if(!(_loc3_ && Boolean(param2)))
                           {
                              this._upgradePrice = param1.upgradePrice;
                              if(!(_loc3_ && Boolean(param2)))
                              {
                                 this._hasEnoughDD = param1.hasEnoughDD;
                                 if(_loc4_ || Boolean(this))
                                 {
                                    this._upgradeCurrentLevel = param1.upgradeCurrentLevel;
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr00c8:
                                       this._upgradeNextLevel = param1.upgradeNextLevel;
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00d7);
                                       }
                                       §§goto(addr01ea);
                                    }
                                    addr00d7:
                                    this._upgradeMaxLevel = param1.upgradeMaxLevel;
                                    if(_loc4_ || Boolean(param2))
                                    {
                                       addr00f9:
                                       this._needs = param1.needs;
                                       if(_loc4_)
                                       {
                                          this._harvestCycleLength = param1.cycleLength;
                                          if(!(_loc3_ && Boolean(param2)))
                                          {
                                             addr011f:
                                             this._harvestCurrentTime = param1.currentTime;
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr0136:
                                                this._harvestEndTime = param1.endTime;
                                                if(_loc4_ || Boolean(param2))
                                                {
                                                   addr014e:
                                                   this._rentalIncomeVo = param1.rentIncome;
                                                   if(_loc4_)
                                                   {
                                                      addr015e:
                                                      this._needIncomeVo = param1.needIncome;
                                                      if(!_loc3_)
                                                      {
                                                         addr016d:
                                                         this._residentInfo = param1.residents;
                                                         if(!_loc3_)
                                                         {
                                                            addr017c:
                                                            this._residentChangePossible = param1.residentChange;
                                                            if(!(_loc3_ && Boolean(param1)))
                                                            {
                                                               this._residentChangeLevel = param1.residentChangeLevel;
                                                               if(!_loc3_)
                                                               {
                                                                  addr01a1:
                                                                  this._moodEffect = param1.mood;
                                                                  if(_loc4_ || Boolean(param1))
                                                                  {
                                                                     addr01b8:
                                                                     this._energyEffect = param1.energy;
                                                                     if(_loc4_)
                                                                     {
                                                                        this._exprossoUseMutipleTimesOn = param1.exprossoUseMutipleTimesOn;
                                                                        if(!(_loc3_ && Boolean(param1)))
                                                                        {
                                                                           addr01ea:
                                                                           this._residentialFieldObjectVo = param2;
                                                                           if(_loc4_)
                                                                           {
                                                                              addr01f5:
                                                                              this._hasEnoughPermits = param1.ep;
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0205:
                                                                                 this._currentMasteryChallenge = param1.masteryChallenge;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr020f);
                                                                     }
                                                                  }
                                                                  §§goto(addr0205);
                                                               }
                                                               §§goto(addr01f5);
                                                            }
                                                            §§goto(addr01b8);
                                                         }
                                                      }
                                                      §§goto(addr01a1);
                                                   }
                                                }
                                                §§goto(addr017c);
                                             }
                                             §§goto(addr014e);
                                          }
                                          §§goto(addr016d);
                                       }
                                       §§goto(addr015e);
                                    }
                                    §§goto(addr020f);
                                 }
                                 addr020f:
                                 return;
                              }
                              §§goto(addr01b8);
                           }
                           §§goto(addr0136);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr0205);
                  }
                  §§goto(addr00f9);
               }
               §§goto(addr004e);
            }
            §§goto(addr014e);
         }
         §§goto(addr011f);
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get upgradeCountTotal() : Number
      {
         return this._upgradeCountTotal;
      }
      
      public function get harvestCount() : Number
      {
         return this._harvestCount;
      }
      
      public function get upgradeReady() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._upgradeReady = this._upgradeCountTotal <= this._harvestCount;
         }
         return this._upgradeReady;
      }
      
      public function get needs() : Vector.<ResidentialNeedPopupVo>
      {
         return this._needs;
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
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get upgradeCurrentLevel() : int
      {
         return this._upgradeCurrentLevel;
      }
      
      public function get harvestEndTime() : Number
      {
         return this._harvestEndTime;
      }
      
      public function get harvestCurrentTime() : Number
      {
         return this._harvestCurrentTime;
      }
      
      public function get harvestCycleLength() : Number
      {
         return this._harvestCycleLength;
      }
      
      public function get residentialFieldObjectVo() : ResidentialFieldObjectVo
      {
         return this._residentialFieldObjectVo;
      }
      
      public function get localeId() : Number
      {
         return this._localeId;
      }
      
      public function get nextResidentialDetail() : ResidentialDetailViewVo
      {
         return this._nextResidentialDetail;
      }
      
      public function set nextResidentialDetail(param1:ResidentialDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._nextResidentialDetail = param1;
         }
      }
      
      public function get rentalIncomeVo() : SimpleItemVo
      {
         return this._rentalIncomeVo;
      }
      
      public function get needIncomeVo() : SimpleItemVo
      {
         return this._needIncomeVo;
      }
      
      public function get moodEffect() : SimpleItemVo
      {
         return this._moodEffect;
      }
      
      public function get energyEffect() : SimpleItemVo
      {
         return this._energyEffect;
      }
      
      public function get residentInfo() : SimpleItemVo
      {
         return this._residentInfo;
      }
      
      public function get hasEnoughPermits() : Boolean
      {
         return this._hasEnoughPermits;
      }
      
      public function get exprossoUseMutipleTimesOn() : Boolean
      {
         return this._exprossoUseMutipleTimesOn;
      }
      
      public function get libName() : String
      {
         return this._libName;
      }
      
      public function get residentChangePossible() : Boolean
      {
         return this._residentChangePossible;
      }
      
      public function get residentChangeLevel() : int
      {
         return this._residentChangeLevel;
      }
      
      public function get restrictionForPolaroid() : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._residentialFieldObjectVo.configPlayfieldItemVo.tags;
         while(true)
         {
            if(!(§§hasnext(_loc3_,_loc2_)))
            {
               return "";
            }
         }
         addr01c8:
         ServerRestrictionConstants.COAST_WHITELIST;
         return §§pop();
      }
      
      public function get currentMasteryChallenge() : MasteryComponentVo
      {
         return this._currentMasteryChallenge;
      }
   }
}

