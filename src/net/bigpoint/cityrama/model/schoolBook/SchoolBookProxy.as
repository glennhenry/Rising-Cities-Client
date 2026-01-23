package net.bigpoint.cityrama.model.schoolBook
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.schoolBook.vo.EducationAttributeVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookDepartmentVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEducationStepDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EducationPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalTraitDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SchoolBookProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SchoolBookProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "SchoolBookProxy";
      }
      
      private var _academyFieldObject:AcademyFieldObject;
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function SchoolBookProxy(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super(NAME,param1);
         }
      }
      
      private static function buildTraits(param1:ProfessionalDTO) : Vector.<CharacteristicsEntryVo>
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:ProfessionalTraitDTO = null;
         var _loc4_:* = false;
         var _loc5_:CharacteristicsEntryVo = null;
         var _loc6_:String = null;
         var _loc2_:Vector.<CharacteristicsEntryVo> = new Vector.<CharacteristicsEntryVo>(0);
         for each(_loc3_ in param1.traits)
         {
            if(_loc11_)
            {
               §§push(false);
               if(!_loc12_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc12_ && Boolean(_loc2_)))
                  {
                     §§push(0);
                     if(_loc11_)
                     {
                        var _loc9_:* = §§pop();
                        if(!(_loc12_ && Boolean(param1)))
                        {
                           var _loc10_:* = _loc2_;
                           for each(_loc9_ in _loc10_)
                           {
                              var _temp_3:* = _loc9_;
                              _loc5_ = _loc9_;
                              if(_loc5_.localeId == _loc3_.config.localeid)
                              {
                                 if(!_loc12_)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.amountSum);
                                    if(!_loc12_)
                                    {
                                       §§push(_loc3_.config.value);
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                          §§push(§§pop() * _loc3_.stacks);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().amountSum = §§pop();
                                    if(_loc12_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc4_ = true;
                              }
                           }
                        }
                        if(_loc11_)
                        {
                           addr00ff:
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(!_loc12_)
                           {
                              addr010d:
                              if(param1.gender)
                              {
                                 if(_loc11_ || Boolean(_loc3_))
                                 {
                                    addr011f:
                                    §§push("male");
                                    if(_loc11_ || Boolean(_loc3_))
                                    {
                                    }
                                    addr0142:
                                    _loc6_ = §§pop();
                                    if(_loc12_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr014b:
                                 _loc2_.push(new CharacteristicsEntryVo(_loc3_.config.localeid,_loc3_.config.value * _loc3_.stacks,_loc6_));
                                 continue;
                              }
                              §§push("female");
                              §§goto(addr0142);
                           }
                           §§goto(addr011f);
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr010d);
                  }
                  §§goto(addr014b);
               }
               §§goto(addr00ff);
            }
            §§goto(addr011f);
         }
         return _loc2_;
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            if(!(_loc2_ && Boolean(this)))
            {
               this._playfieldObjProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
               if(_loc1_ || Boolean(this))
               {
                  addr0065:
                  this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0085:
                     this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return;
            }
            §§goto(addr0085);
         }
         §§goto(addr0065);
      }
      
      public function getSchoolBookVo(param1:BillboardObject) : SchoolBookVo
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc3_:ProfessionalDTO = null;
         var _loc4_:Vector.<EducationAttributeVo> = null;
         var _loc5_:ProfessionalAttributeDTO = null;
         var _loc6_:Number = NaN;
         var _loc7_:TimerProxy = null;
         var _loc8_:TimerBarComponentVo = null;
         var _loc9_:EducationPhaseDTO = null;
         var _loc10_:* = NaN;
         var _loc11_:ConfigEducationStepDTO = null;
         var _loc12_:ConfigEducationStepDTO = null;
         var _loc13_:PlayfieldObjectsProxy = null;
         var _loc14_:String = null;
         var _loc15_:InfrastructureBuildingFieldObject = null;
         var _loc2_:SchoolBookVo = new SchoolBookVo();
         if(!_loc18_)
         {
            if(param1 is AcademyFieldObject)
            {
               if(!_loc18_)
               {
                  this._academyFieldObject = param1 as AcademyFieldObject;
               }
               addr0084:
               _loc3_ = this._academyFieldObject.billboardObjectVo.buildingDTO.professionals[0];
               if(_loc19_ || Boolean(_loc3_))
               {
                  _loc2_.student = this.getProfessionalSlotVo(_loc3_);
                  if(_loc19_)
                  {
                     _loc2_.assignedProfessional = _loc3_;
                     if(!_loc18_)
                     {
                        addr00c3:
                        _loc2_.skillPointsLeft = _loc3_.unspentSkillPoints;
                     }
                  }
                  _loc4_ = new Vector.<EducationAttributeVo>(0);
                  for each(_loc5_ in _loc3_.attributes)
                  {
                     if(_loc19_ || Boolean(param1))
                     {
                        _loc4_.push(new EducationAttributeVo(_loc5_));
                     }
                  }
                  if(!(_loc18_ && Boolean(_loc2_)))
                  {
                     _loc2_.attributes = _loc4_;
                     if(!(_loc18_ && Boolean(_loc3_)))
                     {
                        _loc6_ = Number(this._configProxy.config.balanceParameters[ServerBalanceParameterConstants.EDUCATION_EXTENSION_TIME].value);
                     }
                  }
                  _loc7_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  _loc8_ = new TimerBarComponentVo();
                  _loc9_ = this._academyFieldObject.academyFieldObjectVo.educationPhase;
                  if(!(_loc18_ && Boolean(param1)))
                  {
                     _loc8_.currentTime = _loc7_.currentTimeStamp;
                     if(_loc19_)
                     {
                        addr01a8:
                        §§push(_loc8_);
                        if(_loc19_)
                        {
                           §§push(_loc9_.behaviourEndTime);
                           if(!(_loc18_ && Boolean(_loc2_)))
                           {
                              §§push(0);
                              if(!(_loc18_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc19_)
                                 {
                                    var _temp_9:* = §§pop();
                                    §§push(_temp_9);
                                    §§push(_temp_9);
                                    if(!_loc18_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc19_ || Boolean(_loc3_))
                                          {
                                             §§pop();
                                             if(_loc19_ || Boolean(param1))
                                             {
                                                addr0202:
                                                §§push(_loc9_.behaviourEndTime);
                                                if(_loc19_)
                                                {
                                                   addr022d:
                                                   addr020f:
                                                   §§push(§§pop() == -1);
                                                   if(!_loc18_)
                                                   {
                                                      addr0216:
                                                      var _temp_12:* = §§pop();
                                                      addr0217:
                                                      §§push(_temp_12);
                                                      if(!_temp_12)
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            addr0221:
                                                            §§pop();
                                                            addr0227:
                                                            addr0222:
                                                            §§push(_loc9_.behaviourEndTime <= _loc7_.currentTimeStamp);
                                                         }
                                                      }
                                                   }
                                                   §§pop().waitingForStart = §§pop();
                                                   if(_loc19_)
                                                   {
                                                      §§push(this._academyFieldObject.billboardObjectVo.buildingDTO.config.educationBasicTime);
                                                      if(!_loc18_)
                                                      {
                                                         var _temp_13:* = §§pop();
                                                         §§push(_temp_13);
                                                         §§push(_temp_13);
                                                         if(!_loc18_)
                                                         {
                                                            _loc10_ = §§pop();
                                                            if(_loc19_ || Boolean(param1))
                                                            {
                                                               addr0278:
                                                               §§push(_loc6_);
                                                               if(_loc19_ || Boolean(param1))
                                                               {
                                                                  §§push(§§pop() * _loc9_.educationStep);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  addr027f:
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            _loc10_ = §§pop();
                                                            if(_loc19_ || Boolean(_loc2_))
                                                            {
                                                               _loc8_.cycleLength = _loc10_;
                                                               if(_loc19_)
                                                               {
                                                                  addr029d:
                                                                  §§push(_loc8_);
                                                                  §§push(_loc9_.behaviourEndTime);
                                                                  if(!(_loc18_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop() - _loc10_);
                                                                  }
                                                                  §§pop().startTime = §§pop();
                                                                  if(!(_loc18_ && Boolean(param1)))
                                                                  {
                                                                     addr02d4:
                                                                     _loc8_.targetTime = _loc9_.behaviourEndTime;
                                                                     if(!(_loc18_ && Boolean(param1)))
                                                                     {
                                                                        _loc2_.progressInfo = _loc8_;
                                                                     }
                                                                  }
                                                                  addr02f2:
                                                                  for each(_loc12_ in this._academyFieldObject.billboardObjectVo.buildingDTO.config.educationSteps)
                                                                  {
                                                                     if(_loc12_.step == this._academyFieldObject.academyFieldObjectVo.educationPhase.educationStep)
                                                                     {
                                                                        _loc11_ = _loc12_;
                                                                        break;
                                                                     }
                                                                  }
                                                                  if(!(_loc18_ && Boolean(param1)))
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc2_.skillPointsToAdd = _loc11_.minSkillPointAdded;
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              §§push(LocaUtils);
                                                                              §§push(_loc6_);
                                                                              if(_loc19_ || Boolean(param1))
                                                                              {
                                                                                 §§push(§§pop() / 1000);
                                                                              }
                                                                              §§pop().duration = §§pop().getDuration(§§pop());
                                                                              if(!(_loc18_ && Boolean(this)))
                                                                              {
                                                                                 _loc2_.pointCost = Math.abs(_loc11_.resourceCost);
                                                                                 if(_loc19_ || Boolean(this))
                                                                                 {
                                                                                    _loc2_.dextroCost = Math.abs(_loc11_.goodCost);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       _loc2_.dextroAvailable = _loc2_.dextroCost <= this._goodStockProxy.dextroStock;
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          _loc2_.educationPointsAvailable = _loc2_.pointCost <= this._resourceProxy.educationPoints;
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§goto(addr040a);
                                                                                          }
                                                                                          §§goto(addr045a);
                                                                                       }
                                                                                       §§goto(addr040a);
                                                                                    }
                                                                                    §§goto(addr04b8);
                                                                                 }
                                                                                 §§goto(addr0430);
                                                                              }
                                                                              §§goto(addr04a5);
                                                                           }
                                                                        }
                                                                        §§goto(addr045a);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc2_.skillPointsToAdd = 0;
                                                                        if(_loc19_)
                                                                        {
                                                                           addr040a:
                                                                           _loc2_.duration = LocaUtils.getDuration(0);
                                                                           if(_loc19_ || Boolean(_loc2_))
                                                                           {
                                                                              addr0424:
                                                                              _loc2_.pointCost = 0;
                                                                              if(_loc19_)
                                                                              {
                                                                                 addr0430:
                                                                                 _loc2_.dextroCost = 0;
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§goto(addr043c);
                                                                                 }
                                                                                 §§goto(addr045a);
                                                                              }
                                                                              §§goto(addr0447);
                                                                           }
                                                                           addr043c:
                                                                           _loc2_.dextroAvailable = true;
                                                                           if(_loc19_)
                                                                           {
                                                                              addr0447:
                                                                              _loc2_.educationPointsAvailable = true;
                                                                              if(!(_loc18_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr045a:
                                                                                 §§push(_loc9_.behaviourEndTime);
                                                                                 if(_loc19_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(§§pop() <= _loc7_.currentTimeStamp);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       var _temp_28:* = §§pop();
                                                                                       §§push(_temp_28);
                                                                                       if(_temp_28)
                                                                                       {
                                                                                          if(!(_loc18_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr049b:
                                                                                                addr0498:
                                                                                                if(_loc9_.behaviourEndTime > 0)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr04a5:
                                                                                                      _loc2_.educationIsFinished = true;
                                                                                                      if(!(_loc18_ && Boolean(param1)))
                                                                                                      {
                                                                                                         addr04b8:
                                                                                                         _loc13_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            _loc2_.departmentData = new SchoolBookDepartmentVo();
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(_loc2_.departmentData);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§pop().infrastructureBuildings = _loc13_.infrastructureBuildingList;
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     addr04fb:
                                                                                                                     _loc2_.departmentData.departmentThresholdBarVo = this.getDepartmentThresholdBarVo(_loc13_.infrastructureBuildingList);
                                                                                                                     addr04f7:
                                                                                                                     if(!(_loc18_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        var _loc16_:int = 0;
                                                                                                                        if(!(_loc18_ && Boolean(param1)))
                                                                                                                        {
                                                                                                                           for each(_loc15_ in _loc2_.departmentData.infrastructureBuildings)
                                                                                                                           {
                                                                                                                              _loc14_ = _loc15_.emergencyFieldObjectVo.department[0];
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 _loc2_.departmentData.departmentGfxIds.push(EmergencyLayerProxy.getGfxIdByDepartment(_loc14_));
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0583);
                                                                                                               }
                                                                                                               §§goto(addr04fb);
                                                                                                            }
                                                                                                            §§goto(addr04f7);
                                                                                                         }
                                                                                                         addr0583:
                                                                                                         _loc2_.emergencyFeatureDisabled = this._playfieldObjProxy.infrastructureBuildingList.length == 0;
                                                                                                         §§goto(addr0594);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0594);
                                                                                                }
                                                                                                §§goto(addr0583);
                                                                                             }
                                                                                             §§goto(addr04b8);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr049b);
                                                                                 }
                                                                                 §§goto(addr0498);
                                                                              }
                                                                              §§goto(addr04a5);
                                                                           }
                                                                           §§goto(addr0594);
                                                                        }
                                                                     }
                                                                     §§goto(addr0424);
                                                                  }
                                                                  §§goto(addr045a);
                                                               }
                                                               §§goto(addr02d4);
                                                            }
                                                            §§goto(addr02f2);
                                                         }
                                                         §§goto(addr0278);
                                                      }
                                                      §§goto(addr027f);
                                                   }
                                                   §§goto(addr029d);
                                                }
                                                §§goto(addr0227);
                                             }
                                             §§goto(addr0222);
                                          }
                                          §§goto(addr022d);
                                       }
                                       §§goto(addr0216);
                                    }
                                    §§goto(addr0217);
                                 }
                                 §§goto(addr0221);
                              }
                              §§goto(addr020f);
                           }
                           §§goto(addr0227);
                        }
                        §§goto(addr0202);
                     }
                     §§goto(addr02d4);
                  }
                  §§goto(addr01a8);
               }
               §§goto(addr00c3);
            }
            addr0594:
            return _loc2_;
         }
         §§goto(addr0084);
      }
      
      private function getDepartmentThresholdBarVo(param1:Vector.<InfrastructureBuildingFieldObject>) : Vector.<DepartmentThresholdBarVo>
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc5_:InfrastructureBuildingFieldObject = null;
         var _loc6_:DepartmentThresholdBarVo = null;
         var _loc7_:DepartmentDetailViewVo = null;
         var _loc8_:Vector.<ConfigProfessionalAttributeThresholdDTO> = null;
         var _loc9_:* = NaN;
         var _loc10_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc11_:* = NaN;
         var _loc12_:ProfessionalDTO = null;
         var _loc2_:Vector.<DepartmentThresholdBarVo> = new Vector.<DepartmentThresholdBarVo>(0);
         var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         loop0:
         for each(_loc5_ in param1)
         {
            _loc6_ = new DepartmentThresholdBarVo();
            _loc7_ = _loc3_.getDepartmentDetailViewVo(_loc5_.emergencyFieldObjectVo.department[0]);
            _loc8_ = this.getThresholdDTOsBySecurityReference(_loc7_);
            if(_loc8_ == null)
            {
               if(!(_loc18_ || Boolean(_loc3_)))
               {
                  continue;
               }
               _loc2_.push(_loc6_);
               if(_loc18_)
               {
                  addr00e0:
                  §§push(0);
                  if(!(_loc17_ && Boolean(param1)))
                  {
                     §§push(§§pop());
                     if(_loc18_ || Boolean(_loc2_))
                     {
                        _loc9_ = §§pop();
                        if(_loc18_)
                        {
                           addr0107:
                           §§push(0);
                           if(!_loc17_)
                           {
                              var _loc15_:* = §§pop();
                              if(_loc18_ || Boolean(this))
                              {
                                 var _loc16_:* = _loc8_;
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc16_,_loc15_));
                                    if(_loc17_ && Boolean(_loc2_))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       _loc10_ = §§nextvalue(_loc15_,_loc16_);
                                       if(_loc10_)
                                       {
                                          if(!(_loc17_ && Boolean(_loc3_)))
                                          {
                                             _loc6_.thresholds.push(_loc10_.copy);
                                             if(!_loc17_)
                                             {
                                                §§push(_loc9_);
                                                if(_loc18_ || Boolean(_loc2_))
                                                {
                                                   if(§§pop() > _loc10_.threshold)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc17_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc10_.threshold);
                                                }
                                                _loc9_ = §§pop();
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc18_)
                                    {
                                       if(!(_loc17_ && Boolean(_loc3_)))
                                       {
                                          addr01b9:
                                          if(!(_loc17_ && Boolean(_loc2_)))
                                          {
                                             §§push(0);
                                             if(_loc18_ || Boolean(_loc2_))
                                             {
                                                addr01da:
                                                _loc11_ = §§pop();
                                                addr01d9:
                                                if(_loc18_)
                                                {
                                                   addr01e4:
                                                   _loc15_ = 0;
                                                   if(_loc18_)
                                                   {
                                                      _loc16_ = _loc5_.billboardObjectVo.buildingDTO.professionals;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc16_,_loc15_));
                                                         break loop1;
                                                      }
                                                   }
                                                   addr024f:
                                                   if(_loc18_ || Boolean(_loc3_))
                                                   {
                                                      addr025f:
                                                      _loc6_.currentValue = _loc11_;
                                                      if(!_loc17_)
                                                      {
                                                         addr026c:
                                                         _loc6_.maxRange = _loc9_;
                                                         if(!(_loc17_ && Boolean(_loc3_)))
                                                         {
                                                            addr028f:
                                                            _loc6_.showBubbles = true;
                                                            if(!_loc18_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            _loc6_.showPreview = true;
                                                            if(_loc17_ && Boolean(param1))
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      _loc2_.push(_loc6_);
                                                      continue loop0;
                                                   }
                                                   §§goto(addr026c);
                                                }
                                                §§goto(addr028f);
                                             }
                                             §§goto(addr01e4);
                                          }
                                          §§goto(addr025f);
                                       }
                                    }
                                    §§goto(addr024f);
                                 }
                                 while(§§pop())
                                 {
                                    _loc12_ = §§nextvalue(_loc15_,_loc16_);
                                    if(!(_loc17_ && Boolean(_loc3_)))
                                    {
                                       §§push(_loc11_);
                                       if(_loc18_ || Boolean(this))
                                       {
                                          §§push(§§pop() + _loc4_.getAttributePointsByType(_loc12_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION));
                                          if(_loc18_ || Boolean(_loc3_))
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                       _loc11_ = §§pop();
                                    }
                                    §§push(§§hasnext(_loc16_,_loc15_));
                                 }
                                 §§goto(addr024d);
                              }
                              §§goto(addr01b9);
                           }
                           §§goto(addr01d9);
                        }
                        §§goto(addr025f);
                     }
                     §§goto(addr01da);
                  }
                  §§goto(addr01e4);
               }
               §§goto(addr0107);
            }
            §§goto(addr00e0);
         }
         return _loc2_;
      }
      
      private function getThresholdDTOsBySecurityReference(param1:DepartmentDetailViewVo) : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc2_:Vector.<ConfigProfessionalAttributeThresholdDTO> = param1.thresholds[ServerProfessionalConstants.ATTRIBUTE_PERCEPTION];
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         for each(_loc4_ in _loc2_)
         {
            if(_loc8_)
            {
               if(param1.configSecurityGrades[0].id == _loc4_.optionalConfigId)
               {
                  if(_loc8_)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      private function getProfessionalSlotVo(param1:ProfessionalDTO) : ProfessionalSlotVo
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:Object = new Object();
         var _loc3_:* = "fire";
         if(_loc9_ || Boolean(this))
         {
            if(param1.configSpecialisation)
            {
               addr00aa:
               §§push(param1.configSpecialisation.department);
               if(!_loc10_)
               {
                  var _loc8_:* = §§pop();
                  if(_loc9_ || Boolean(this))
                  {
                     §§push(ServerTagConstants.FIRE_DEPARTMENT);
                     if(_loc9_)
                     {
                        §§push(_loc8_);
                        if(_loc9_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc9_ || Boolean(this))
                              {
                                 §§push(0);
                                 if(_loc10_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr014c:
                                 §§push(2);
                                 if(_loc9_ || Boolean(this))
                                 {
                                 }
                              }
                              addr016c:
                              if(_loc9_ || Boolean(this))
                              {
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push("fire");
                                       if(_loc9_ || Boolean(_loc2_))
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc9_ || Boolean(_loc3_))
                                          {
                                          }
                                          addr0193:
                                          _loc2_.profDep = param1.configSpecialisation.department;
                                          if(_loc9_ || Boolean(this))
                                          {
                                             _loc2_.profSpec = param1.configSpecialisation.rank;
                                             if(_loc9_ || Boolean(this))
                                             {
                                                _loc2_.profSpecGfx = param1.configSpecialisation.gfxId;
                                                if(_loc9_)
                                                {
                                                   addr01e7:
                                                   _loc2_.profSpecLoca = param1.configSpecialisation.locaId;
                                                   if(!_loc10_)
                                                   {
                                                      addr01f9:
                                                      _loc2_.traits = buildTraits(param1);
                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                      {
                                                         addr0216:
                                                         addr021a:
                                                         if(!param1.gender)
                                                         {
                                                            §§push("female");
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   §§push("male");
                                                   if(_loc9_)
                                                   {
                                                   }
                                                   break;
                                                }
                                             }
                                             §§goto(addr01f9);
                                          }
                                          §§goto(addr01e7);
                                       }
                                       else
                                       {
                                          addr0092:
                                          _loc3_ = §§pop();
                                          if(!(_loc10_ && Boolean(this)))
                                          {
                                             §§goto(addr0193);
                                          }
                                       }
                                       §§goto(addr0216);
                                    case 1:
                                       §§push("police");
                                       if(_loc9_ || Boolean(_loc3_))
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc9_ || Boolean(_loc3_))
                                          {
                                             §§goto(addr0193);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0092);
                                       }
                                       §§goto(addr0216);
                                    case 2:
                                       §§push("hospital");
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0092);
                                       break;
                                    default:
                                       §§goto(addr0193);
                                 }
                                 addr022f:
                                 var _loc4_:String = §§pop();
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    _loc2_.lib = "gui_professionals_" + _loc4_;
                                    if(_loc9_)
                                    {
                                       addr0250:
                                       _loc2_.img = "small_" + param1.gfxId;
                                    }
                                    §§push(ResourceManager.getInstance());
                                    §§push("rcl.professions.nameconvention");
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       §§push("");
                                       if(_loc9_)
                                       {
                                          addr027d:
                                          §§push(§§pop() + §§pop());
                                          §§push("rcl.professions.nameconvention.fistnamelastname");
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + "");
                                          }
                                       }
                                       §§push(§§pop().getString(§§pop(),§§pop()));
                                       if(!(_loc10_ && Boolean(param1)))
                                       {
                                          §§push(§§pop());
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(ResourceManager.getInstance());
                                       §§push("rcl.professions.firstnames.");
                                       if(_loc9_ || Boolean(this))
                                       {
                                          §§push(§§pop() + _loc4_);
                                       }
                                       §§push("rcl.professions.firstnames.");
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() + _loc4_);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + ".");
                                             if(!(_loc10_ && Boolean(_loc3_)))
                                             {
                                                addr02dc:
                                                §§push(§§pop() + param1.name);
                                             }
                                          }
                                          §§push(§§pop().getString(§§pop(),§§pop()));
                                          if(!(_loc10_ && Boolean(_loc3_)))
                                          {
                                             §§push(§§pop());
                                          }
                                          var _loc6_:* = §§pop();
                                          §§push(ResourceManager.getInstance());
                                          §§push("rcl.professions.surnames.");
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() + _loc4_);
                                          }
                                          §§push("rcl.professions.surnames.");
                                          if(!(_loc10_ && Boolean(_loc3_)))
                                          {
                                             §§push(§§pop() + _loc4_);
                                             if(!(_loc10_ && Boolean(this)))
                                             {
                                                addr032a:
                                                §§push(§§pop() + ".");
                                                if(_loc9_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop() + param1.surname);
                                                }
                                             }
                                             §§push(§§pop().getString(§§pop(),§§pop()));
                                             if(_loc9_ || Boolean(this))
                                             {
                                                §§push(§§pop());
                                             }
                                             var _loc7_:* = §§pop();
                                             if(!_loc10_)
                                             {
                                                _loc2_.operationsLeft = param1.lifetime;
                                                if(!(_loc10_ && Boolean(param1)))
                                                {
                                                   _loc2_.name = StringUtil.substitute(_loc5_,_loc6_,_loc7_);
                                                   if(_loc9_ || Boolean(this))
                                                   {
                                                      addr03a0:
                                                      _loc2_.id = param1.id;
                                                   }
                                                   §§goto(addr03a8);
                                                }
                                                §§goto(addr03a0);
                                             }
                                             addr03a8:
                                             return new ProfessionalSlotVo(_loc2_,false);
                                          }
                                          §§goto(addr032a);
                                       }
                                       §§goto(addr02dc);
                                    }
                                    §§goto(addr027d);
                                 }
                                 §§goto(addr0250);
                              }
                              §§goto(addr021a);
                           }
                           else
                           {
                              §§push(ServerTagConstants.POLICE_DEPARTMENT);
                              if(_loc9_ || Boolean(param1))
                              {
                                 §§push(_loc8_);
                                 if(!(_loc10_ && Boolean(this)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc9_ || Boolean(param1))
                                       {
                                          §§push(1);
                                          if(_loc10_ && Boolean(_loc2_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr014c);
                                       }
                                    }
                                    else
                                    {
                                       addr0148:
                                       addr0146:
                                       if(ServerTagConstants.HOSPITAL === _loc8_)
                                       {
                                          §§goto(addr014c);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr016c);
                                 }
                                 §§goto(addr0148);
                              }
                              §§goto(addr0146);
                           }
                        }
                        §§goto(addr0148);
                     }
                     §§goto(addr0146);
                  }
                  §§goto(addr014c);
               }
               §§goto(addr022f);
            }
            §§goto(addr01f9);
         }
         §§goto(addr00aa);
      }
   }
}

