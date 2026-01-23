package net.bigpoint.cityrama.model.server.vo.server
{
   public class ProfessionalDTO
   {
      
      private var _id:Number;
      
      private var _buildingId:Number;
      
      private var _experience:uint;
      
      private var _lifetime:Number;
      
      private var _configSpecializationId:Number;
      
      private var _attributes:Vector.<ProfessionalAttributeDTO>;
      
      private var _gfxId:String;
      
      private var _gender:int;
      
      private var _name:int;
      
      private var _surname:int;
      
      private var _extendedCount:int;
      
      private var _canLevelUp:Boolean;
      
      private var _configSpecialisation:ConfigProfessionalSpecializationDTO;
      
      private var _possibleSpecialisationIdsByLevelUp:Vector.<Number>;
      
      private var _unspentSkillPoints:int;
      
      private var _traits:Vector.<ProfessionalTraitDTO>;
      
      public function ProfessionalDTO(param1:Object, param2:ConfigProfessionalSpecializationDTO)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         if(!(_loc9_ && Boolean(param2)))
         {
            super();
            if(!_loc9_)
            {
               this._id = param1.pid;
               if(!(_loc9_ && Boolean(param1)))
               {
                  this._buildingId = param1.bid;
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     this._experience = param1.e;
                     if(_loc8_ || Boolean(this))
                     {
                        addr007d:
                        this._lifetime = param1.l;
                        if(_loc8_)
                        {
                           this._configSpecializationId = param1.csi;
                           if(!_loc9_)
                           {
                              this._gfxId = param1.gfx;
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 this._gender = param1.g;
                                 if(_loc8_)
                                 {
                                    this._name = param1.n;
                                    if(!_loc9_)
                                    {
                                       addr00d2:
                                       this._surname = param1.sn;
                                       if(!(_loc9_ && Boolean(_loc3_)))
                                       {
                                          addr00ea:
                                          this._extendedCount = param1.exc;
                                          if(!_loc9_)
                                          {
                                             addr00fa:
                                             this._attributes = new Vector.<ProfessionalAttributeDTO>();
                                          }
                                          addr0109:
                                          var _loc6_:* = 0;
                                          var _loc7_:* = param1.a;
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc7_,_loc6_));
                                             if(_loc9_ && Boolean(_loc3_))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                _loc3_ = §§nextvalue(_loc6_,_loc7_);
                                                if(_loc8_ || Boolean(param1))
                                                {
                                                   this._attributes.push(new ProfessionalAttributeDTO(_loc3_));
                                                }
                                                continue;
                                             }
                                             if(_loc8_ || Boolean(param2))
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!(_loc9_ && Boolean(_loc3_)))
                                                   {
                                                      this._possibleSpecialisationIdsByLevelUp = new Vector.<Number>();
                                                      if(!(_loc9_ && Boolean(param2)))
                                                      {
                                                         addr01a2:
                                                         §§push(0);
                                                         if(!(_loc9_ && Boolean(this)))
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!(_loc9_ && Boolean(this)))
                                                            {
                                                               _loc7_ = param1.ssi;
                                                               if(!(_loc9_ && Boolean(this)))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc7_,_loc6_));
                                                                     if(_loc8_)
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop3:
                                                                  while(§§pop())
                                                                  {
                                                                     _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                     if(_loc5_ != null)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           this._traits.push(new ProfessionalTraitDTO(_loc5_));
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc7_,_loc6_));
                                                                        continue loop3;
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr028d:
                                                                  if(!(_loc9_ && Boolean(param1)))
                                                                  {
                                                                     this._canLevelUp = param1.lu;
                                                                     addr029d:
                                                                     if(!(_loc9_ && Boolean(_loc3_)))
                                                                     {
                                                                        this._unspentSkillPoints = param1.usp;
                                                                        if(!(_loc9_ && Boolean(param2)))
                                                                        {
                                                                           addr02da:
                                                                           this._configSpecialisation = param2;
                                                                        }
                                                                        §§goto(addr02df);
                                                                     }
                                                                     §§goto(addr02da);
                                                                  }
                                                                  addr02df:
                                                                  return;
                                                                  addr01fc:
                                                                  addr028b:
                                                                  addr0287:
                                                               }
                                                               while(true)
                                                               {
                                                                  this._possibleSpecialisationIdsByLevelUp.push(_loc4_);
                                                                  §§goto(addr01fc);
                                                               }
                                                               addr01f3:
                                                            }
                                                            §§goto(addr028d);
                                                         }
                                                         addr0246:
                                                         _loc6_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            addr024e:
                                                            _loc7_ = param1.t;
                                                            §§goto(addr0284);
                                                         }
                                                         §§goto(addr028d);
                                                      }
                                                      addr0244:
                                                      §§goto(addr0246);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr01a2);
                                                }
                                                §§goto(addr028d);
                                             }
                                             if(_loc8_)
                                             {
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   this._traits = new Vector.<ProfessionalTraitDTO>();
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr0244);
                                                   }
                                                   §§goto(addr029d);
                                                }
                                                §§goto(addr02df);
                                             }
                                             §§goto(addr024e);
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   §§goto(addr0217);
                                                }
                                                §§goto(addr028b);
                                             }
                                             else
                                             {
                                                _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   §§goto(addr01f3);
                                                }
                                                §§goto(addr01fc);
                                             }
                                          }
                                          §§goto(addr0287);
                                       }
                                    }
                                 }
                                 §§goto(addr00fa);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr00d2);
                  }
               }
               §§goto(addr00fa);
            }
            §§goto(addr00d2);
         }
         §§goto(addr007d);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get experience() : uint
      {
         return this._experience;
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function updateSpecialisation(param1:ConfigProfessionalSpecializationDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._configSpecialisation = param1;
            if(_loc2_ || Boolean(this))
            {
               this._configSpecializationId = param1.id;
            }
         }
      }
      
      public function get configSpecializationId() : Number
      {
         return this._configSpecializationId;
      }
      
      public function get attributes() : Vector.<ProfessionalAttributeDTO>
      {
         return this._attributes;
      }
      
      public function get gfxId() : String
      {
         return this._gfxId;
      }
      
      public function get gender() : int
      {
         return this._gender;
      }
      
      public function get name() : int
      {
         return this._name;
      }
      
      public function get surname() : int
      {
         return this._surname;
      }
      
      public function get configSpecialisation() : ConfigProfessionalSpecializationDTO
      {
         return this._configSpecialisation;
      }
      
      public function get buildingId() : Number
      {
         return this._buildingId;
      }
      
      public function get extendedCount() : int
      {
         return this._extendedCount;
      }
      
      public function get unspentSkillPoints() : int
      {
         return this._unspentSkillPoints;
      }
      
      public function set unspentSkillPoints(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._unspentSkillPoints = param1;
         }
      }
      
      public function set buildingId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._buildingId = param1;
         }
      }
      
      public function get possibleSpecialisationIdsByLevelUp() : Vector.<Number>
      {
         return this._possibleSpecialisationIdsByLevelUp;
      }
      
      public function get canLevelUp() : Boolean
      {
         return this._canLevelUp;
      }
      
      public function set canLevelUp(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._canLevelUp = param1;
         }
      }
      
      public function get traits() : Vector.<ProfessionalTraitDTO>
      {
         return this._traits;
      }
   }
}

