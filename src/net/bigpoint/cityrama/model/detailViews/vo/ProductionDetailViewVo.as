package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.needsSystem.GlobalModifiersVo;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   
   public class ProductionDetailViewVo
   {
      
      private var _moodEffect:SimpleItemVo;
      
      private var _energyEffect:SimpleItemVo;
      
      private var _currentRunningEventGfxId:Number;
      
      private var _currentRunningEventLocaleId:Number;
      
      private var _gfxId:Number;
      
      private var _localeId:Number;
      
      private var _productionFieldObjectVo:ProductionFieldObjectVo;
      
      private var _globalUserLevel:int;
      
      private var _harvestCycleLength:Number = 0;
      
      private var _harvestCurrentTime:Number = 0;
      
      private var _harvestEndTime:Number = 0;
      
      private var _upgradeCountTotal:Number;
      
      private var _harvestCount:Number;
      
      private var _upgradePrice:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _upgradeReady:Boolean;
      
      private var _upgradeNextLevel:int;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeCurrentLevel:int;
      
      private var _needs:Vector.<ResidentialNeedPopupVo>;
      
      private var _generalOutput:Number;
      
      private var _boni:Vector.<SimpleItemVo>;
      
      private var _totalOutput:Number;
      
      private var _productionOptions:Vector.<ProductionGoodObjectVo>;
      
      private var _currentProductionIndex:int;
      
      private var _currentProductionPoints:Number;
      
      private var _modifiers:GlobalModifiersVo;
      
      private var _nextProductionDetail:ProductionDetailViewVo;
      
      public function ProductionDetailViewVo(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super();
            if(!(_loc2_ && Boolean(param1)))
            {
               this._productionFieldObjectVo = param1.pfoVo;
               if(!_loc2_)
               {
                  this._gfxId = param1.gfxId;
                  if(!(_loc2_ && _loc2_))
                  {
                     this._localeId = param1.localeId;
                     if(_loc3_ || Boolean(this))
                     {
                        this._upgradeCountTotal = param1.upgradeCountTotal;
                        if(!(_loc2_ && _loc3_))
                        {
                           this._harvestCount = param1.harvestCount;
                           if(_loc3_)
                           {
                              this._upgradePrice = param1.upgradePrice;
                              if(!_loc2_)
                              {
                                 this._hasEnoughDD = param1.hasEnoughDD;
                                 if(!(_loc2_ && Boolean(param1)))
                                 {
                                    this._upgradeCurrentLevel = param1.upgradeCurrentLevel;
                                    if(_loc3_ || _loc2_)
                                    {
                                       this._upgradeNextLevel = param1.upgradeNextLevel;
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          this._upgradeMaxLevel = param1.upgradeMaxLevel;
                                          if(_loc3_)
                                          {
                                             addr00fc:
                                             this._needs = param1.needs;
                                             if(!_loc2_)
                                             {
                                                this._harvestCycleLength = param1.cycleLength;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr0120:
                                                   this._harvestCurrentTime = param1.currentTime;
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      addr0137:
                                                      this._harvestEndTime = param1.endTime;
                                                      if(_loc3_)
                                                      {
                                                         addr0146:
                                                         this._generalOutput = param1.output;
                                                         if(!(_loc2_ && Boolean(param1)))
                                                         {
                                                            addr015c:
                                                            this._boni = param1.boni;
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr016a);
                                                            }
                                                            §§goto(addr0204);
                                                         }
                                                         §§goto(addr01e0);
                                                      }
                                                      §§goto(addr015c);
                                                   }
                                                   §§goto(addr0146);
                                                }
                                                §§goto(addr0204);
                                             }
                                             §§goto(addr015c);
                                          }
                                          §§goto(addr0120);
                                       }
                                       §§goto(addr0137);
                                    }
                                    §§goto(addr01bc);
                                 }
                                 §§goto(addr00fc);
                              }
                           }
                           §§goto(addr01ad);
                        }
                        §§goto(addr019f);
                     }
                     addr016a:
                     this._modifiers = param1.modifiers;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0181:
                        this._productionOptions = param1.productionOptions;
                        if(_loc3_)
                        {
                           this._currentProductionPoints = param1.cpp;
                           if(_loc3_)
                           {
                              §§goto(addr019f);
                           }
                           §§goto(addr0204);
                        }
                        addr019f:
                        this._currentProductionIndex = param1.cpi;
                        if(!_loc2_)
                        {
                           addr01ad:
                           this._globalUserLevel = param1.globalUserLevel;
                           if(!_loc2_)
                           {
                              addr01bc:
                              this._moodEffect = param1.mood;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr01e0:
                                 this._energyEffect = param1.energy;
                                 if(!_loc2_)
                                 {
                                    addr01ee:
                                    this._currentRunningEventGfxId = param1.eventGfxId;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr0204:
                                       this._currentRunningEventLocaleId = param1.eventLocaleId;
                                    }
                                    §§goto(addr020e);
                                 }
                                 §§goto(addr0204);
                              }
                              §§goto(addr020e);
                           }
                           §§goto(addr01ee);
                        }
                        §§goto(addr020e);
                     }
                     addr020e:
                     return;
                  }
                  §§goto(addr01e0);
               }
               §§goto(addr0120);
            }
            §§goto(addr0181);
         }
         §§goto(addr0204);
      }
      
      public function get totalOutput() : Number
      {
         return this._totalOutput;
      }
      
      public function get boni() : Vector.<SimpleItemVo>
      {
         return this._boni;
      }
      
      public function get generalOutput() : Number
      {
         return this._generalOutput;
      }
      
      public function get needs() : Vector.<ResidentialNeedPopupVo>
      {
         return this._needs;
      }
      
      public function set needs(param1:Vector.<ResidentialNeedPopupVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._needs = param1;
         }
      }
      
      public function get upgradeCurrentLevel() : int
      {
         return this._upgradeCurrentLevel;
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
         return this._upgradeReady;
      }
      
      public function set upgradeReady(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._upgradeReady = param1;
         }
      }
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get upgradePrice() : Number
      {
         return this._upgradePrice;
      }
      
      public function get harvestCount() : Number
      {
         return this._harvestCount;
      }
      
      public function get upgradeCountTotal() : Number
      {
         return this._upgradeCountTotal;
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
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._gfxId = param1;
         }
      }
      
      public function get productionFieldObjectVo() : ProductionFieldObjectVo
      {
         return this._productionFieldObjectVo;
      }
      
      public function set productionFieldObjectVo(param1:ProductionFieldObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._productionFieldObjectVo = param1;
         }
      }
      
      public function get productionOptions() : Vector.<ProductionGoodObjectVo>
      {
         return this._productionOptions;
      }
      
      public function get currentProductionIndex() : int
      {
         return this._currentProductionIndex;
      }
      
      public function get modifiers() : GlobalModifiersVo
      {
         return this._modifiers;
      }
      
      public function get localeId() : Number
      {
         return this._localeId;
      }
      
      public function get globalUserLevel() : int
      {
         return this._globalUserLevel;
      }
      
      public function get nextProductionDetail() : ProductionDetailViewVo
      {
         return this._nextProductionDetail;
      }
      
      public function set nextProductionDetail(param1:ProductionDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._nextProductionDetail = param1;
         }
      }
      
      public function get currentProductionPoints() : Number
      {
         return this._currentProductionPoints;
      }
      
      public function get energyEffect() : SimpleItemVo
      {
         return this._energyEffect;
      }
      
      public function get moodEffect() : SimpleItemVo
      {
         return this._moodEffect;
      }
      
      public function get currentRunningEventGfxId() : Number
      {
         return this._currentRunningEventGfxId;
      }
      
      public function get currentRunningEventLocaleId() : Number
      {
         return this._currentRunningEventLocaleId;
      }
   }
}

