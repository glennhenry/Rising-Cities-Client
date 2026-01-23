package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class BuildingDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _buildingLevel:Number;
      
      private var _condition:Number;
      
      private var _dirty:Number;
      
      private var _active:Boolean;
      
      private var _upgradeCount:int;
      
      private var _activePhases:Vector.<PhaseDTO>;
      
      private var _needProductStock:Vector.<NeedStackDTO>;
      
      private var _emergencyDTO:EmergencyDTO;
      
      private var _professionals:Vector.<ProfessionalDTO>;
      
      private var _improvementSlotIds:Vector.<Number>;
      
      private var _improvements:Vector.<ImprovementDTO>;
      
      private var _lastUpdatedTimeStamp:Number;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      private var _isCorrupt:Boolean = false;
      
      private var _corruptServerObject:Object;
      
      private var _currentMasteryChallenge:MasteryChallengeDTO;
      
      private var _currentMasteryBonus:MasteryBonusDTO;
      
      public function BuildingDTO(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         if(!_loc10_)
         {
            super();
            if(!_loc10_)
            {
               this._id = param1.id;
               if(_loc11_ || Boolean(param2))
               {
                  this._configId = param1.c;
                  if(_loc11_ || Boolean(this))
                  {
                     addr0067:
                     this._posX = param1.x;
                     if(_loc11_ || Boolean(_loc3_))
                     {
                        this._posY = param1.y;
                        if(!(_loc10_ && Boolean(param2)))
                        {
                           addr0095:
                           this._created = param1.cr;
                           if(!(_loc10_ && Boolean(param2)))
                           {
                              addr00ad:
                              this._buildingLevel = param1.l;
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 this._condition = param1.co;
                                 if(_loc11_)
                                 {
                                    addr00d5:
                                    this._dirty = param1.d;
                                    if(_loc11_ || Boolean(this))
                                    {
                                       this._active = param1.a;
                                       if(!(_loc10_ && Boolean(_loc3_)))
                                       {
                                          this._upgradeCount = param1.upc;
                                          if(_loc11_)
                                          {
                                             addr0113:
                                             this._lastUpdatedTimeStamp = param1.lu;
                                             if(!_loc10_)
                                             {
                                                addr0122:
                                                if(param1.e)
                                                {
                                                   if(_loc11_ || Boolean(param1))
                                                   {
                                                      addr0139:
                                                      this._emergencyDTO = ConfigFactory.buildEmergencyDTO(param1.e);
                                                      if(!_loc10_)
                                                      {
                                                         addr0150:
                                                         this._activePhases = new Vector.<PhaseDTO>();
                                                         if(!_loc10_)
                                                         {
                                                            addr0164:
                                                            if(param1.ph)
                                                            {
                                                               addr016d:
                                                               var _loc8_:* = 0;
                                                               var _loc9_:* = param1.ph;
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                  if(!_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                     if(!(_loc10_ && Boolean(_loc3_)))
                                                                     {
                                                                        if(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc3_,param2) != null)
                                                                        {
                                                                           this._activePhases.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc3_,param2));
                                                                           continue;
                                                                        }
                                                                        if(_loc10_ && Boolean(param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     this._isCorrupt = true;
                                                                     if(!(_loc10_ && Boolean(param1)))
                                                                     {
                                                                        this._corruptServerObject = param1;
                                                                        if(_loc10_ && Boolean(param2))
                                                                        {
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!(_loc10_ && Boolean(_loc3_)))
                                                                  {
                                                                     if(_loc11_ || Boolean(_loc3_))
                                                                     {
                                                                        if(!(_loc10_ && Boolean(param2)))
                                                                        {
                                                                           addr0226:
                                                                           this._needProductStock = new Vector.<NeedStackDTO>();
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(param1.n)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(_loc11_ || Boolean(this))
                                                                                       {
                                                                                          _loc9_ = param1.n;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc9_,_loc8_));
                                                                                             if(!(_loc10_ && Boolean(param1)))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc4_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                   if(!(_loc10_ && Boolean(this)))
                                                                                                   {
                                                                                                      this._needProductStock.push(new NeedStackDTO(_loc4_));
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc11_ || Boolean(this))
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr02d3);
                                                                                                      }
                                                                                                      §§goto(addr0438);
                                                                                                   }
                                                                                                   §§goto(addr031e);
                                                                                                }
                                                                                                §§goto(addr0404);
                                                                                             }
                                                                                             §§goto(addr03fa);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr03b7);
                                                                                    }
                                                                                    §§goto(addr03af);
                                                                                 }
                                                                                 §§goto(addr02e7);
                                                                              }
                                                                              addr02d3:
                                                                              this._professionals = new Vector.<ProfessionalDTO>();
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr02e7:
                                                                                 if(param1.pr)
                                                                                 {
                                                                                    if(_loc11_ || Boolean(this))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc11_ || Boolean(this))
                                                                                       {
                                                                                          _loc8_ = §§pop();
                                                                                          if(_loc11_ || Boolean(param1))
                                                                                          {
                                                                                             addr031e:
                                                                                             _loc9_ = param1.pr;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                if(_loc11_ || Boolean(this))
                                                                                                {
                                                                                                   break loop6;
                                                                                                }
                                                                                                addr049e:
                                                                                                addr04a2:
                                                                                                loop3:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   _loc7_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                   if(_loc11_ || Boolean(param2))
                                                                                                   {
                                                                                                      this._improvements.push(new ImprovementDTO(_loc7_));
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr04a4:
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§goto(addr04ac);
                                                                                                }
                                                                                                §§goto(addr04f5);
                                                                                             }
                                                                                             addr0352:
                                                                                          }
                                                                                          addr0467:
                                                                                          _loc9_ = param1.imp;
                                                                                          §§goto(addr049b);
                                                                                       }
                                                                                       §§goto(addr053c);
                                                                                    }
                                                                                    addr044f:
                                                                                    §§push(0);
                                                                                    if(_loc11_ || Boolean(param1))
                                                                                    {
                                                                                       addr045f:
                                                                                       _loc8_ = §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§goto(addr0467);
                                                                                       }
                                                                                       §§goto(addr04a4);
                                                                                    }
                                                                                    §§goto(addr053c);
                                                                                 }
                                                                                 addr037d:
                                                                                 this._improvementSlotIds = new Vector.<Number>();
                                                                                 if(_loc11_ || Boolean(param1))
                                                                                 {
                                                                                    if(param1.sl)
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr03a7:
                                                                                          §§push(0);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr03af:
                                                                                             _loc8_ = §§pop();
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr03b7:
                                                                                                _loc9_ = param1.sl;
                                                                                                if(_loc10_ && Boolean(param2))
                                                                                                {
                                                                                                }
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                            if(_loc11_ || Boolean(this))
                                                                                                            {
                                                                                                               this._improvementSlotIds.push(_loc6_);
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            addr0404:
                                                                                                            if(_loc11_ || Boolean(param2))
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr041c:
                                                                                                                  this._improvements = new Vector.<ImprovementDTO>();
                                                                                                                  if(_loc11_ || Boolean(param2))
                                                                                                                  {
                                                                                                                     addr0438:
                                                                                                                     if(param1.imp)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ && Boolean(param2)))
                                                                                                                        {
                                                                                                                           §§goto(addr044f);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr04ac);
                                                                                                                  }
                                                                                                                  §§goto(addr044f);
                                                                                                               }
                                                                                                               §§goto(addr0549);
                                                                                                            }
                                                                                                            §§goto(addr0467);
                                                                                                         }
                                                                                                         §§goto(addr04a4);
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      addr03fa:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr049e);
                                                                                             }
                                                                                             §§goto(addr0467);
                                                                                          }
                                                                                          §§goto(addr045f);
                                                                                       }
                                                                                       addr04ac:
                                                                                       if(param1.mb)
                                                                                       {
                                                                                          if(!(_loc10_ && Boolean(param1)))
                                                                                          {
                                                                                             this._currentMasteryBonus = ConfigFactory.getMasterBonusDTO(param1.mb);
                                                                                             if(_loc11_ || Boolean(param2))
                                                                                             {
                                                                                                §§goto(addr04e2);
                                                                                             }
                                                                                             §§goto(addr04f5);
                                                                                          }
                                                                                          §§goto(addr0549);
                                                                                       }
                                                                                       §§goto(addr04e2);
                                                                                    }
                                                                                    §§goto(addr041c);
                                                                                 }
                                                                                 addr04e2:
                                                                                 this._config = param2;
                                                                                 if(_loc11_ || Boolean(param2))
                                                                                 {
                                                                                    addr04f5:
                                                                                    if(param1.m)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§push(this._currentMasteryBonus);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() == null);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                var _temp_25:* = §§pop();
                                                                                                §§push(_temp_25);
                                                                                                if(!_temp_25)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr052e);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr053f);
                                                                                             }
                                                                                             addr052e:
                                                                                             §§pop();
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr053f:
                                                                                                addr0539:
                                                                                                addr053c:
                                                                                                if(this._currentMasteryBonus.highestUnlockedBonusGroup < 5)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr0549:
                                                                                                      this.currentMasteryChallenge = new MasteryChallengeDTO(param1.m);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0559);
                                                                                          }
                                                                                          §§goto(addr0539);
                                                                                       }
                                                                                       §§goto(addr0549);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0559);
                                                                        }
                                                                        §§goto(addr03a7);
                                                                     }
                                                                     §§goto(addr031e);
                                                                  }
                                                                  §§goto(addr04a2);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§goto(addr037d);
                                                                           }
                                                                           addr0559:
                                                                           return;
                                                                        }
                                                                        §§goto(addr03b7);
                                                                     }
                                                                     §§goto(addr0404);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                     if(_loc11_ || Boolean(param2))
                                                                     {
                                                                        this._professionals.push(ConfigFactory.buildProfessionalDTO(_loc5_));
                                                                     }
                                                                     §§goto(addr0352);
                                                                  }
                                                               }
                                                               §§goto(addr049e);
                                                            }
                                                            §§goto(addr0226);
                                                         }
                                                         §§goto(addr016d);
                                                      }
                                                      §§goto(addr0164);
                                                   }
                                                }
                                             }
                                             §§goto(addr0150);
                                          }
                                          §§goto(addr0139);
                                       }
                                       §§goto(addr0164);
                                    }
                                    §§goto(addr0122);
                                 }
                                 §§goto(addr016d);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr0122);
                        }
                        §§goto(addr016d);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr0150);
               }
               §§goto(addr00ad);
            }
            §§goto(addr0067);
         }
         §§goto(addr0113);
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPlayfieldItemDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._config = param1;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._id = param1;
         }
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._posY = param1;
         }
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._posX = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._configId = param1;
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function get activePhases() : Vector.<PhaseDTO>
      {
         return this._activePhases;
      }
      
      public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._activePhases = param1;
         }
      }
      
      public function get upgradeCount() : int
      {
         return this._upgradeCount;
      }
      
      public function get buildingLevel() : Number
      {
         return this._buildingLevel;
      }
      
      public function set upgradeCount(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._upgradeCount = param1;
         }
      }
      
      public function get needProductStock() : Vector.<NeedStackDTO>
      {
         return this._needProductStock;
      }
      
      public function get isCorrupt() : Boolean
      {
         return this._isCorrupt;
      }
      
      public function get corruptServerObject() : Object
      {
         return this._corruptServerObject;
      }
      
      public function get emergencyDTO() : EmergencyDTO
      {
         return this._emergencyDTO;
      }
      
      public function set emergencyDTO(param1:EmergencyDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._emergencyDTO = param1;
         }
      }
      
      public function get professionals() : Vector.<ProfessionalDTO>
      {
         return this._professionals;
      }
      
      public function get improvementSlotIds() : Vector.<Number>
      {
         return this._improvementSlotIds;
      }
      
      public function get improvements() : Vector.<ImprovementDTO>
      {
         return this._improvements;
      }
      
      public function set improvements(param1:Vector.<ImprovementDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._improvements = param1;
         }
      }
      
      public function get lastUpdatedTimeStamp() : Number
      {
         return this._lastUpdatedTimeStamp;
      }
      
      public function get currentMasteryChallenge() : MasteryChallengeDTO
      {
         return this._currentMasteryChallenge;
      }
      
      public function set currentMasteryChallenge(param1:MasteryChallengeDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._currentMasteryChallenge = param1;
            if(_loc3_)
            {
               §§push(this._currentMasteryChallenge);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        addr0066:
                        this._currentMasteryChallenge.config = ConfigFactory.getConfigMasteryChallenge(this._currentMasteryChallenge,this._config);
                        addr0062:
                     }
                  }
                  return;
               }
               §§goto(addr0066);
            }
         }
         §§goto(addr0062);
      }
      
      public function get currentMasteryBonus() : MasteryBonusDTO
      {
         return this._currentMasteryBonus;
      }
      
      public function set currentMasteryBonus(param1:MasteryBonusDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._currentMasteryBonus = param1;
         }
      }
      
      public function get indexOfCurrentMasteryChallenge() : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            if(this.currentMasteryChallenge == null)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0038:
                  §§push(-1);
                  if(_loc3_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0054:
                  §§push(0);
               }
               var _loc1_:* = §§pop();
               var _loc2_:ConfigMasteryChallengeDTO = this.config.configMasteryChallengeDTO;
               while(true)
               {
                  if(_loc2_ == null)
                  {
                     §§push(-1);
                     break;
                  }
                  if(_loc2_.id == this.currentMasteryChallenge.id)
                  {
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc1_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  _loc2_ = _loc2_.nextChallenge;
                  if(!_loc4_)
                  {
                     _loc1_++;
                  }
               }
               return §§pop();
            }
            §§goto(addr0054);
         }
         §§goto(addr0038);
      }
   }
}

