package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class EmergencyZoneLayerVo
   {
      
      private var _flavourText:String;
      
      private var _maxSolvingPossibility:Number;
      
      private var _buildingLib:String;
      
      private var _buildingImage:String;
      
      private var _emergencyLib:String;
      
      private var _emergencyImage:String;
      
      private var _emergencySWF:String;
      
      private var _requiredPoliceGrade:int;
      
      private var _requiredFireGrade:int;
      
      private var _requiredHospitalGrade:int;
      
      private var _policeGrade:int;
      
      private var _fireGrade:int;
      
      private var _hospitalGrade:int;
      
      private var _timerData:TimerBarComponentVo;
      
      private var _showZoneLayer:Boolean;
      
      private var _grades:Vector.<GradeVo>;
      
      public function EmergencyZoneLayerVo(param1:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:GradeVo = null;
         if(!(_loc4_ && Boolean(param1)))
         {
            super();
            if(!(_loc4_ && Boolean(param1)))
            {
               this._flavourText = param1.flavour;
               if(_loc3_)
               {
                  addr0045:
                  this._maxSolvingPossibility = param1.max;
                  if(_loc3_ || Boolean(this))
                  {
                     this._buildingLib = param1.buildingLib;
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        this._buildingImage = param1.buildingImage;
                        if(_loc3_ || Boolean(this))
                        {
                           this._emergencyLib = param1.emergencyLib;
                           if(!_loc4_)
                           {
                              addr0099:
                              this._emergencyImage = param1.emergencyImage;
                              if(!_loc4_)
                              {
                                 this._emergencySWF = param1.emergencySWF;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    this._requiredPoliceGrade = param1.reqPolice;
                                    if(_loc3_)
                                    {
                                       addr00ce:
                                       this._requiredFireGrade = param1.reqFire;
                                       if(_loc3_)
                                       {
                                          this._requiredHospitalGrade = param1.reqHospital;
                                          if(_loc3_)
                                          {
                                             addr00ea:
                                             this._policeGrade = param1.police;
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                this._fireGrade = param1.fire;
                                                if(_loc3_)
                                                {
                                                   this._hospitalGrade = param1.hospital;
                                                   if(_loc3_)
                                                   {
                                                      addr011d:
                                                      this._grades = new Vector.<GradeVo>();
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr0139:
                                                         §§push(this._requiredFireGrade);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc4_ && Boolean(param1)))
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     _loc2_ = new GradeVo();
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                        _loc2_.locaID = "1100001";
                                                                        if(_loc3_)
                                                                        {
                                                                           _loc2_.gfxID = 1100001;
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr01ab:
                                                                              _loc2_.requiredGrade = this._requiredFireGrade;
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§goto(addr01b8);
                                                                              }
                                                                              §§goto(addr01c6);
                                                                           }
                                                                           addr01b8:
                                                                           _loc2_.currentGrade = this._fireGrade;
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr01c6:
                                                                              this._grades.push(_loc2_);
                                                                           }
                                                                           §§goto(addr01ce);
                                                                        }
                                                                        §§goto(addr01c6);
                                                                     }
                                                                     §§goto(addr01ab);
                                                                  }
                                                                  §§goto(addr025c);
                                                               }
                                                               addr01ce:
                                                               §§push(this._requiredPoliceGrade);
                                                               if(_loc3_ || Boolean(param1))
                                                               {
                                                                  addr01df:
                                                                  §§push(0);
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           addr01f7:
                                                                           _loc2_ = new GradeVo();
                                                                           if(_loc3_)
                                                                           {
                                                                              _loc2_.locaID = "1110001";
                                                                              if(_loc3_)
                                                                              {
                                                                                 _loc2_.gfxID = 1110001;
                                                                                 if(!(_loc4_ && Boolean(param1)))
                                                                                 {
                                                                                    addr0229:
                                                                                    _loc2_.requiredGrade = this._requiredPoliceGrade;
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       _loc2_.currentGrade = this._policeGrade;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0245:
                                                                                          this._grades.push(_loc2_);
                                                                                       }
                                                                                       §§goto(addr024d);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0245);
                                                                              }
                                                                           }
                                                                           §§goto(addr0229);
                                                                        }
                                                                        §§goto(addr025c);
                                                                     }
                                                                     addr024d:
                                                                     §§goto(addr0253);
                                                                  }
                                                                  addr0253:
                                                                  §§goto(addr0251);
                                                               }
                                                               addr0251:
                                                               if(this._requiredHospitalGrade > 0)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr025c:
                                                                     _loc2_ = new GradeVo();
                                                                     if(_loc3_)
                                                                     {
                                                                        _loc2_.locaID = "1120001";
                                                                        if(!(_loc4_ && Boolean(_loc2_)))
                                                                        {
                                                                           addr0282:
                                                                           _loc2_.gfxID = 1120001;
                                                                           if(_loc3_ || Boolean(param1))
                                                                           {
                                                                              §§goto(addr0295);
                                                                           }
                                                                           §§goto(addr02a2);
                                                                        }
                                                                        addr0295:
                                                                        _loc2_.requiredGrade = this._requiredHospitalGrade;
                                                                        if(_loc3_)
                                                                        {
                                                                           _loc2_.currentGrade = this._hospitalGrade;
                                                                           addr02a2:
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              this._grades.push(_loc2_);
                                                                           }
                                                                        }
                                                                        §§goto(addr02ca);
                                                                     }
                                                                     §§goto(addr0282);
                                                                  }
                                                                  §§goto(addr02da);
                                                               }
                                                               addr02ca:
                                                               this._timerData = param1.timer;
                                                               if(!_loc4_)
                                                               {
                                                                  addr02da:
                                                                  this._showZoneLayer = param1.show;
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr0253);
                                                         }
                                                         §§goto(addr01df);
                                                      }
                                                      §§goto(addr01f7);
                                                   }
                                                   §§goto(addr02da);
                                                }
                                                §§goto(addr0139);
                                             }
                                             §§goto(addr011d);
                                          }
                                          §§goto(addr02da);
                                       }
                                       §§goto(addr011d);
                                    }
                                    §§goto(addr0139);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr025c);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr02da);
                  }
                  §§goto(addr01f7);
               }
            }
            §§goto(addr011d);
         }
         §§goto(addr0045);
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function get maxSolvingPossibility() : Number
      {
         return this._maxSolvingPossibility;
      }
      
      public function get policeRequiredGrade() : int
      {
         return this._requiredPoliceGrade;
      }
      
      public function get fireRequiredGrade() : int
      {
         return this._requiredFireGrade;
      }
      
      public function get hospitalRequiredGrade() : int
      {
         return this._requiredHospitalGrade;
      }
      
      public function get timerData() : TimerBarComponentVo
      {
         return this._timerData;
      }
      
      public function get buildingLib() : String
      {
         return this._buildingLib;
      }
      
      public function get buildingImage() : String
      {
         return this._buildingImage;
      }
      
      public function get emergencyLib() : String
      {
         return this._emergencyLib;
      }
      
      public function get emergencyImage() : String
      {
         return this._emergencyImage;
      }
      
      public function get policeGrade() : int
      {
         return this._policeGrade;
      }
      
      public function get fireGrade() : int
      {
         return this._fireGrade;
      }
      
      public function get hospitalGrade() : int
      {
         return this._hospitalGrade;
      }
      
      public function get showZoneLayer() : Boolean
      {
         return this._showZoneLayer;
      }
      
      public function get grades() : Vector.<GradeVo>
      {
         return this._grades;
      }
      
      public function get emergencySWF() : String
      {
         return this._emergencySWF;
      }
   }
}

