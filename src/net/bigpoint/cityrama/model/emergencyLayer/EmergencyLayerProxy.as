package net.bigpoint.cityrama.model.emergencyLayer
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalAttributeVO;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProgressThresholdVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.SlotProfessionalVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EmergencyLayerProxy";
      
      public static const SHOW_ZONE_LAYER:String = "SHOW_ZONE_LAYER";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "EmergencyLayerProxy";
         if(_loc2_)
         {
            addr0022:
            SHOW_ZONE_LAYER = "SHOW_ZONE_LAYER";
         }
         return;
      }
      §§goto(addr0022);
      
      private var _timerProxy:TimerProxy;
      
      private var _storageProxy:LocalStorageProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      private var _emergencyProxy:EmergencyInfoProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function EmergencyLayerProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super(param1,param2);
         }
      }
      
      public static function getGfxIdByDepartment(param1:String) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(ServerTagConstants.FIRE_DEPARTMENT);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!(_loc3_ && EmergencyLayerProxy))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && EmergencyLayerProxy))
                     {
                        §§push(0);
                        if(_loc4_ || EmergencyLayerProxy)
                        {
                        }
                     }
                     else
                     {
                        addr012b:
                        §§push(2);
                        if(_loc4_ || EmergencyLayerProxy)
                        {
                        }
                     }
                     §§goto(addr014b);
                  }
                  else
                  {
                     §§push(ServerTagConstants.POLICE_DEPARTMENT);
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        §§push(_loc2_);
                        if(_loc4_ || EmergencyLayerProxy)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && EmergencyLayerProxy))
                              {
                                 addr0115:
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr012b);
                              }
                              §§goto(addr014b);
                           }
                           else
                           {
                              §§goto(addr0127);
                           }
                        }
                        addr0127:
                     }
                     §§goto(addr0126);
                  }
               }
               §§goto(addr0127);
            }
            addr0126:
            if(ServerTagConstants.HOSPITAL === _loc2_)
            {
               §§goto(addr012b);
            }
            else
            {
               §§push(3);
            }
            addr014b:
            loop0:
            while(true)
            {
               switch(§§pop())
               {
                  case 0:
                     §§push(1100001);
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                     break loop0;
                  case 1:
                     §§push(1110001);
                     if(!(_loc3_ && EmergencyLayerProxy))
                     {
                        break loop0;
                     }
                     break;
                  case 2:
                     §§push(1120001);
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                     continue;
                  default:
                     §§push(1100001);
                     if(!(_loc3_ && EmergencyLayerProxy))
                     {
                        break;
                     }
                     continue;
               }
               return §§pop();
            }
            return §§pop();
         }
         §§goto(addr0115);
      }
      
      private static function buildAttributes(param1:Vector.<ProfessionalAttributeDTO>) : Vector.<ProfessionalAttributeVO>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:ProfessionalAttributeDTO = null;
         var _loc4_:ProfessionalAttributeVO = null;
         var _loc2_:Vector.<ProfessionalAttributeVO> = new Vector.<ProfessionalAttributeVO>(0);
         for each(_loc3_ in param1)
         {
            _loc4_ = new ProfessionalAttributeVO();
            _loc4_.dto = _loc3_;
            if(_loc7_)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public static function getPLIVOfromPDTO(param1:ProfessionalDTO) : ProfessionalListInfoVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ProfessionalListInfoVo = null;
         if(!_loc4_)
         {
            if(param1)
            {
               addr002f:
               _loc2_ = new ProfessionalListInfoVo();
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.profId = param1.id;
                  if(_loc3_)
                  {
                     return _loc2_;
                  }
               }
            }
            return null;
         }
         §§goto(addr002f);
      }
      
      private static function getLocalizedNameOfProfessional(param1:ProfessionalDTO) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         §§push(ResourceManager.getInstance());
         §§push("rcl.professions.nameconvention");
         if(!(_loc6_ && _loc3_))
         {
            §§push("");
            if(!_loc6_)
            {
               addr0036:
               §§push(§§pop() + §§pop());
               §§push("rcl.professions.nameconvention.fistnamelastname");
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() + "");
               }
            }
            §§push(§§pop().getString(§§pop(),§§pop()));
            if(!(_loc6_ && EmergencyLayerProxy))
            {
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            if(!(_loc6_ && Boolean(param1)))
            {
               if(param1.gender)
               {
                  addr0074:
                  §§push("male");
                  if(_loc6_ && EmergencyLayerProxy)
                  {
                  }
               }
               else
               {
                  §§push("female");
               }
               var _loc3_:String = §§pop();
               §§push(ResourceManager.getInstance());
               §§push("rcl.professions.firstnames.");
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(§§pop() + _loc3_);
               }
               §§push("rcl.professions.firstnames.");
               if(_loc7_ || Boolean(_loc3_))
               {
                  §§push(§§pop() + _loc3_);
                  if(_loc7_ || EmergencyLayerProxy)
                  {
                     §§push(§§pop() + ".");
                     if(_loc7_)
                     {
                        addr00de:
                        §§push(§§pop() + param1.name);
                     }
                     §§push(§§pop().getString(§§pop(),§§pop()));
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                     }
                     var _loc4_:* = §§pop();
                     §§push(ResourceManager.getInstance());
                     §§push("rcl.professions.surnames.");
                     if(!_loc6_)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     §§push("rcl.professions.surnames.");
                     if(_loc7_)
                     {
                        §§push(§§pop() + _loc3_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + ".");
                           if(!(_loc6_ && EmergencyLayerProxy))
                           {
                              §§push(§§pop() + param1.surname);
                           }
                        }
                     }
                     §§push(§§pop().getString(§§pop(),§§pop()));
                     if(_loc7_)
                     {
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     return StringUtil.substitute(_loc2_,_loc4_,_loc5_);
                  }
               }
               §§goto(addr00de);
            }
            §§goto(addr0074);
         }
         §§goto(addr0036);
      }
      
      private static function sortSlots(param1:ProfessionalSlotVo, param2:ProfessionalSlotVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || EmergencyLayerProxy)
         {
            §§push(param1.slotNumber);
            if(_loc3_ || EmergencyLayerProxy)
            {
               §§push(param2.slotNumber);
               if(_loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && Boolean(param2)))
                     {
                        addr0058:
                        §§push(1);
                        if(_loc3_ || EmergencyLayerProxy)
                        {
                           return §§pop();
                        }
                        §§goto(addr00a3);
                     }
                  }
                  else
                  {
                     addr008b:
                     addr0087:
                     if(param1.slotNumber < param2.slotNumber)
                     {
                        if(_loc3_)
                        {
                           §§push(-1);
                           if(_loc3_ || EmergencyLayerProxy)
                           {
                              addr00a3:
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr00a4:
                           return 0;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr008b);
            }
            §§goto(addr0087);
         }
         §§goto(addr0058);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            facade.registerProxy(new EmergencyInfoProxy(EmergencyInfoProxy.NAME));
            if(!_loc1_)
            {
               this._emergencyProxy = facade.retrieveProxy(EmergencyInfoProxy.NAME) as EmergencyInfoProxy;
               if(!_loc1_)
               {
                  addr0044:
                  this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr006d:
                     this._storageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
                     if(!_loc1_)
                     {
                        §§goto(addr0085);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00cd);
               }
               addr0085:
               this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
               if(_loc2_ || Boolean(this))
               {
                  addr00af:
                  this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  if(_loc2_ || _loc1_)
                  {
                     addr00cd:
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return;
            }
            §§goto(addr006d);
         }
         §§goto(addr0044);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            facade.removeProxy(EmergencyInfoProxy.NAME);
         }
      }
      
      public function getEmergencyZoneLayerVo(param1:BillboardObjectVo) : EmergencyZoneLayerVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:EmergencyInfoVo = null;
         var _loc2_:Object = new Object();
         if(_loc4_)
         {
            if(param1)
            {
               if(!_loc5_)
               {
                  addr0031:
                  if(param1.hasEmergency())
                  {
                     addr003a:
                     _loc3_ = this._emergencyProxy.getEmergencyInfo(param1);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.emergencies.selection"),String("rcl.emergencies.selection." + _loc3_.emergencyDTO.config.locaId));
                        if(!_loc5_)
                        {
                           _loc2_.reqPolice = _loc3_.requiredPoliceGrade;
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              _loc2_.reqFire = _loc3_.requiredFireGrade;
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 _loc2_.reqHospital = _loc3_.requiredHospitalGrade;
                                 if(!_loc5_)
                                 {
                                    _loc2_.police = _loc3_.currentPoliceGrade;
                                    if(!_loc5_)
                                    {
                                       §§goto(addr00e0);
                                    }
                                    §§goto(addr0171);
                                 }
                                 §§goto(addr017f);
                              }
                              addr00e0:
                              _loc2_.fire = _loc3_.currentFireGrade;
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 addr00f7:
                                 _loc2_.hospital = _loc3_.currentHospitalGrade;
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr0171);
                              }
                              addr010e:
                              _loc2_.max = _loc3_.maxSuccessPercent;
                              if(_loc4_)
                              {
                                 _loc2_.buildingLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.configPlayfieldItemVo);
                                 if(_loc4_)
                                 {
                                    _loc2_.buildingImage = "FieldItem_" + param1.configPlayfieldItemVo.gfxId + "_small";
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr0155:
                                       _loc2_.emergencyLib = _loc3_.emergencyDTO.config.gfxId.toString() + "_layer_renderings";
                                       if(!_loc5_)
                                       {
                                          addr0171:
                                          _loc2_.emergencyImage = "emergency_big";
                                          if(!_loc5_)
                                          {
                                             _loc2_.emergencySWF = _loc3_.emergencyDTO.config.gfxId.toString();
                                             addr017f:
                                             if(_loc4_)
                                             {
                                                §§goto(addr01a4);
                                             }
                                             §§goto(addr01be);
                                          }
                                          §§goto(addr01a4);
                                       }
                                       §§goto(addr017f);
                                    }
                                    addr01a4:
                                    _loc2_.timer = this.getEmergencyTimerVo(_loc3_);
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       addr01be:
                                       _loc2_.show = _loc3_.showZoneLayer;
                                    }
                                    §§goto(addr01c7);
                                 }
                                 §§goto(addr0155);
                              }
                              §§goto(addr01c7);
                           }
                           §§goto(addr00f7);
                        }
                        §§goto(addr017f);
                     }
                     §§goto(addr01be);
                  }
                  §§goto(addr01c7);
               }
               §§goto(addr003a);
            }
            addr01c7:
            return new EmergencyZoneLayerVo(_loc2_);
         }
         §§goto(addr0031);
      }
      
      public function getEmergencyAssignVo(param1:BillboardObjectVo, param2:Boolean = false) : EmergencyAssignVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1,param2);
         var _loc4_:Object = new Object();
         _loc4_.flavour = ResourceManager.getInstance().getString(String("rcl.emergencies.selection"),String("rcl.emergencies.selection." + _loc3_.emergencyDTO.config.locaId));
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loc4_.max = _loc3_.maxSuccessPercent;
            if(!(_loc6_ && Boolean(this)))
            {
               addr007b:
               _loc4_.poss = _loc3_.currentSuccessPercent;
               if(_loc5_ || Boolean(this))
               {
                  _loc4_.renderLib = _loc3_.emergencyDTO.config.gfxId + "_layer_renderings";
                  if(_loc5_)
                  {
                     addr00b9:
                     _loc4_.renderImg = "emergency_small";
                     if(!_loc6_)
                     {
                        _loc4_.renderSwf = _loc3_.emergencyDTO.config.gfxId.toString();
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           addr00ea:
                           _loc4_.rewardGfx = _loc3_.currentReward.gfxId;
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              addr0105:
                              _loc4_.rewardLoca = _loc3_.currentReward.localeId;
                              if(_loc5_ || Boolean(param1))
                              {
                                 _loc4_.rewardAmount = _loc3_.currentRewardAmount;
                                 if(!_loc6_)
                                 {
                                    this.addThresholdVos(_loc4_,_loc3_);
                                    §§goto(addr0130);
                                 }
                                 §§goto(addr0166);
                              }
                           }
                           §§goto(addr0153);
                        }
                        §§goto(addr0105);
                     }
                     §§goto(addr0166);
                  }
                  addr0130:
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     addr0153:
                     _loc4_.timer = this.getEmergencyTimerVo(_loc3_);
                     if(_loc5_)
                     {
                        addr0166:
                        _loc4_.slots = this.getSlots(_loc3_);
                     }
                  }
                  return new EmergencyAssignVo(_loc4_);
               }
               §§goto(addr00ea);
            }
            §§goto(addr00b9);
         }
         §§goto(addr007b);
      }
      
      private function addThresholdVos(param1:Object, param2:EmergencyInfoVo) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc6_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:ProgressThresholdVo = new ProgressThresholdVo();
         var _loc4_:Vector.<Number> = new Vector.<Number>();
         for each(_loc5_ in param2.rewardAmountThresholds)
         {
            if(!_loc10_)
            {
               _loc4_.push(_loc5_.threshold);
            }
         }
         if(!(_loc10_ && Boolean(param1)))
         {
            _loc3_.thresholds = _loc4_;
            if(!(_loc10_ && Boolean(this)))
            {
               _loc3_.progress = param2.efficiencyPercent;
               if(!(_loc10_ && Boolean(param1)))
               {
                  _loc3_.maxValue = param2.efficiencyMaxPoints;
                  if(_loc9_ || Boolean(param2))
                  {
                     addr00ca:
                     param1.effVo = _loc3_;
                  }
                  addr00d0:
                  _loc3_ = new ProgressThresholdVo();
                  _loc4_ = new Vector.<Number>();
                  if(!(_loc10_ && Boolean(this)))
                  {
                     var _loc7_:int = 0;
                     if(_loc9_)
                     {
                        for each(_loc6_ in param2.rewardTypeThresholds)
                        {
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              _loc4_.push(_loc6_.threshold);
                           }
                        }
                     }
                     if(!_loc10_)
                     {
                        _loc3_.thresholds = _loc4_;
                        if(!(_loc10_ && Boolean(param2)))
                        {
                           _loc3_.progress = param2.luckPercent;
                           if(!_loc10_)
                           {
                              _loc3_.maxValue = param2.luckMaxPoints;
                              if(!_loc10_)
                              {
                                 addr017f:
                                 param1.luckVo = _loc3_;
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr017f);
               }
               §§goto(addr00ca);
            }
            §§goto(addr00d0);
         }
         §§goto(addr00ca);
      }
      
      public function getSlotProfessionalIdsForServer(param1:BillboardObjectVo) : Vector.<Object>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:Object = null;
         var _loc5_:SlotProfessionalVo = null;
         var _loc2_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1);
         var _loc3_:Vector.<Object> = new Vector.<Object>();
         for each(_loc5_ in _loc2_.slotVector)
         {
            if(_loc5_.professional)
            {
               _loc4_ = new Object();
               _loc4_.sid = _loc5_.slotNo;
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  _loc4_.pid = _loc5_.professional.id;
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function getActiveSlotProfessionals(param1:BillboardObjectVo) : Vector.<SlotProfessionalVo>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:SlotProfessionalVo = null;
         var _loc2_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1);
         var _loc3_:Vector.<SlotProfessionalVo> = new Vector.<SlotProfessionalVo>();
         for each(_loc4_ in _loc2_.slotVector)
         {
            if(_loc4_.professional)
            {
               if(_loc7_)
               {
                  _loc3_.push(_loc4_);
               }
            }
         }
         return _loc3_;
      }
      
      public function getEmergencyAssignListVo(param1:BillboardObjectVo, param2:int) : EmergencyAssignListVo
      {
         var _loc3_:EmergencyAssignVo = this.getEmergencyAssignVo(param1);
         return new EmergencyAssignListVo(_loc3_,this.getProfessionalListInfoVo(param1,param2),param2);
      }
      
      public function showZoneLayer(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && param1))
         {
            this._storageProxy.userdata.showEmergencyZoneLayer = param1;
         }
      }
      
      public function assignProfToSlot(param1:BillboardObjectVo, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            this._emergencyProxy.assignProfessionalToSlot(param1,param2);
         }
      }
      
      public function assignTemporaryProfToSlot(param1:BillboardObjectVo, param2:int, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param2)))
         {
            this._emergencyProxy.assignTemporaryProfessionalToSlot(param1,param2,param3);
         }
      }
      
      public function removeProfFromSlot(param1:BillboardObjectVo, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this._emergencyProxy.removeProfessionalFromSlot(param1,param2);
         }
      }
      
      public function removeTemporaryProfessionals(param1:BillboardObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._emergencyProxy.removeTemporaryProfessionals(param1);
         }
      }
      
      public function removeEmergencyInfo(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._emergencyProxy.removeEmergency(param1);
         }
      }
      
      public function getDepartmentProfessionalDetailVoById(param1:Number) : DepartmentProfessionalDetailInfoVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:DepartmentProfessionalDetailInfoVo = new DepartmentProfessionalDetailInfoVo();
         if(_loc3_)
         {
            this.professionalBuilder(_loc2_,param1);
         }
         return _loc2_;
      }
      
      public function professionalBuilder(param1:DepartmentProfessionalDetailInfoVo, param2:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:ProfessionalDTO = this._professionalProxy.getProfessionalById(param2);
         if(_loc4_)
         {
            param1.dto = _loc3_;
            if(!_loc5_)
            {
               param1.attributes = buildAttributes(_loc3_.attributes);
               if(_loc4_ || Boolean(this))
               {
                  param1.setLevelsConfig(this._configProxy.config.configProfessionalLevel);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     addr008e:
                     param1.dismissIsUnlocked = this.dismissIsUnlocked();
                     if(_loc4_)
                     {
                        addr009e:
                        param1.name = getLocalizedNameOfProfessional(_loc3_);
                     }
                     §§goto(addr00aa);
                  }
               }
               §§goto(addr009e);
            }
            addr00aa:
            return;
         }
         §§goto(addr008e);
      }
      
      private function dismissIsUnlocked() : Boolean
      {
         return this._playfieldObjectsProxy.getAcademyList().length > 0;
      }
      
      private function getProfessionalListInfoVo(param1:BillboardObjectVo, param2:int) : Vector.<ProfessionalListInfoVo>
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc5_:ConfigGoodDTO = null;
         var _loc6_:ProfessionalDTO = null;
         var _loc7_:String = null;
         var _loc8_:ProfessionalListInfoVo = null;
         var _loc3_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1);
         var _loc4_:Vector.<ProfessionalListInfoVo> = new Vector.<ProfessionalListInfoVo>();
         if(_loc12_)
         {
            if(_loc3_.possibleProfessionals.length)
            {
               addr0055:
               for each(_loc6_ in _loc3_.possibleProfessionals)
               {
                  if(_loc6_.gender)
                  {
                     if(!(_loc13_ && Boolean(this)))
                     {
                        §§push("male");
                        if(_loc12_)
                        {
                        }
                        addr0095:
                        _loc7_ = §§pop();
                     }
                     _loc8_ = new ProfessionalListInfoVo();
                     _loc8_.name = getLocalizedNameOfProfessional(_loc6_);
                     if(!_loc13_)
                     {
                        _loc8_.department = _loc6_.configSpecialisation.department;
                        if(!_loc13_)
                        {
                           _loc8_.specialisationRank = _loc6_.configSpecialisation.rank;
                           if(!(_loc13_ && Boolean(param1)))
                           {
                              _loc8_.specialisationId = _loc6_.configSpecialisation.id;
                              if(!_loc13_)
                              {
                                 _loc8_.specialisationLocaId = _loc6_.configSpecialisation.locaId;
                                 if(_loc12_)
                                 {
                                    addr010a:
                                    _loc8_.specialisationGfxId = _loc6_.configSpecialisation.gfxId;
                                    if(_loc12_ || Boolean(param1))
                                    {
                                       _loc8_.operationsLeft = _loc6_.lifetime;
                                       if(_loc12_ || Boolean(param2))
                                       {
                                          addr013d:
                                          _loc8_.profId = _loc6_.id;
                                          if(_loc12_ || Boolean(_loc3_))
                                          {
                                             _loc8_.step = 0;
                                             if(_loc12_)
                                             {
                                                addr01ae:
                                                var _loc11_:* = _loc6_.configSpecialisation.department;
                                                if(_loc12_)
                                                {
                                                   §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                   if(!_loc13_)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!_loc13_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc13_ && Boolean(param2)))
                                                            {
                                                               §§push(0);
                                                               if(_loc12_ || Boolean(param1))
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr023a:
                                                               §§push(1);
                                                               if(_loc12_ || Boolean(_loc3_))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                            if(_loc12_ || Boolean(param2))
                                                            {
                                                               addr0218:
                                                               §§push(_loc11_);
                                                               if(!(_loc13_ && Boolean(param2)))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc12_ || Boolean(_loc3_))
                                                                     {
                                                                        §§goto(addr023a);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr0259:
                                                                        §§push(2);
                                                                        if(_loc12_ || Boolean(this))
                                                                        {
                                                                        }
                                                                     }
                                                                     addr0279:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           _loc8_.securityGrade = _loc3_.currentFireGrade;
                                                                           if(_loc12_)
                                                                           {
                                                                              addr0292:
                                                                              §§push(_loc8_);
                                                                              §§push("gui_professionals_");
                                                                              if(!(_loc13_ && Boolean(this)))
                                                                              {
                                                                                 §§push(§§pop() + _loc7_);
                                                                              }
                                                                              §§pop().picLib = §§pop();
                                                                              if(_loc12_ || Boolean(param1))
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 §§push("small_");
                                                                                 if(_loc12_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + _loc6_.gfxId);
                                                                                 }
                                                                                 §§pop().picImage = §§pop();
                                                                                 if(!(_loc13_ && Boolean(this)))
                                                                                 {
                                                                                    addr02e5:
                                                                                    _loc8_.efficiency = this._emergencyProxy.calculateTempAttribute(_loc3_,_loc6_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       addr0302:
                                                                                       _loc8_.luck = this._emergencyProxy.calculateTempAttribute(_loc3_,_loc6_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr031f:
                                                                                       _loc8_.goofiness = this._emergencyProxy.calculateTempAttribute(_loc3_,_loc6_,ServerProfessionalConstants.ATTRIBUTE_GOOFINESS);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              _loc8_.successChance = this._emergencyProxy.calculateTempSuccessRate(_loc3_,_loc6_,param2);
                                                                              break;
                                                                           }
                                                                           §§goto(addr02e5);
                                                                        case 1:
                                                                           _loc8_.securityGrade = _loc3_.currentPoliceGrade;
                                                                           if(_loc12_)
                                                                           {
                                                                           }
                                                                           §§goto(addr0292);
                                                                        case 2:
                                                                           _loc8_.securityGrade = _loc3_.currentHospitalGrade;
                                                                           if(!(_loc12_ || Boolean(param1)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr0292);
                                                                           break;
                                                                        default:
                                                                           §§goto(addr0292);
                                                                     }
                                                                     _loc5_ = this._emergencyProxy.calculateTempReward(_loc3_,_loc6_);
                                                                     if(_loc12_ || Boolean(this))
                                                                     {
                                                                        _loc8_.rewardGfxId = _loc5_.gfxId;
                                                                        if(!_loc13_)
                                                                        {
                                                                           _loc8_.rewardLocaId = _loc5_.localeId;
                                                                           if(!(_loc13_ && Boolean(param1)))
                                                                           {
                                                                              _loc8_.rewardAmount = this._emergencyProxy.calculateTempRewardAmount(_loc3_,_loc6_);
                                                                              if(!(_loc12_ || Boolean(_loc3_)))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc4_.push(_loc8_);
                                                                     continue;
                                                                  }
                                                                  addr0255:
                                                                  addr0253:
                                                                  if(ServerTagConstants.HOSPITAL === _loc11_)
                                                                  {
                                                                     §§goto(addr0259);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(3);
                                                                  }
                                                                  §§goto(addr0279);
                                                                  §§goto(addr0259);
                                                               }
                                                               §§goto(addr0255);
                                                            }
                                                            §§goto(addr0253);
                                                         }
                                                         §§goto(addr0279);
                                                      }
                                                      §§goto(addr0255);
                                                   }
                                                   §§goto(addr0218);
                                                }
                                                §§goto(addr0259);
                                             }
                                          }
                                          §§goto(addr0302);
                                       }
                                       §§goto(addr0292);
                                    }
                                    §§goto(addr031f);
                                 }
                                 §§goto(addr013d);
                              }
                              §§goto(addr0292);
                           }
                           §§goto(addr010a);
                        }
                        §§goto(addr01ae);
                     }
                     §§goto(addr031f);
                  }
                  else
                  {
                     §§push("female");
                  }
                  §§goto(addr0095);
               }
            }
            return _loc4_;
         }
         §§goto(addr0055);
      }
      
      private function getEmergencyTimerVo(param1:EmergencyInfoVo = null) : TimerBarComponentVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:TimerBarComponentVo = new TimerBarComponentVo();
         if(_loc4_ || Boolean(this))
         {
            if(param1)
            {
               if(_loc4_)
               {
                  §§push(_loc2_);
                  §§push(param1.emergencyDTO.endTime);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(§§pop() - param1.emergencyDTO.config.lifetime);
                  }
                  §§pop().startTime = §§pop();
                  if(!_loc3_)
                  {
                     _loc2_.cycleLength = param1.emergencyDTO.config.lifetime;
                     if(_loc4_)
                     {
                        §§goto(addr007f);
                     }
                     §§goto(addr00b2);
                  }
               }
               addr007f:
               §§push(_loc2_);
               §§push(_loc2_.startTime);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§pop() + _loc2_.cycleLength);
               }
               §§pop().targetTime = §§pop();
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr00b2:
                  _loc2_.currentTime = this._timerProxy.currentTimeStamp;
               }
               §§goto(addr00bd);
            }
            addr00bd:
            return _loc2_;
         }
         §§goto(addr007f);
      }
      
      private function getSlots(param1:EmergencyInfoVo) : Vector.<ProfessionalSlotVo>
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc3_:Object = null;
         var _loc4_:EmergencyRequirementDTO = null;
         var _loc5_:ProfessionalDTO = null;
         var _loc6_:SlotProfessionalVo = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc2_:Vector.<ProfessionalSlotVo> = new Vector.<ProfessionalSlotVo>();
         if(!_loc15_)
         {
            if(param1)
            {
               §§goto(addr0055);
            }
            §§goto(addr0662);
         }
         addr0055:
         for each(_loc4_ in param1.emergencyDTO.config.emergencyRequirements)
         {
            _loc3_ = new Object();
            if(!(_loc15_ && Boolean(param1)))
            {
               _loc3_.reqDep = _loc4_.configSpecialization.department;
               if(_loc16_)
               {
                  _loc3_.reqSpec = _loc4_.configSpecialization.rank;
                  if(!_loc15_)
                  {
                     _loc3_.reqSpecGfx = _loc4_.configSpecialization.gfxId;
                     if(!(_loc15_ && Boolean(this)))
                     {
                        _loc3_.reqSpecLoca = _loc4_.configSpecialization.locaId;
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           _loc3_.reqSpecId = _loc4_.configSpecialization.id;
                           if(!(_loc15_ && Boolean(this)))
                           {
                              addr0100:
                              _loc3_.slotNr = _loc4_.slotNumber;
                              if(_loc16_)
                              {
                                 var _loc13_:* = _loc4_.configSpecialization.department;
                                 if(!_loc15_)
                                 {
                                    §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                    if(!_loc15_)
                                    {
                                       §§push(_loc13_);
                                       if(!(_loc15_ && Boolean(_loc3_)))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc15_)
                                             {
                                                addr019a:
                                                §§push(0);
                                                if(_loc15_ && Boolean(this))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr01db:
                                                §§push(1);
                                                if(_loc16_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                             if(!(_loc15_ && Boolean(param1)))
                                             {
                                                §§push(_loc13_);
                                                if(!(_loc15_ && Boolean(this)))
                                                {
                                                   addr01d1:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         §§goto(addr01db);
                                                      }
                                                      else
                                                      {
                                                         addr01f2:
                                                         §§push(2);
                                                         if(_loc15_)
                                                         {
                                                         }
                                                      }
                                                      addr020a:
                                                      if(_loc16_)
                                                      {
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               _loc3_.reqSecGrade = param1.requiredFireGrade;
                                                               if(_loc15_ && Boolean(_loc2_))
                                                               {
                                                               }
                                                               break;
                                                            case 1:
                                                               _loc3_.reqSecGrade = param1.requiredPoliceGrade;
                                                               if(_loc16_)
                                                               {
                                                               }
                                                               break;
                                                            case 2:
                                                               _loc3_.reqSecGrade = param1.requiredHospitalGrade;
                                                               if(_loc15_ && Boolean(_loc3_))
                                                               {
                                                               }
                                                         }
                                                         addr0223:
                                                         §§push(0);
                                                      }
                                                      for each(_loc6_ in param1.slotVector)
                                                      {
                                                         _loc5_ = null;
                                                         if(!(_loc15_ && Boolean(param1)))
                                                         {
                                                            if(_loc6_.slotNo != _loc4_.slotNumber)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc5_ = _loc6_.professional;
                                                         break;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            _loc2_.push(new ProfessionalSlotVo(_loc3_));
                                                            continue;
                                                         }
                                                         if(_loc16_)
                                                         {
                                                            _loc3_.profDep = _loc5_.configSpecialisation.department;
                                                            if(!_loc15_)
                                                            {
                                                               _loc3_.profSpec = _loc5_.configSpecialisation.rank;
                                                               if(!_loc15_)
                                                               {
                                                                  _loc3_.profSpecGfx = _loc5_.configSpecialisation.gfxId;
                                                                  if(!_loc15_)
                                                                  {
                                                                     _loc3_.proSpecId = _loc5_.configSpecialisation.id;
                                                                     if(_loc16_ || Boolean(param1))
                                                                     {
                                                                        _loc3_.profSpecLoca = _loc5_.configSpecialisation.locaId;
                                                                        if(_loc16_ || Boolean(_loc2_))
                                                                        {
                                                                           §§push(_loc5_.gender);
                                                                           if(_loc16_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr030d:
                                                                                 §§push("male");
                                                                                 if(_loc16_ || Boolean(_loc3_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push("female");
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!_loc15_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    _loc3_.lib = "gui_professionals_" + _loc7_;
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       addr0352:
                                                                                       _loc3_.img = "small_" + _loc5_.gfxId;
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr0366:
                                                                                          §§push(ResourceManager.getInstance());
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push("rcl.professions.nameconvention");
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push("");
                                                                                                if(!(_loc15_ && Boolean(param1)))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push("rcl.professions.nameconvention.fistnamelastname");
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§push("");
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc15_ && Boolean(param1)))
                                                                                                            {
                                                                                                               §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc16_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        addr03d3:
                                                                                                                        §§push(ResourceManager.getInstance());
                                                                                                                        if(_loc16_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§push("rcl.professions.firstnames.");
                                                                                                                           if(_loc16_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              addr03f8:
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!(_loc15_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    addr040f:
                                                                                                                                    §§push("rcl.professions.firstnames.");
                                                                                                                                    if(_loc16_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(".");
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                addr0438:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   addr043f:
                                                                                                                                                   §§push(_loc5_.name);
                                                                                                                                                   if(_loc16_ || Boolean(param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc15_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            addr046b:
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr0472:
                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                               if(_loc15_ && Boolean(param1))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               addr0488:
                                                                                                                                                               addr0482:
                                                                                                                                                               §§push(ResourceManager.getInstance());
                                                                                                                                                               §§push("rcl.professions.surnames.");
                                                                                                                                                               if(!(_loc15_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  addr0499:
                                                                                                                                                                  addr049b:
                                                                                                                                                                  §§push(§§pop() + _loc7_);
                                                                                                                                                               }
                                                                                                                                                               §§push("rcl.professions.surnames.");
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  addr04a7:
                                                                                                                                                                  §§push(§§pop() + _loc7_);
                                                                                                                                                                  if(_loc16_ || Boolean(_loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr04b6:
                                                                                                                                                                     addr04c6:
                                                                                                                                                                     addr04b9:
                                                                                                                                                                     §§push(§§pop() + ".");
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        addr04c0:
                                                                                                                                                                        addr04c5:
                                                                                                                                                                        §§push(§§pop() + _loc5_.surname);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                                                                        {
                                                                                                                                                                           addr04df:
                                                                                                                                                                           _loc10_ = §§pop();
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           _loc3_.name = StringUtil.substitute(_loc8_,_loc9_,_loc10_);
                                                                                                                                                                           if(_loc15_ && Boolean(_loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           _loc3_.id = _loc5_.id;
                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc5_.configSpecialisation.department);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr0573:
                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                                                                                                                                        if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc16_ || Boolean(_loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr05d9:
                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc15_ && Boolean(param1)))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr05d9);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr05f0:
                                                                                                                                                                                             §§push(2);
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr060a:
                                                                                                                                                                                          switch(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             case 0:
                                                                                                                                                                                                _loc3_.secGrade = param1.currentFireGrade;
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             case 1:
                                                                                                                                                                                                _loc3_.secGrade = param1.currentPoliceGrade;
                                                                                                                                                                                                if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             case 2:
                                                                                                                                                                                                _loc3_.secGrade = param1.currentHospitalGrade;
                                                                                                                                                                                                if(_loc15_ && Boolean(_loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc2_.push(new ProfessionalSlotVo(_loc3_,false));
                                                                                                                                                                                          addr0621:
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          continue;
                                                                                                                                                                                          addr0608:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr05ec:
                                                                                                                                                                                          addr05ea:
                                                                                                                                                                                          if(ServerTagConstants.HOSPITAL === _loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr05f0);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(3);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0608);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr05f0);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05ec);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr05ea);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0608);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr05ec);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr05ea);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr05d9);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04c0);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0573);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr04df);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04b6);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04c5);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04c6);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04b9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04c6);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04a7);
                                                                                                                                    }
                                                                                                                                    §§goto(addr043f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0499);
                                                                                                                              }
                                                                                                                              §§goto(addr049b);
                                                                                                                           }
                                                                                                                           §§goto(addr040f);
                                                                                                                        }
                                                                                                                        §§goto(addr0488);
                                                                                                                     }
                                                                                                                     §§goto(addr0482);
                                                                                                                  }
                                                                                                                  §§goto(addr046b);
                                                                                                               }
                                                                                                               §§goto(addr0573);
                                                                                                            }
                                                                                                            §§goto(addr04c0);
                                                                                                         }
                                                                                                         §§goto(addr0438);
                                                                                                      }
                                                                                                      §§goto(addr04c0);
                                                                                                   }
                                                                                                   §§goto(addr03f8);
                                                                                                }
                                                                                                §§goto(addr04c6);
                                                                                             }
                                                                                             §§goto(addr03f8);
                                                                                          }
                                                                                          §§goto(addr0488);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr03d3);
                                                                                 }
                                                                                 §§goto(addr0621);
                                                                              }
                                                                              §§goto(addr0472);
                                                                           }
                                                                           §§goto(addr060a);
                                                                        }
                                                                        §§goto(addr0366);
                                                                     }
                                                                  }
                                                                  §§goto(addr0621);
                                                               }
                                                               §§goto(addr0352);
                                                            }
                                                         }
                                                         §§goto(addr0482);
                                                      }
                                                      §§goto(addr030d);
                                                   }
                                                   else
                                                   {
                                                      addr01ee:
                                                      addr01ec:
                                                      if(ServerTagConstants.HOSPITAL === _loc13_)
                                                      {
                                                         §§goto(addr01f2);
                                                      }
                                                      else
                                                      {
                                                         §§push(3);
                                                      }
                                                      §§goto(addr020a);
                                                   }
                                                }
                                                §§goto(addr01ee);
                                             }
                                             §§goto(addr01ec);
                                          }
                                          §§goto(addr020a);
                                       }
                                       §§goto(addr01d1);
                                    }
                                    §§goto(addr01ec);
                                 }
                                 §§goto(addr019a);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr0223);
            }
            §§goto(addr0100);
         }
         if(_loc16_)
         {
            addr0662:
            _loc2_.sort(sortSlots);
         }
         return _loc2_;
      }
   }
}

