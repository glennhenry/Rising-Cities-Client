package net.bigpoint.cityrama.controller.urbies.walker
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.utils.setTimeout;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.AnimationConditionsVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerPathCompleteCommand extends SimpleCommand
   {
      
      public function WalkerPathCompleteCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:AnimationConditionsVo = null;
         var _loc8_:SoundProxy = null;
         var _loc2_:IWalker = param1.getBody() as IWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.dictionary[_loc2_.id];
         var _loc6_:UrbieObject = _loc3_.urbieObjectDictionary[_loc2_.id];
         if(_loc6_)
         {
            _loc7_ = null;
            for each(_loc7_ in _loc6_.animationStartConditions)
            {
               if(_loc7_.startCondition == param1.getName())
               {
                  break;
               }
            }
            if(_loc7_)
            {
               if(_loc7_.framesetName == "_movein")
               {
                  _loc2_.pausePath();
                  _loc6_.framesetStrategy.playFrameset(_loc6_.directionStrategy.direction + _loc7_.framesetName);
                  setTimeout(this.animationComplete,_loc7_.duration * 1000,_loc6_,_loc2_);
               }
               else if(_loc7_.framesetName == "_emergency")
               {
                  _loc2_.pausePath();
                  _loc6_.framesetStrategy.playFrameset(_loc6_.directionStrategy.direction + _loc7_.framesetName);
                  _loc8_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  _loc8_.stopEmergencyCitizenSoundByCitizenID(_loc6_.urbieLifeVo.config.citizenID);
                  setTimeout(this.animationComplete,_loc7_.duration * 1000,_loc6_,_loc2_);
               }
               else
               {
                  _loc2_.pausePath();
                  _loc6_.framesetStrategy.playFrameset(_loc7_.framesetName);
                  setTimeout(this.animationComplete,_loc7_.duration * 1000,_loc6_,_loc2_);
               }
            }
            else if(!_loc2_.path.length)
            {
               facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
               _loc6_ = null;
               delete _loc3_.dictionary[_loc2_.id];
               delete _loc3_.urbieObjectDictionary[_loc2_.id];
               _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
            }
         }
         else if(!_loc2_.path.length)
         {
            _loc4_.removeListener(_loc2_);
            facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc6_);
            _loc6_ = null;
            delete _loc3_.dictionary[_loc2_.id];
            delete _loc3_.urbieObjectDictionary[_loc2_.id];
            _loc4_.pathwalkManager.walkerContainer.killWalker(_loc2_);
         }
      }
      
      private function animationComplete(param1:UrbieObject, param2:SimpleWalker) : void
      {
         var _loc5_:IntPoint = null;
         var _loc6_:IntPoint = null;
         var _loc7_:IntPoint = null;
         var _loc8_:int = 0;
         var _loc9_:Vector.<IntPoint> = null;
         var _loc10_:int = 0;
         var _loc11_:Vector.<IntPoint> = null;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(param1.animationStartConditions.length)
         {
            if(param1.animationStartConditions[0].onCompleteAction == CitizenConstants.ANIMATION_ACTION_REMOVE)
            {
               param1.animationStartConditions.shift();
               facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,param1);
               param1 = null;
               delete _loc3_.dictionary[param2.id];
               delete _loc3_.urbieObjectDictionary[param2.id];
               _loc4_.pathwalkManager.walkerContainer.killWalker(param2);
            }
            else if(param1.animationStartConditions[0].onCompleteAction == CitizenConstants.ANIMATION_ACTION_GO_RANDOM)
            {
               param1.animationStartConditions.shift();
               _loc9_ = _loc4_.pathwalkManager.terrain.map.usableTiles[param2.terrainType];
               _loc10_ = Math.floor(_loc9_.length * Math.random());
               _loc5_ = param2.currentCell;
               _loc6_ = _loc9_[_loc10_];
               param2.waypoints.push(_loc5_,_loc6_);
               _loc4_.removeListener(param2);
               param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
               _loc8_ = 0;
               while(param2.path.length < 2 && _loc8_ < 5)
               {
                  _loc10_ = Math.floor(_loc9_.length * Math.random());
                  _loc5_ = param2.currentCell;
                  _loc6_ = _loc9_[_loc10_];
                  param2.waypoints.push(_loc5_,_loc6_);
                  param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
                  _loc8_++;
               }
               _loc7_ = new IntPoint(_loc5_.x - param2.nextCell.x,_loc5_.y - param2.nextCell.y);
               _loc5_ = new IntPoint(_loc5_.x - _loc7_.x,_loc5_.y - _loc7_.y);
               param2.path.unshift(_loc5_);
               _loc4_.setupListener(param2);
               _loc4_.pathwalkManager.walkman.stopWalker(param2);
               _loc4_.pathwalkManager.walkman.runPath(param2);
               param2.resumePath();
            }
            else if(param1.animationStartConditions[0].onCompleteAction == CitizenConstants.ANIMATION_ACTION_GO_HOME)
            {
               param1.animationStartConditions.shift();
               if(param2.home is IntPoint)
               {
                  _loc5_ = param2.currentCell;
                  _loc6_ = param2.home;
                  param2.waypoints.push(_loc5_,_loc6_);
                  _loc4_.removeListener(param2);
                  param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
                  _loc8_ = 0;
                  while(param2.path.length < 2 && _loc8_ < 5)
                  {
                     _loc11_ = _loc4_.pathwalkManager.terrain.map.usableTiles[param2.terrainType];
                     _loc10_ = Math.floor(_loc11_.length * Math.random());
                     _loc5_ = param2.currentCell;
                     _loc6_ = _loc11_[_loc10_];
                     param2.waypoints.push(_loc5_,_loc6_);
                     param2.path = _loc4_.pathwalkManager.terrain.calculatePath(param2,param2.terrainType);
                     _loc8_++;
                  }
                  _loc7_ = new IntPoint(_loc5_.x - param2.nextCell.x,_loc5_.y - param2.nextCell.y);
                  _loc5_ = new IntPoint(_loc5_.x - _loc7_.x,_loc5_.y - _loc7_.y);
                  param2.path.unshift(_loc5_);
                  _loc4_.setupListener(param2);
                  _loc4_.pathwalkManager.walkman.stopWalker(param2);
                  _loc4_.pathwalkManager.walkman.runPath(param2);
                  param2.resumePath();
               }
            }
         }
      }
   }
}

