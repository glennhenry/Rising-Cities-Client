package net.bigpoint.cityrama.controller.field
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.AnimationConditionsVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DecoPlacedAnimationCommand extends SimpleCommand
   {
      
      public function DecoPlacedAnimationCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:Rectangle = _loc2_.matrixCoordinates;
         var _loc4_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc3_);
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(_loc4_ != null)
         {
            if(_loc4_.length)
            {
               var _loc6_:int = Math.floor(_loc4_.length * Math.random());
               var _loc7_:IntPoint = new IntPoint(_loc4_[0].matrixCoordinates.x,_loc4_[0].matrixCoordinates.y);
               var _loc8_:int = 5 + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE);
               var _loc9_:Vector.<IntPoint> = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(null,0,"walkable");
               if(_loc9_.length)
               {
                  var _loc10_:int = _loc2_.configPlayfieldItemVo.sizeX * _loc2_.configPlayfieldItemVo.sizeY;
                  var _loc12_:int = 0;
                  while(0 < 0 * CitizenConstants.INAUGURATE_MODIFIER)
                  {
                     _loc8_ = 5 + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE);
                     _loc6_ = Math.floor(_loc4_.length * Math.random());
                     _loc7_ = new IntPoint(_loc4_[0].matrixCoordinates.x,_loc4_[0].matrixCoordinates.y);
                     _loc9_ = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(null,0,"walkable");
                     var _loc11_:int = Math.floor(null.length * Math.random());
                     this.spawnNormalCitizen(null[0],null);
                     _loc12_++;
                  }
               }
            }
         }
      }
      
      private function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
      {
         var _loc7_:IGameObjectVo = null;
         var _loc8_:PlaneObjectVo = null;
         var _loc2_:Vector.<PlaneObjectVo> = new Vector.<PlaneObjectVo>();
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:Cuboid = new Cuboid();
         _loc5_.topLeft = new Point(param1.left - 1,param1.top - 1);
         _loc5_.bottomRight = new Point(param1.right + 1,param1.bottom + 1);
         var _loc6_:Vector.<IGameObjectVo> = _loc4_.getGameObjectsByCuboid(_loc5_);
         for each(_loc7_ in _loc6_)
         {
            if(_loc7_ is PlaneObjectVo && (_loc7_ as PlaneObjectVo).isConnectedToStreet)
            {
               _loc8_ = _loc7_ as PlaneObjectVo;
               _loc2_.push(_loc8_);
            }
         }
         return _loc2_;
      }
      
      private function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.getRandomCitizenFromMood("neutral");
         var _loc6_:SimpleWalker = new SimpleWalker(_loc5_.id,_loc5_.config.terrain);
         _loc5_.walker = _loc6_;
         _loc6_.waypoints.push(param1);
         _loc6_.waypoints.push(param2);
         var _loc7_:Number = 1 + Math.random();
         _loc6_.speed = _loc4_.pathwalkManager.terrain.tileSize / _loc7_;
         _loc3_.addUrbie(_loc5_);
         if(_loc4_.addWalker(_loc6_))
         {
            var _loc8_:UrbieObject = _loc3_.urbieObjectDictionary[_loc6_.id];
            _loc8_.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"jump",5,CitizenConstants.ANIMATION_ACTION_GO_RANDOM));
         }
      }
   }
}

