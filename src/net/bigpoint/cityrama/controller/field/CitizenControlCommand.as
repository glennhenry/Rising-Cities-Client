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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      protected function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc3_:PlaneObjectVo = null;
         var _loc7_:IGameObjectVo = null;
         var _loc8_:PlaneObjectVo = null;
         var _loc2_:Vector.<PlaneObjectVo> = new Vector.<PlaneObjectVo>();
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:Cuboid = new Cuboid();
         _loc5_.topLeft = new Point(param1.left - 1,param1.top - 1);
         if(_loc12_)
         {
            _loc5_.bottomRight = new Point(param1.right + 1,param1.bottom + 1);
         }
         var _loc6_:Vector.<IGameObjectVo> = _loc4_.getGameObjectsByCuboid(_loc5_);
         for each(_loc7_ in _loc6_)
         {
            §§push(_loc7_ is PlaneObjectVo);
            if(_loc12_ || Boolean(this))
            {
               var _temp_5:* = §§pop();
               §§push(_temp_5);
               if(_temp_5)
               {
                  if(!_loc11_)
                  {
                     §§pop();
                     if(!_loc11_)
                     {
                        addr00ef:
                        §§push((_loc7_ as PlaneObjectVo).isConnectedToStreet);
                        if(_loc12_ || Boolean(param1))
                        {
                           addr00ee:
                           §§push(§§pop());
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                     }
                     _loc8_ = _loc7_ as PlaneObjectVo;
                     if(!_loc11_)
                     {
                        if(_loc3_ == null)
                        {
                           if(_loc11_ && Boolean(_loc2_))
                           {
                              continue;
                           }
                           addr0118:
                           _loc2_.push(_loc8_);
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              continue;
                           }
                        }
                        else
                        {
                           if(_loc3_ == null)
                           {
                              continue;
                           }
                           if(!_loc11_)
                           {
                              if(_loc8_.matrixCoordinates.x + _loc8_.matrixCoordinates.y <= _loc3_.matrixCoordinates.x + _loc3_.matrixCoordinates.y)
                              {
                                 continue;
                              }
                              if(!(_loc12_ || Boolean(param1)))
                              {
                                 continue;
                              }
                           }
                        }
                        _loc2_.push(_loc8_);
                        continue;
                     }
                     §§goto(addr0118);
                  }
                  §§goto(addr00ee);
               }
            }
            §§goto(addr00ef);
         }
         return _loc2_;
      }
      
      protected function spawnCarCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc8_:UrbieObject = null;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.getUrbieByXMLId("moveInTruck");
         var _loc6_:SimpleWalker = new SimpleWalker(_loc5_.id,_loc5_.config.terrain);
         if(_loc10_)
         {
            _loc5_.walker = _loc6_;
            if(_loc10_)
            {
               _loc6_.waypoints.push(param1);
               if(!_loc9_)
               {
                  addr0087:
                  _loc6_.waypoints.push(param2);
               }
               §§goto(addr0090);
            }
            §§goto(addr0087);
         }
         addr0090:
         §§push(0.5);
         if(_loc10_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            _loc6_.speed = _loc4_.pathwalkManager.terrain.tileSize / _loc7_;
            if(!(_loc9_ && Boolean(param1)))
            {
               _loc3_.addUrbie(_loc5_);
               if(_loc10_ || Boolean(_loc3_))
               {
                  §§goto(addr00f6);
               }
               §§goto(addr0102);
            }
         }
         addr00f6:
         if(_loc4_.addWalker(_loc6_))
         {
            addr0102:
            _loc8_ = _loc3_.urbieObjectDictionary[_loc6_.id];
            if(_loc8_ != null)
            {
               if(!(_loc9_ && Boolean(this)))
               {
                  _loc8_.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"_movein",5,CitizenConstants.ANIMATION_ACTION_GO_RANDOM));
               }
            }
         }
      }
      
      protected function spawnCarForMissionCitizen(param1:IntPoint, param2:IntPoint, param3:String) : Boolean
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc7_:FriendlyRisy = null;
         var _loc8_:* = NaN;
         var _loc9_:UrbieObject = null;
         var _loc4_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc6_:UrbieLifeVo = _loc4_.getUrbieByXMLId(param3);
         if(_loc6_)
         {
            _loc7_ = new FriendlyRisy(_loc6_.id,_loc6_.config.terrain);
            if(_loc10_)
            {
               _loc6_.walker = _loc7_;
               if(_loc10_ || Boolean(param2))
               {
                  _loc7_.waypoints.push(param1);
                  if(_loc10_)
                  {
                     _loc7_.waypoints.push(param2);
                     if(_loc10_)
                     {
                        _loc7_.home = param1;
                        if(!_loc11_)
                        {
                           addr00c7:
                           §§push(0.25);
                           if(!_loc11_)
                           {
                              §§push(§§pop());
                           }
                           _loc8_ = §§pop();
                           if(!(_loc11_ && Boolean(param3)))
                           {
                              _loc7_.speed = _loc5_.pathwalkManager.terrain.tileSize / _loc8_;
                              if(!_loc11_)
                              {
                                 addr00f9:
                                 _loc4_.addUrbie(_loc6_);
                                 if(!_loc11_)
                                 {
                                    §§goto(addr0107);
                                 }
                                 §§goto(addr0113);
                              }
                              §§goto(addr0107);
                           }
                           §§goto(addr0113);
                        }
                        §§goto(addr00f9);
                     }
                     addr0107:
                     if(_loc5_.addWalker(_loc7_))
                     {
                        addr0113:
                        _loc9_ = _loc4_.urbieObjectDictionary[_loc7_.id];
                        if(_loc9_ != null)
                        {
                           if(!_loc11_)
                           {
                              _loc9_.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"_emergency",8,CitizenConstants.ANIMATION_ACTION_GO_HOME));
                              if(!_loc11_)
                              {
                                 §§push(true);
                                 if(!_loc11_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr0172:
                                 return false;
                              }
                              return §§pop();
                           }
                           §§goto(addr0174);
                        }
                        §§goto(addr0172);
                     }
                     §§goto(addr0174);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr00f9);
            }
            §§goto(addr0113);
         }
         addr0174:
         return false;
      }
      
      protected function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.getRandomCitizenFromMood("neutral");
         var _loc6_:SimpleWalker = new SimpleWalker(_loc5_.id,_loc5_.config.terrain);
         if(_loc9_)
         {
            _loc5_.walker = _loc6_;
            if(_loc9_)
            {
               _loc6_.waypoints.push(param1);
               if(!_loc10_)
               {
                  _loc6_.waypoints.push(param2);
               }
            }
         }
         var _loc7_:Number = 1 + Math.random();
         if(_loc9_)
         {
            _loc6_.speed = _loc4_.pathwalkManager.terrain.tileSize / _loc7_;
            if(!(_loc10_ && Boolean(_loc3_)))
            {
               _loc3_.addUrbie(_loc5_);
               if(!(_loc10_ && Boolean(this)))
               {
                  addr00e0:
                  _loc4_.addWalker(_loc6_);
               }
            }
            var _loc8_:UrbieObject = _loc3_.urbieObjectDictionary[_loc6_.id];
            if(_loc8_)
            {
               if(_loc9_ || Boolean(_loc3_))
               {
                  _loc8_.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"jump",5,CitizenConstants.ANIMATION_ACTION_GO_RANDOM));
               }
            }
            return;
         }
         §§goto(addr00e0);
      }
   }
}

