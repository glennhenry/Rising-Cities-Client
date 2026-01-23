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
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.AnimationConditionsVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.walkers.FriendlyRisy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CitizenControlCommand extends SimpleCommand implements ICommand
   {
      
      public function CitizenControlCommand()
      {
         super();
      }
      
      protected function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
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
      
      protected function spawnCarCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.getUrbieByXMLId("moveInTruck");
         var _loc6_:SimpleWalker = new SimpleWalker(_loc5_.id,_loc5_.config.terrain);
         _loc5_.walker = _loc6_;
         _loc6_.waypoints.push(param1);
         _loc6_.waypoints.push(param2);
         _loc6_.speed = _loc4_.pathwalkManager.terrain.tileSize / 0.5;
         _loc3_.addUrbie(_loc5_);
         if(_loc4_.addWalker(_loc6_))
         {
            var _loc8_:UrbieObject = _loc3_.urbieObjectDictionary[_loc6_.id];
            if(_loc8_ != null)
            {
               null.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"_movein",5,CitizenConstants.ANIMATION_ACTION_GO_RANDOM));
            }
         }
      }
      
      protected function spawnCarForMissionCitizen(param1:IntPoint, param2:IntPoint, param3:String) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc4_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc6_:UrbieLifeVo = _loc4_.getUrbieByXMLId(param3);
         if(_loc6_)
         {
            var _loc7_:FriendlyRisy = new FriendlyRisy(_loc6_.id,_loc6_.config.terrain);
            _loc6_.walker = null;
            null.waypoints.push(param1);
            null.waypoints.push(param2);
            null.home = param1;
            _loc8_ = 0.25;
            null.speed = _loc5_.pathwalkManager.terrain.tileSize / _loc8_;
            _loc4_.addUrbie(_loc6_);
            if(_loc5_.addWalker(null))
            {
               var _loc9_:UrbieObject = _loc4_.urbieObjectDictionary[null.id];
               if(_loc9_ != null)
               {
                  null.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"_emergency",8,CitizenConstants.ANIMATION_ACTION_GO_HOME));
                  return true;
               }
               return false;
            }
         }
         return false;
      }
      
      protected function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
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
         _loc4_.addWalker(_loc6_);
         var _loc8_:UrbieObject = _loc3_.urbieObjectDictionary[_loc6_.id];
         if(_loc8_)
         {
            _loc8_.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"jump",5,CitizenConstants.ANIMATION_ACTION_GO_RANDOM));
         }
      }
   }
}

