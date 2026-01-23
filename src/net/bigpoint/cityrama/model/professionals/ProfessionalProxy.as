package net.bigpoint.cityrama.model.professionals
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalSpecializationDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ProfessionalProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ProfessionalProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || ProfessionalProxy)
      {
         NAME = "ProfessionalProxy";
      }
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function ProfessionalProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               this._playfieldObjProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
               if(_loc4_)
               {
                  addr0048:
                  this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
               }
               return;
            }
         }
         §§goto(addr0048);
      }
      
      public function get allProfessionals() : Vector.<ProfessionalDTO>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:AcademyFieldObject = null;
         var _loc3_:ProfessionalDTO = null;
         var _loc1_:Vector.<ProfessionalDTO> = this.allAvailableProfessionals;
         for each(_loc2_ in this._playfieldObjProxy.getAcademyList())
         {
            if(!_loc8_)
            {
               var _loc6_:int = 0;
               if(_loc9_)
               {
                  for each(_loc3_ in _loc2_.academyFieldObjectVo.buildingDTO.professionals)
                  {
                     if(!_loc8_)
                     {
                        _loc1_.push(_loc3_);
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get allAvailableProfessionals() : Vector.<ProfessionalDTO>
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Vector.<InfrastructureBuildingFieldObject> = new Vector.<InfrastructureBuildingFieldObject>();
         if(!_loc3_)
         {
            §§push(this._playfieldObjProxy);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(ServerTagConstants.FIRE_DEPARTMENT);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop().getInfrastructureBuildingByDepartmentTag(§§pop()).length)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.FIRE_DEPARTMENT)[0]);
                        if(_loc2_)
                        {
                           addr0087:
                           §§push(this._playfieldObjProxy);
                           if(_loc2_)
                           {
                              §§push(ServerTagConstants.HOSPITAL);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00a2:
                                 if(§§pop().getInfrastructureBuildingByDepartmentTag(§§pop()).length)
                                 {
                                    if(_loc2_)
                                    {
                                       _loc1_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.HOSPITAL)[0]);
                                       if(_loc2_)
                                       {
                                          §§goto(addr00cc);
                                       }
                                    }
                                    §§goto(addr00f9);
                                 }
                                 addr00cc:
                                 §§goto(addr00e2);
                              }
                              addr00e2:
                              §§goto(addr00d0);
                           }
                           addr00d0:
                           if(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.POLICE_DEPARTMENT).length)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00f9:
                                 _loc1_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.POLICE_DEPARTMENT)[0]);
                              }
                           }
                           §§goto(addr010f);
                        }
                        addr010f:
                        return this.fillProfs(_loc1_);
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr00a2);
            }
            §§goto(addr00d0);
         }
         §§goto(addr00cc);
      }
      
      public function getProfessionalsByDepartment(param1:String) : Vector.<ProfessionalDTO>
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Vector.<InfrastructureBuildingFieldObject> = new Vector.<InfrastructureBuildingFieldObject>();
         if(_loc4_ || Boolean(this))
         {
            _loc2_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(param1)[0]);
         }
         return this.fillProfs(_loc2_);
      }
      
      private function fillProfs(param1:Vector.<InfrastructureBuildingFieldObject>) : Vector.<ProfessionalDTO>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:InfrastructureBuildingFieldObject = null;
         var _loc4_:ProfessionalDTO = null;
         var _loc2_:Vector.<ProfessionalDTO> = new Vector.<ProfessionalDTO>();
         for each(_loc3_ in param1)
         {
            if(!_loc9_)
            {
               §§push(Boolean(_loc3_));
               if(_loc10_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc10_)
                     {
                        addr006a:
                        §§pop();
                        if(!_loc9_)
                        {
                           addr007d:
                           addr0071:
                           if(!Boolean(_loc3_.billboardObjectVo.buildingDTO.professionals.length))
                           {
                              continue;
                           }
                           if(!(_loc10_ || Boolean(this)))
                           {
                              continue;
                           }
                        }
                        var _loc7_:int = 0;
                        if(!_loc9_)
                        {
                           for each(_loc4_ in _loc3_.billboardObjectVo.buildingDTO.professionals)
                           {
                              if(_loc10_ || Boolean(_loc3_))
                              {
                                 _loc2_.push(_loc4_);
                              }
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006a);
            }
            §§goto(addr0071);
         }
         return _loc2_;
      }
      
      public function getProfessionalSlotsForDepartment(param1:String) : Vector.<ConfigProfessionalSpecializationDTO>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigProfessionalSpecializationDTO = null;
         var _loc2_:Vector.<ConfigProfessionalSpecializationDTO> = new Vector.<ConfigProfessionalSpecializationDTO>();
         for each(_loc3_ in this._configProxy.config.professionalSpecializations)
         {
            if(!(_loc6_ && Boolean(this)))
            {
               if(_loc3_.department != param1)
               {
                  continue;
               }
               if(!(_loc7_ || Boolean(_loc3_)))
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public function createTESTProForFireDep() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc1_:InfrastructureBuildingFieldObject = this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.FIRE_DEPARTMENT)[0];
         if(!(_loc6_ && Boolean(_loc1_)))
         {
            if(_loc1_)
            {
               if(!_loc6_)
               {
                  _loc2_ = _loc1_.billboardObjectVo.buildingDTO.id;
               }
               addr006c:
               _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc4_ = new Object();
               _loc4_.bid = _loc2_;
               _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PROFESSIONAL_CREATE);
               if(_loc7_ || Boolean(_loc3_))
               {
                  _loc3_.sendMessage(_loc5_);
               }
            }
            return;
         }
         §§goto(addr006c);
      }
      
      public function deleteTESTProFromFireDep() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Number = NaN;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc1_:InfrastructureBuildingFieldObject = this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.FIRE_DEPARTMENT)[0];
         if(_loc6_ || Boolean(_loc2_))
         {
            if(_loc1_)
            {
               if(_loc6_)
               {
                  if(_loc1_.billboardObjectVo.buildingDTO.professionals.length)
                  {
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        addr007e:
                        _loc2_ = _loc1_.billboardObjectVo.buildingDTO.professionals[0].id;
                     }
                     _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
                     _loc4_ = new Object();
                     _loc4_.pid = _loc2_;
                     _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PROFESSIONAL_DISMISS);
                     addr0090:
                     if(!_loc7_)
                     {
                        _loc3_.sendMessage(_loc5_);
                     }
                  }
                  §§goto(addr00e0);
               }
               §§goto(addr007e);
            }
            addr00e0:
            return;
         }
         §§goto(addr0090);
      }
      
      public function getAttributePointsByType(param1:ProfessionalDTO, param2:String) : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ProfessionalAttributeDTO = null;
         for each(_loc3_ in param1.attributes)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               if(_loc3_.config.attributeType == param2)
               {
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     return _loc3_.attributePoints;
                  }
               }
            }
         }
         return 0;
      }
      
      public function getProfessionalById(param1:Number) : ProfessionalDTO
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ProfessionalDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.allProfessionals;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(_loc5_ || Boolean(this))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function getAttributeScalarByType(param1:ProfessionalDTO, param2:String) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ProfessionalAttributeDTO = null;
         for each(_loc3_ in param1.attributes)
         {
            if(!_loc6_)
            {
               if(_loc3_.config.attributeType == param2)
               {
                  if(_loc7_)
                  {
                     return _loc3_.attributePoints / _loc3_.config.maxCap;
                  }
               }
            }
         }
         return 0;
      }
   }
}

