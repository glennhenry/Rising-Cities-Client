package net.bigpoint.cityrama.model.infrastructure
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.SecurityMatrix;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SecurityMatrixProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SecurityMatrixProxy";
      
      private var _securityMatrix:SecurityMatrix;
      
      private var _gameConf:GameConfigProxy;
      
      private var _invalidatedTypes:Vector.<String>;
      
      private var _pO:PlayfieldObjectsProxy;
      
      public function SecurityMatrixProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._invalidatedTypes = new Vector.<String>();
      }
      
      override public function onRegister() : void
      {
         this._securityMatrix = new SecurityMatrix();
         this._gameConf = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this.invalidateAll();
      }
      
      private function invalidate(param1:String) : void
      {
         if(this._invalidatedTypes.indexOf(param1) == -1)
         {
            this._invalidatedTypes.push(param1);
            sendNotification(ApplicationNotificationConstants.SECURITY_GRID_CHANGED);
         }
      }
      
      public function validate(param1:String) : void
      {
         this._invalidatedTypes.splice(this._invalidatedTypes.indexOf(param1),1);
      }
      
      public function invalidateAll() : void
      {
         this.invalidate(ServerTagConstants.FIRE_DEPARTMENT);
         this.invalidate(ServerTagConstants.POLICE_DEPARTMENT);
         this.invalidate(ServerTagConstants.HOSPITAL);
      }
      
      public function get securityMatrix() : SecurityMatrix
      {
         return this._securityMatrix;
      }
      
      public function set securityMatrix(param1:SecurityMatrix) : void
      {
         this._securityMatrix = param1;
         this.invalidateAll();
      }
      
      public function removeObject(param1:IEmergencyInfrastructureVO) : void
      {
         var _loc3_:ConfigSecurityGradeDTO = null;
         var _loc4_:Rectangle = null;
         var _loc2_:Rectangle = param1.matrix3dCoordinates;
         for each(_loc3_ in param1.listOfModifiedGrades)
         {
            _loc4_ = _loc2_.clone();
            _loc4_.x -= _loc3_.rangeX;
            _loc4_.y -= _loc3_.rangeY;
            _loc4_.width += _loc3_.rangeX * 2;
            _loc4_.height += _loc3_.rangeY * 2;
            this._securityMatrix.killObjectByIDAndRect(param1.id,_loc4_);
            this.invalidate(_loc3_.type);
         }
      }
      
      public function updateObject(param1:IEmergencyInfrastructureVO) : void
      {
         this.removeObject(param1);
         this.addObject(param1);
      }
      
      public function addObject(param1:IEmergencyInfrastructureVO) : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:ConfigSecurityGradeDTO = null;
         var _loc5_:Rectangle = null;
         var _loc6_:SecurityStatusVo = null;
         if(param1.listOfModifiedGrades.length == 0)
         {
            return;
         }
         if(param1 is DecorationFieldObjectVo)
         {
            if((param1 as DecorationFieldObjectVo).decorationVo.dto == null)
            {
               return;
            }
            _loc2_ = (param1 as DecorationFieldObjectVo).decorationVo.id;
         }
         else
         {
            if(param1.buildingDTO == null)
            {
               return;
            }
            _loc2_ = Number(param1.buildingDTO.id);
         }
         if(isNaN(_loc2_))
         {
            return;
         }
         var _loc3_:Rectangle = param1.matrix3dCoordinates;
         for each(_loc4_ in param1.listOfModifiedGrades)
         {
            _loc5_ = _loc3_.clone();
            _loc5_.x -= _loc4_.rangeX;
            _loc5_.y -= _loc4_.rangeY;
            _loc5_.width += _loc4_.rangeX * 2;
            _loc5_.height += _loc4_.rangeY * 2;
            _loc6_ = new SecurityStatusVo(_loc5_.x,_loc5_.y,_loc4_.type,_loc2_,_loc4_.value);
            this._securityMatrix.setObjectByRect(_loc6_,_loc5_);
            _loc6_ = new SecurityStatusVo(_loc3_.x,_loc3_.y,_loc4_.type,_loc2_,SecurityStatusVo.BLOCKED_BY_DEVICE);
            this._securityMatrix.setObjectByRect(_loc6_,_loc3_);
            this.invalidate(_loc4_.type);
         }
      }
      
      public function getSecurityStatusByRect(param1:Rectangle) : Vector.<SecurityStatusVo>
      {
         return this._securityMatrix.getOverallStatusByRect(param1);
      }
      
      public function getSecurityStatusByBuildingId(param1:Number) : Vector.<SecurityStatusVo>
      {
         var _loc2_:BillboardObject = this.playfieldObjectsProxy.getBillboardById(param1);
         return this.getSecurityStatusByRect(_loc2_.billboardObjectVo.matrixCoordinates);
      }
      
      public function getCurrentSecGradeByDepartment(param1:Number, param2:String) : int
      {
         var _loc3_:SecurityStatusVo = null;
         for each(_loc3_ in this.getSecurityStatusByBuildingId(param1))
         {
            if(_loc3_.securtiyType == param2)
            {
               return _loc3_.level;
            }
         }
         return 0;
      }
      
      private function get playfieldObjectsProxy() : PlayfieldObjectsProxy
      {
         if(this._pO == null)
         {
            this._pO = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         }
         return this._pO;
      }
      
      public function get invalidatedTypes() : Vector.<String>
      {
         return this._invalidatedTypes;
      }
      
      public function resetMatrix() : void
      {
         this._securityMatrix = new SecurityMatrix();
         this.invalidateAll();
      }
   }
}

