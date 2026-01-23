package net.bigpoint.cityrama.controller.field
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import org.puremvc.as3.interfaces.INotification;
   
   public class MoveInAnimationCommand extends CitizenControlCommand
   {
      
      public function MoveInAnimationCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:Rectangle = _loc2_.matrixCoordinates;
         var _loc4_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc3_);
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(_loc4_.length)
         {
            var _loc6_:int = Math.floor(_loc4_.length * Math.random());
            var _loc7_:IntPoint = new IntPoint(_loc4_[0].matrixCoordinates.x,_loc4_[0].matrixCoordinates.y);
            var _loc8_:int = 5 + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE);
            var _loc9_:Vector.<IntPoint> = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(null,0,Terrain.TYPE_ALL_TERRAINS);
            if(_loc9_.length)
            {
               var _loc10_:int = Math.floor(null.length * Math.random());
               this.spawnCarCitizen(null[0],null);
               var _loc11_:int = _loc2_.configPlayfieldItemVo.sizeX * _loc2_.configPlayfieldItemVo.sizeY;
               var _loc12_:int = 0;
               while(0 < 0 * CitizenConstants.INAUGURATE_MODIFIER)
               {
                  _loc8_ = 5 + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE);
                  _loc6_ = Math.floor(_loc4_.length * Math.random());
                  if(_loc6_ != -1)
                  {
                     _loc7_ = new IntPoint(_loc4_[0].matrixCoordinates.x,_loc4_[0].matrixCoordinates.y);
                     _loc9_ = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(null,0,"walkable");
                     _loc10_ = Math.floor(null.length * Math.random());
                     this.spawnNormalCitizen(null[0],null);
                  }
                  _loc12_++;
               }
            }
         }
         super.execute(param1);
      }
      
      override protected function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
      {
         return super.getValidStreet(param1);
      }
      
      override protected function spawnCarCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         super.spawnCarCitizen(param1,param2);
      }
      
      override protected function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         super.spawnNormalCitizen(param1,param2);
      }
   }
}

