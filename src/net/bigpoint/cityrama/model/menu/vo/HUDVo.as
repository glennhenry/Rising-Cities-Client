package net.bigpoint.cityrama.model.menu.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.util.LocaUtils;
   
   public class HUDVo
   {
      
      private var _virtualCurrency:Number;
      
      private var _realCurrency:Number;
      
      private var _level:Number;
      
      private var _happiness:Number;
      
      private var _energy:Number;
      
      private var _energyModifier:Number;
      
      private var _happinessModifier:Number;
      
      private var _population:Vector.<PopulationTypeVo>;
      
      private var _specialCurrencies:Vector.<SpecialCurrencyVo>;
      
      private var _xp:Number;
      
      private var _xpCap:Number;
      
      private var _xpNextSubLevelCap:Number;
      
      private var _xpLastSubLevelCap:Number;
      
      private var _maxPopulation:Number;
      
      private var _producedEnergy:Number;
      
      private var _usedEnergy:Number;
      
      private var _producedHappiness:Number;
      
      private var _usedHappiness:Number;
      
      public function HUDVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get virtualCurrency() : Number
      {
         return this._virtualCurrency;
      }
      
      public function set virtualCurrency(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._virtualCurrency = param1;
         }
      }
      
      public function get realCurrency() : Number
      {
         return this._realCurrency;
      }
      
      public function set realCurrency(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._realCurrency = param1;
         }
      }
      
      public function get level() : Number
      {
         return this._level;
      }
      
      public function set level(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._level = param1;
         }
      }
      
      public function get happiness() : Number
      {
         return this._happiness;
      }
      
      public function set happiness(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._happiness = param1;
         }
      }
      
      public function get energy() : Number
      {
         return this._energy;
      }
      
      public function set energy(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._energy = param1;
         }
      }
      
      public function get population() : Vector.<PopulationTypeVo>
      {
         return this._population;
      }
      
      public function set population(param1:Vector.<PopulationTypeVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._population = param1;
         }
      }
      
      public function get xpCap() : Number
      {
         return this._xpCap;
      }
      
      public function set xpCap(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._xpCap = param1;
         }
      }
      
      public function get xp() : Number
      {
         return this._xp;
      }
      
      public function set xp(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._xp = param1;
         }
      }
      
      public function get specialCurrencies() : Vector.<SpecialCurrencyVo>
      {
         return this._specialCurrencies;
      }
      
      public function set specialCurrencies(param1:Vector.<SpecialCurrencyVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._specialCurrencies = param1;
         }
      }
      
      public function get maxPopulation() : Number
      {
         return this._maxPopulation;
      }
      
      public function set maxPopulation(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._maxPopulation = param1;
         }
      }
      
      public function get energyModifier() : Number
      {
         return this._energyModifier;
      }
      
      public function set energyModifier(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._energyModifier = param1;
         }
      }
      
      public function get happinessModifier() : Number
      {
         return this._happinessModifier;
      }
      
      public function set happinessModifier(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._happinessModifier = param1;
         }
      }
      
      public function get producedEnergy() : Number
      {
         return this._producedEnergy;
      }
      
      public function set producedEnergy(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._producedEnergy = param1;
         }
      }
      
      public function get usedEnergy() : Number
      {
         return this._usedEnergy;
      }
      
      public function set usedEnergy(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._usedEnergy = param1;
         }
      }
      
      public function get producedHappiness() : Number
      {
         return this._producedHappiness;
      }
      
      public function set producedHappiness(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._producedHappiness = param1;
         }
      }
      
      public function get usedHappiness() : Number
      {
         return this._usedHappiness;
      }
      
      public function set usedHappiness(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._usedHappiness = param1;
         }
      }
      
      public function get xpNextSubLevelCap() : Number
      {
         return this._xpNextSubLevelCap;
      }
      
      public function set xpNextSubLevelCap(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._xpNextSubLevelCap = param1;
         }
      }
      
      public function get xpToNextFullLevel() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this.xpCap);
         if(_loc1_)
         {
            §§push(this._xpLastSubLevelCap);
            if(_loc1_ || _loc1_)
            {
               §§goto(addr003f);
            }
            §§goto(addr003e);
         }
         addr003f:
         §§push(§§pop() - §§pop());
         if(!_loc2_)
         {
            addr003e:
            return §§pop() - this.xp;
         }
      }
      
      public function get xpToNextSubLevel() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this.xpNextSubLevelCap);
         if(!_loc1_)
         {
            §§push(this._xpLastSubLevelCap);
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0040);
            }
            §§goto(addr003f);
         }
         addr0040:
         §§push(§§pop() - §§pop());
         if(_loc2_)
         {
            addr003f:
            return §§pop() - this.xp;
         }
      }
      
      public function get levelProgress() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this.xp);
         if(!_loc2_)
         {
            §§push(this._xpLastSubLevelCap);
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr0047);
            }
            §§goto(addr0046);
         }
         addr0047:
         §§push(§§pop() + §§pop());
         if(_loc1_ || _loc1_)
         {
            addr0046:
            return §§pop() / this.xpCap;
         }
      }
      
      public function get populationData() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PopulationTypeVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this.population)
         {
            if(_loc6_)
            {
               _loc1_.addItem(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function get specialCurrencyData() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:SpecialCurrencyVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this.specialCurrencies)
         {
            if(!_loc5_)
            {
               _loc1_.addItem(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function get showMultipleCurrencyResources() : Boolean
      {
         return this.specialCurrencies.length > 1;
      }
      
      public function get populationTooltip() : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PopulationTypeVo = null;
         var _loc1_:* = "0";
         var _loc3_:int = 0;
         for each(_loc2_ in this.population)
         {
            if(_loc6_)
            {
               §§push(_loc2_.type);
               if(!_loc5_)
               {
                  §§push(ServerResConst.RESOURCE_WORKERS);
                  if(!_loc5_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(!_loc5_)
                           {
                              §§pop();
                              if(!_loc5_)
                              {
                                 addr0086:
                                 if(this.population.length == 1)
                                 {
                                    if(_loc5_ && Boolean(_loc3_))
                                    {
                                       continue;
                                    }
                                    addr0098:
                                    §§push(_loc2_.amountString);
                                    if(_loc6_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || Boolean(this))
                                       {
                                          addr00b9:
                                          _loc1_ = §§pop();
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             addr00c8:
                                             §§push(_loc2_.type);
                                             if(_loc6_ || Boolean(this))
                                             {
                                                addr00e8:
                                                addr00ed:
                                                if(§§pop() == ServerResConst.RESOURCE_POPULATION)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr00f7:
                                                      §§push(_loc2_.amountString);
                                                      if(!_loc5_)
                                                      {
                                                         addr0101:
                                                         §§push(§§pop());
                                                      }
                                                      _loc1_ = §§pop();
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr0101);
                                          }
                                          §§goto(addr00f7);
                                       }
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr00b9);
                                 }
                                 §§goto(addr00c8);
                              }
                              §§goto(addr00f7);
                           }
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr00ed);
               }
               §§goto(addr0101);
            }
            §§goto(addr0098);
         }
         return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.popBar",[_loc1_,this.maxPopulation]);
      }
      
      public function get energyBarTooltip() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this.energy);
            if(_loc2_ || _loc1_)
            {
               §§push(0.25);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(LocaUtils);
                        §§push("rcl.tooltips.hud");
                        §§push("rcl.tooltips.hud.energyLow");
                        §§push(this.producedEnergy);
                        §§push(this.usedEnergy);
                        §§push(this.energyModifier);
                        if(_loc2_)
                        {
                           §§push(§§pop() * 100);
                        }
                        §§push(§§pop().getString(§§pop(),§§pop(),null));
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0183:
                        §§push(LocaUtils);
                        §§push("rcl.tooltips.hud");
                        §§push("rcl.tooltips.hud.energyHigh");
                        §§push(this.producedEnergy);
                        §§push(this.usedEnergy);
                        §§push(this.energyModifier);
                        if(_loc2_)
                        {
                           §§push(§§pop() * 100);
                        }
                        §§push(§§pop().getString(§§pop(),§§pop(),null));
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                     }
                  }
                  else
                  {
                     §§push(this.energy);
                     if(!_loc1_)
                     {
                        addr0085:
                        §§push(0.25);
                        if(!_loc1_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(!(_loc1_ && _loc1_))
                           {
                              var _temp_7:* = §§pop();
                              §§push(_temp_7);
                              §§push(_temp_7);
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       addr00a9:
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          addr00af:
                                          §§push(this.energy);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00c0:
                                             §§push(0.5);
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00cf:
                                                §§push(§§pop() < §§pop());
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr00e7:
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         addr00f8:
                                                         §§push(LocaUtils);
                                                         §§push("rcl.tooltips.hud");
                                                         §§push("rcl.tooltips.hud.energyMedium");
                                                         §§push(this.producedEnergy);
                                                         §§push(this.usedEnergy);
                                                         §§push(this.energyModifier);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(§§pop() * 100);
                                                         }
                                                         §§push(§§pop().getString(§§pop(),§§pop(),null));
                                                         if(!_loc1_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr012d:
                                                         §§push(this.energy);
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            addr013e:
                                                            §§push(0.5);
                                                            if(!_loc1_)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  var _temp_15:* = §§pop();
                                                                  addr0154:
                                                                  §§push(_temp_15);
                                                                  if(_temp_15)
                                                                  {
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        addr0165:
                                                                        §§pop();
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr0172:
                                                                           addr0171:
                                                                           addr016f:
                                                                           if(this.energy < 0.75)
                                                                           {
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr0183);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr01b5:
                                                                                 §§push(LocaUtils);
                                                                                 §§push("rcl.tooltips.hud");
                                                                                 §§push("rcl.tooltips.hud.energyVeryHigh");
                                                                                 §§push(this.producedEnergy);
                                                                                 §§push(this.usedEnergy);
                                                                                 §§push(this.energyModifier);
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() * 100);
                                                                                 }
                                                                                 §§push(§§pop().getString(§§pop(),§§pop(),null));
                                                                              }
                                                                              §§goto(addr01df);
                                                                           }
                                                                        }
                                                                        §§goto(addr01b5);
                                                                     }
                                                                  }
                                                                  §§goto(addr0172);
                                                               }
                                                               §§goto(addr0165);
                                                            }
                                                            §§goto(addr0171);
                                                         }
                                                         §§goto(addr016f);
                                                      }
                                                      §§goto(addr01df);
                                                   }
                                                   §§goto(addr012d);
                                                }
                                                §§goto(addr0172);
                                             }
                                             §§goto(addr0171);
                                          }
                                          §§goto(addr013e);
                                       }
                                       §§goto(addr00f8);
                                    }
                                 }
                                 §§goto(addr00e7);
                              }
                              §§goto(addr0154);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00c0);
                  }
                  addr01df:
                  return §§pop();
               }
               §§goto(addr0171);
            }
            §§goto(addr0085);
         }
         §§goto(addr00af);
      }
      
      public function get happinessBarTooltip() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.happiness);
            if(_loc1_ || _loc2_)
            {
               §§push(0.25);
               if(_loc1_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodLow",[this.producedHappiness,this.usedHappiness,25]));
                        if(!(_loc2_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0156:
                        §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodHigh",[this.producedHappiness,this.usedHappiness,75]));
                        if(!(_loc2_ && _loc1_))
                        {
                           return §§pop();
                        }
                     }
                  }
                  else
                  {
                     §§push(this.happiness);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(0.25);
                        if(_loc1_)
                        {
                           addr0081:
                           §§push(§§pop() >= §§pop());
                           if(_loc1_ || _loc1_)
                           {
                              var _temp_7:* = §§pop();
                              §§push(_temp_7);
                              §§push(_temp_7);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§pop();
                                       if(_loc1_)
                                       {
                                          §§push(this.happiness);
                                          if(_loc1_ || Boolean(this))
                                          {
                                             addr00cf:
                                             §§push(0.5);
                                             if(_loc1_ || Boolean(this))
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(!_loc2_)
                                                {
                                                   addr00e4:
                                                   if(§§pop())
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodMedium",[this.producedHappiness,this.usedHappiness,50]));
                                                         if(_loc1_)
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0110:
                                                         §§push(this.happiness);
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            addr0121:
                                                            §§push(0.5);
                                                            if(!_loc2_)
                                                            {
                                                               addr0128:
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  addr0136:
                                                                  var _temp_14:* = §§pop();
                                                                  addr0137:
                                                                  §§push(_temp_14);
                                                                  if(_temp_14)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        addr0140:
                                                                        §§pop();
                                                                        if(_loc1_)
                                                                        {
                                                                           addr014d:
                                                                           addr014c:
                                                                           addr014a:
                                                                           if(this.happiness < 0.75)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§goto(addr0156);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0186:
                                                                                 §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodVeryHigh",[this.producedHappiness,this.usedHappiness,100]));
                                                                              }
                                                                              §§goto(addr019e);
                                                                           }
                                                                        }
                                                                        §§goto(addr0186);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr014d);
                                                            }
                                                            §§goto(addr014c);
                                                         }
                                                         §§goto(addr014a);
                                                      }
                                                      §§goto(addr019e);
                                                   }
                                                   §§goto(addr0110);
                                                }
                                                §§goto(addr014d);
                                             }
                                             §§goto(addr0128);
                                          }
                                          §§goto(addr0121);
                                       }
                                       §§goto(addr0110);
                                    }
                                    §§goto(addr0140);
                                 }
                                 §§goto(addr00e4);
                              }
                              §§goto(addr0137);
                           }
                           §§goto(addr0136);
                        }
                        §§goto(addr0128);
                     }
                     §§goto(addr00cf);
                  }
                  addr019e:
                  return §§pop();
               }
               §§goto(addr0081);
            }
            §§goto(addr014a);
         }
         §§goto(addr0156);
      }
      
      public function get levelBarTooltip() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this.xpToNextFullLevel);
            if(!_loc2_)
            {
               §§push(0);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.xpBar.maxReached"));
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0082:
                        §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.xpBar",[this.xpToNextFullLevel]));
                        if(!(_loc2_ && _loc1_))
                        {
                           return §§pop();
                        }
                     }
                  }
                  else
                  {
                     addr0071:
                     addr006b:
                     if(this.xpNextSubLevelCap == UserLevelProxy.NO_NEXT_SUBLEVEL)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0082);
                        }
                        else
                        {
                           addr00ac:
                           §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.xpBar.sublevel",[this.xpToNextSubLevel,this.xpToNextFullLevel]));
                        }
                        §§goto(addr00c3);
                     }
                     §§goto(addr00ac);
                  }
                  addr00c3:
                  return §§pop();
               }
               §§goto(addr0071);
            }
            §§goto(addr006b);
         }
         §§goto(addr00ac);
      }
      
      public function get xpLastSubLevelCap() : Number
      {
         return this._xpLastSubLevelCap;
      }
      
      public function set xpLastSubLevelCap(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._xpLastSubLevelCap = param1;
         }
      }
   }
}

