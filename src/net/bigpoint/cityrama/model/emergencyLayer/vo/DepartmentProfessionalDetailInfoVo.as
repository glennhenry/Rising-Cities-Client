package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalLevelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalTraitDTO;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.IProfessionalCharacteristicsVo;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.IProfessionalSlotVo;
   
   public class DepartmentProfessionalDetailInfoVo implements IProfessionalSlotVo, IProfessionalCharacteristicsVo
   {
      
      private var _name:String;
      
      private var _levelsConfig:Vector.<ConfigProfessionalLevelDTO>;
      
      private var _traits:Vector.<String>;
      
      private var _unspentSkillPoints:uint;
      
      private var _dismissIsUnlocked:Boolean;
      
      protected var _dto:ProfessionalDTO;
      
      private var _attributes:Vector.<ProfessionalAttributeVO>;
      
      public function DepartmentProfessionalDetailInfoVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      private static function sortAttributes(param1:ProfessionalAttributeVO, param2:ProfessionalAttributeVO) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §§push(param1.configId);
            if(_loc4_)
            {
               §§push(param2.configId);
               if(_loc4_ || Boolean(param2))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(1);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr0099);
                     }
                  }
                  else
                  {
                     addr0078:
                     addr0074:
                     if(param1.configId < param2.configId)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr008a:
                           §§push(-1);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0099:
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr009a:
                           return 0;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0078);
            }
            §§goto(addr0074);
         }
         §§goto(addr008a);
      }
      
      public function get dismissIsUnlocked() : Boolean
      {
         return this._dismissIsUnlocked;
      }
      
      public function set dismissIsUnlocked(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._dismissIsUnlocked = param1;
         }
      }
      
      public function get unspentSkillPoints() : uint
      {
         return this._dto.unspentSkillPoints;
      }
      
      public function get traits() : Vector.<String>
      {
         return this._traits;
      }
      
      public function set traits(param1:Vector.<String>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._traits = param1;
         }
      }
      
      public function get levelsConfig() : Vector.<ConfigProfessionalLevelDTO>
      {
         return this._levelsConfig;
      }
      
      public function setLevelsConfig(param1:Dictionary) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigProfessionalLevelDTO = null;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            this._levelsConfig = new Vector.<ConfigProfessionalLevelDTO>(0);
         }
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               this._levelsConfig.push(_loc2_);
            }
         }
      }
      
      public function get maxLevel() : Number
      {
         return this._levelsConfig.length;
      }
      
      public function get attributes() : Vector.<ProfessionalAttributeVO>
      {
         return this._attributes;
      }
      
      public function get levelupReady() : Boolean
      {
         return this._dto.canLevelUp;
      }
      
      public function get currentLevel() : uint
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigProfessionalLevelDTO = null;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.levelsConfig)
         {
            if(_loc5_)
            {
               §§push(_loc2_.xpThreshold);
               if(_loc5_)
               {
                  if(§§pop() <= this.currentXp)
                  {
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        addr0077:
                        §§push(_loc1_);
                        if(_loc5_)
                        {
                           addr007e:
                           §§push(uint(§§pop() + 1));
                        }
                        _loc1_ = §§pop();
                     }
                  }
                  continue;
               }
               §§goto(addr007e);
            }
            §§goto(addr0077);
         }
         return _loc1_;
      }
      
      public function get levelProgressScalar() : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(this.currentXp);
         if(_loc4_)
         {
            §§push(§§pop() - this.levelsConfig[this.currentLevel - 1].xpThreshold);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop());
            }
         }
         var _loc1_:* = §§pop();
         return Math.min(_loc1_ / (this.nextLevelXpThreshold - this.levelsConfig[this.currentLevel - 1].xpThreshold),1);
      }
      
      public function get profImage() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push("small_");
         if(_loc1_)
         {
            return §§pop() + this._dto.gfxId;
         }
      }
      
      public function get profLib() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._dto.gender)
            {
               addr0030:
               §§push("male");
               if(_loc2_ || _loc3_)
               {
               }
            }
            else
            {
               §§push("female");
            }
            var _loc1_:String = §§pop();
            §§push("gui_professionals_");
            if(!_loc3_)
            {
               return §§pop() + _loc1_;
            }
         }
         §§goto(addr0030);
      }
      
      public function get profId() : Number
      {
         return this._dto.id;
      }
      
      public function get operationsLeft() : uint
      {
         return this._dto.lifetime;
      }
      
      public function get specialisationGfxId() : int
      {
         return this._dto.configSpecialisation.gfxId;
      }
      
      public function get specialisationLocaId() : String
      {
         return this._dto.configSpecialisation.locaId;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._name = param1;
         }
      }
      
      public function get currentXp() : Number
      {
         return this._dto.experience;
      }
      
      public function get nextLevelXpThreshold() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(this.levelsConfig.length > this.currentLevel)
            {
               if(!_loc2_)
               {
                  return this.levelsConfig[this.currentLevel].xpThreshold;
               }
            }
         }
         return 0;
      }
      
      public function get lastLevelXpThreshold() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.currentLevel);
            if(!_loc2_)
            {
               §§push(§§pop() > 0);
               if(_loc1_ || _loc2_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           §§goto(addr005d);
                        }
                        §§goto(addr0066);
                     }
                  }
               }
               addr005d:
               §§goto(addr0056);
            }
            addr0056:
            if(this.currentLevel < this.levelsConfig.length)
            {
               if(_loc1_)
               {
                  §§goto(addr0066);
               }
            }
            return 0;
         }
         addr0066:
         return this.levelsConfig[this.currentLevel - 1].xpThreshold;
      }
      
      public function set dto(param1:ProfessionalDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._dto = param1;
         }
      }
      
      public function get department() : String
      {
         return this._dto.configSpecialisation.department;
      }
      
      public function get profSpecialisationGfxId() : Number
      {
         return this.specialisationGfxId;
      }
      
      public function get profSpecialisationLocaId() : String
      {
         return this.specialisationLocaId;
      }
      
      public function get characteristicEntries() : Vector.<CharacteristicsEntryVo>
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc2_:ProfessionalTraitDTO = null;
         var _loc3_:* = false;
         var _loc4_:CharacteristicsEntryVo = null;
         var _loc5_:String = null;
         var _loc1_:Vector.<CharacteristicsEntryVo> = new Vector.<CharacteristicsEntryVo>(0);
         for each(_loc2_ in this._dto.traits)
         {
            if(_loc10_ || Boolean(_loc2_))
            {
               §§push(false);
               if(!(_loc11_ && Boolean(this)))
               {
                  _loc3_ = §§pop();
                  if(_loc10_)
                  {
                     §§push(0);
                     if(!(_loc11_ && Boolean(_loc2_)))
                     {
                        var _loc8_:* = §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           for each(_loc4_ in _loc1_)
                           {
                              if(_loc4_.localeId == _loc2_.config.localeid)
                              {
                                 if(!(_loc11_ && Boolean(_loc1_)))
                                 {
                                    §§push(_loc4_);
                                    §§push(_loc4_.amountSum);
                                    if(_loc10_ || Boolean(this))
                                    {
                                       §§push(_loc2_.config.value);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() * _loc2_.stacks);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().amountSum = §§pop();
                                    if(_loc11_ && Boolean(_loc1_))
                                    {
                                       continue;
                                    }
                                 }
                                 _loc3_ = true;
                              }
                           }
                        }
                        if(!_loc11_)
                        {
                           addr0123:
                           if(!_loc3_)
                           {
                              if(_loc10_)
                              {
                                 addr0134:
                                 addr012d:
                                 if(this._dto.gender)
                                 {
                                    if(!_loc10_)
                                    {
                                       continue;
                                    }
                                    addr013e:
                                    §§push("male");
                                    if(_loc10_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push("female");
                                 }
                                 _loc5_ = §§pop();
                                 if(!_loc10_)
                                 {
                                    continue;
                                 }
                              }
                              _loc1_.push(new CharacteristicsEntryVo(_loc2_.config.localeid,_loc2_.config.value * _loc2_.stacks,_loc5_));
                           }
                           continue;
                        }
                        §§goto(addr013e);
                     }
                     §§goto(addr0134);
                  }
                  §§goto(addr012d);
               }
               §§goto(addr0123);
            }
            §§goto(addr012d);
         }
         return _loc1_;
      }
      
      public function set attributes(param1:Vector.<ProfessionalAttributeVO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._attributes = param1;
            if(!_loc2_)
            {
               addr002a:
               this._attributes.sort(sortAttributes);
            }
            return;
         }
         §§goto(addr002a);
      }
   }
}

