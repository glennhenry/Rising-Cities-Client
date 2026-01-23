package net.bigpoint.cityrama.controller.field
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.errors.IllegalOperationError;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.SlotProfessionalVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.EmergencyCitizenSpawnVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   
   public class EmergencyAnimationCommand extends CitizenControlCommand
   {
      
      private var _soundProxy:SoundProxy;
      
      public function EmergencyAnimationCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:Rectangle = null;
         var _loc15_:Number = NaN;
         if(param1.getBody() != null)
         {
            var _loc2_:EmergencyCitizenSpawnVo = EmergencyCitizenSpawnVo(param1.getBody());
            null.slotProfessionalVos = null.slotProfessionalVos.sort(this.sortProfessionalsBySlotNr);
            _loc4_ = null.billboardObjectVo.matrixCoordinates;
         }
         else
         {
            _loc4_ = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME)).getTownHall().billboardObjectVo.matrix3dCoordinates;
         }
         var _loc3_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc4_);
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(_loc3_.length)
         {
            var _loc5_:int = Math.floor(_loc3_.length * Math.random());
            var _loc6_:IntPoint = new IntPoint(_loc3_[0].matrixCoordinates.x,_loc3_[0].matrixCoordinates.y);
            var _loc13_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            var _loc14_:int = 1;
            _loc15_ = 1100002;
            var _loc9_:String = ServerTagConstants.FIRE_DEPARTMENT;
            var _loc16_:Vector.<InfrastructureBuildingFieldObject> = null.getInfrastructureBuildingByDepartmentTag(null);
            if(_loc16_ == null || null.length == 0)
            {
               var _loc18_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
               var _loc8_:IntPoint = _loc18_.pathwalkManager.terrain.getDistanceBasedPath(null,5,Terrain.TYPE_ALL_TERRAINS)[0];
            }
            else
            {
               var _loc11_:BillboardObjectVo = null[0].emergencyFieldObjectVo as BillboardObjectVo;
               var _loc10_:Rectangle = _loc11_.matrixCoordinates;
               var _loc12_:Vector.<PlaneObjectVo> = this.getValidStreet(null);
               if(_loc12_.length == 0)
               {
                  return;
               }
               var _loc7_:int = Math.floor(null.length * Math.random());
               _loc8_ = new IntPoint(null[0].matrixCoordinates.x,null[0].matrixCoordinates.y);
            }
            if(this.spawnCarForMissionCitizen(null,null,this.urbieXmlBySpecialisation(_loc15_,0)))
            {
               this._soundProxy.playEmergencyCitizenSound(null);
            }
         }
      }
      
      private function urbieXmlBySpecialisation(param1:Number, param2:int) : String
      {
         switch(param1)
         {
            case 1100002:
            case 1100003:
            case 1100004:
            case 1100005:
            case 1100006:
               return "emergency_firetruck";
            case 1110002:
            case 1110003:
            case 1110004:
            case 1110005:
            case 1110006:
               return "emergency_policecar";
            case 1120002:
            case 1120003:
            case 1120004:
            case 1120005:
            case 1112006:
               return "emergency_ambulance";
            default:
               throw new IllegalOperationError(this + "unknown type of specialisation: " + param1);
         }
      }
      
      private function sortProfessionalsBySlotNr(param1:SlotProfessionalVo, param2:SlotProfessionalVo) : int
      {
         if(param1.slotNo > param2.slotNo)
         {
            return -1;
         }
         if(param1.slotNo < param2.slotNo)
         {
            return 1;
         }
         return 0;
      }
      
      override protected function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
      {
         return super.getValidStreet(param1);
      }
      
      override protected function spawnCarForMissionCitizen(param1:IntPoint, param2:IntPoint, param3:String) : Boolean
      {
         return super.spawnCarForMissionCitizen(param1,param2,param3);
      }
      
      override protected function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         super.spawnNormalCitizen(param1,param2);
      }
   }
}

