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
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function ProfessionalProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._playfieldObjProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         this._configProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
      }
      
      public function get allProfessionals() : Vector.<ProfessionalDTO>
      {
         var _loc2_:AcademyFieldObject = null;
         var _loc3_:ProfessionalDTO = null;
         var _loc1_:Vector.<ProfessionalDTO> = this.allAvailableProfessionals;
         for each(_loc2_ in this._playfieldObjProxy.getAcademyList())
         {
            for each(_loc3_ in _loc2_.academyFieldObjectVo.buildingDTO.professionals)
            {
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function get allAvailableProfessionals() : Vector.<ProfessionalDTO>
      {
         var _loc1_:Vector.<InfrastructureBuildingFieldObject> = new Vector.<InfrastructureBuildingFieldObject>();
         if(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.FIRE_DEPARTMENT).length)
         {
            _loc1_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.FIRE_DEPARTMENT)[0]);
         }
         if(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.HOSPITAL).length)
         {
            _loc1_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.HOSPITAL)[0]);
         }
         if(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.POLICE_DEPARTMENT).length)
         {
            _loc1_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.POLICE_DEPARTMENT)[0]);
         }
         return this.fillProfs(_loc1_);
      }
      
      public function getProfessionalsByDepartment(param1:String) : Vector.<ProfessionalDTO>
      {
         var _loc2_:Vector.<InfrastructureBuildingFieldObject> = new Vector.<InfrastructureBuildingFieldObject>();
         _loc2_.push(this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(param1)[0]);
         return this.fillProfs(_loc2_);
      }
      
      private function fillProfs(param1:Vector.<InfrastructureBuildingFieldObject>) : Vector.<ProfessionalDTO>
      {
         var _loc3_:InfrastructureBuildingFieldObject = null;
         var _loc4_:ProfessionalDTO = null;
         var _loc2_:Vector.<ProfessionalDTO> = new Vector.<ProfessionalDTO>();
         for each(_loc3_ in param1)
         {
            if(Boolean(_loc3_) && Boolean(_loc3_.billboardObjectVo.buildingDTO.professionals.length))
            {
               for each(_loc4_ in _loc3_.billboardObjectVo.buildingDTO.professionals)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getProfessionalSlotsForDepartment(param1:String) : Vector.<ConfigProfessionalSpecializationDTO>
      {
         var _loc3_:ConfigProfessionalSpecializationDTO = null;
         var _loc2_:Vector.<ConfigProfessionalSpecializationDTO> = new Vector.<ConfigProfessionalSpecializationDTO>();
         for each(_loc3_ in this._configProxy.config.professionalSpecializations)
         {
            if(_loc3_.department == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function createTESTProForFireDep() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc1_:InfrastructureBuildingFieldObject = this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.FIRE_DEPARTMENT)[0];
         if(_loc1_)
         {
            _loc2_ = _loc1_.billboardObjectVo.buildingDTO.id;
            _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc4_ = new Object();
            _loc4_.bid = _loc2_;
            _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PROFESSIONAL_CREATE);
            _loc3_.sendMessage(_loc5_);
         }
      }
      
      public function deleteTESTProFromFireDep() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc1_:InfrastructureBuildingFieldObject = this._playfieldObjProxy.getInfrastructureBuildingByDepartmentTag(ServerTagConstants.FIRE_DEPARTMENT)[0];
         if(_loc1_)
         {
            if(_loc1_.billboardObjectVo.buildingDTO.professionals.length)
            {
               _loc2_ = _loc1_.billboardObjectVo.buildingDTO.professionals[0].id;
               _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc4_ = new Object();
               _loc4_.pid = _loc2_;
               _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PROFESSIONAL_DISMISS);
               _loc3_.sendMessage(_loc5_);
            }
         }
      }
      
      public function getAttributePointsByType(param1:ProfessionalDTO, param2:String) : Number
      {
         var _loc3_:ProfessionalAttributeDTO = null;
         for each(_loc3_ in param1.attributes)
         {
            if(_loc3_.config.attributeType == param2)
            {
               return _loc3_.attributePoints;
            }
         }
         return 0;
      }
      
      public function getProfessionalById(param1:Number) : ProfessionalDTO
      {
         var _loc2_:ProfessionalDTO = null;
         for each(_loc2_ in this.allProfessionals)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getAttributeScalarByType(param1:ProfessionalDTO, param2:String) : Number
      {
         var _loc3_:ProfessionalAttributeDTO = null;
         for each(_loc3_ in param1.attributes)
         {
            if(_loc3_.config.attributeType == param2)
            {
               return _loc3_.attributePoints / _loc3_.config.maxCap;
            }
         }
         return 0;
      }
   }
}

