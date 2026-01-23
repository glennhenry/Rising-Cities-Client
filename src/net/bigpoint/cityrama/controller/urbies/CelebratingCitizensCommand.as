package net.bigpoint.cityrama.controller.urbies
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.controller.field.CitizenControlCommand;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   
   public class CelebratingCitizensCommand extends CitizenControlCommand implements ICommand
   {
      
      public function CelebratingCitizensCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc4_:Vector.<PlaneObjectVo> = this.customSearchForStreet(_loc2_);
         if(_loc4_.length)
         {
            try
            {
               var _loc5_:int = Math.floor(_loc4_.length * Math.random());
               var _loc6_:IntPoint = new IntPoint(_loc4_[0].matrixCoordinates.x,_loc4_[0].matrixCoordinates.y);
               var _loc7_:int = 5 + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE);
               var _loc8_:Vector.<IntPoint> = _loc3_.pathwalkManager.terrain.getDistanceBasedPath(null,0,"walkable");
               if(_loc8_.length)
               {
                  var _loc9_:int = Math.floor(null.length * Math.random());
                  this.spawnCarCitizen(null[0],null);
                  var _loc10_:int = _loc2_.configPlayfieldItemVo.sizeX * _loc2_.configPlayfieldItemVo.sizeY;
                  var _loc11_:int = 0;
                  while(0 < 0 * CitizenConstants.INAUGURATE_MODIFIER)
                  {
                     _loc7_ = 5 + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE);
                     _loc5_ = Math.floor(_loc4_.length * Math.random());
                     _loc6_ = new IntPoint(_loc4_[0].matrixCoordinates.x,_loc4_[0].matrixCoordinates.y);
                     _loc8_ = _loc3_.pathwalkManager.terrain.getDistanceBasedPath(null,0,"walkable");
                     _loc9_ = Math.floor(null.length * Math.random());
                     this.spawnNormalCitizen(null[0],null);
                     _loc11_++;
                  }
               }
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private function customSearchForStreet(param1:BillboardObjectVo, param2:Boolean = false) : Vector.<PlaneObjectVo>
      {
         var _loc3_:Rectangle = param1.matrixCoordinates;
         var _loc4_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc3_);
         if(_loc4_.length == 0 && param1 is DecorationFieldObjectVo && !param2)
         {
            _loc3_.topLeft = new Point(_loc3_.topLeft.x - 2,_loc3_.topLeft.y - 2);
            _loc3_.bottomRight = new Point(_loc3_.bottomRight.x + 2,_loc3_.bottomRight.y + 2);
            _loc4_ = this.customSearchForStreet(param1,true);
         }
         return _loc4_;
      }
      
      override protected function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
      {
         return super.getValidStreet(param1);
      }
      
      override protected function spawnCarCitizen(param1:IntPoint, param2:IntPoint) : void
      {
      }
      
      override protected function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         super.spawnNormalCitizen(param1,param2);
      }
   }
}

