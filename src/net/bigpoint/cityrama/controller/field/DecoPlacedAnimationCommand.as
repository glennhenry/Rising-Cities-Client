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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc7_:IntPoint = null;
         var _loc8_:* = 0;
         var _loc9_:Vector.<IntPoint> = null;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:Rectangle = _loc2_.matrixCoordinates;
         var _loc4_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc3_);
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(_loc14_)
         {
            if(_loc4_ != null)
            {
               if(_loc14_)
               {
                  if(_loc4_.length)
                  {
                     if(_loc14_)
                     {
                        addr008d:
                        _loc6_ = Math.floor(_loc4_.length * Math.random());
                     }
                     addr00a1:
                     _loc7_ = new IntPoint(_loc4_[_loc6_].matrixCoordinates.x,_loc4_[_loc6_].matrixCoordinates.y);
                     if(!_loc13_)
                     {
                        §§push(5);
                        if(_loc14_)
                        {
                           §§push(int(§§pop() + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE)));
                        }
                        _loc8_ = §§pop();
                     }
                     _loc9_ = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(_loc7_,_loc8_,"walkable");
                     if(_loc9_.length)
                     {
                        if(!_loc13_)
                        {
                           §§push(int(_loc2_.configPlayfieldItemVo.sizeX * _loc2_.configPlayfieldItemVo.sizeY));
                           if(!(_loc13_ && Boolean(this)))
                           {
                              _loc10_ = §§pop();
                              if(!(_loc13_ && Boolean(param1)))
                              {
                                 addr014d:
                                 _loc12_ = 0;
                              }
                              loop0:
                              while(true)
                              {
                                 §§push(_loc12_);
                                 while(§§pop() < _loc10_ * CitizenConstants.INAUGURATE_MODIFIER)
                                 {
                                    §§push(5);
                                    if(_loc14_ || Boolean(_loc3_))
                                    {
                                       §§push(int(§§pop() + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE)));
                                       if(_loc13_)
                                       {
                                          continue;
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc13_ && Boolean(_loc3_))
                                       {
                                          break;
                                       }
                                       §§push(int(Math.floor(_loc4_.length * Math.random())));
                                       if(_loc13_ && Boolean(_loc2_))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc13_ && Boolean(_loc3_))
                                    {
                                       break;
                                    }
                                    _loc7_ = new IntPoint(_loc4_[_loc6_].matrixCoordinates.x,_loc4_[_loc6_].matrixCoordinates.y);
                                    _loc9_ = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(_loc7_,_loc8_,"walkable");
                                    if(!(_loc13_ && Boolean(param1)))
                                    {
                                       _loc11_ = Math.floor(_loc9_.length * Math.random());
                                       if(_loc14_ || Boolean(param1))
                                       {
                                          addr0236:
                                          this.spawnNormalCitizen(_loc9_[_loc11_],_loc7_);
                                          if(_loc13_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       _loc12_++;
                                       continue loop0;
                                    }
                                    §§goto(addr0236);
                                 }
                                 break;
                              }
                              addr025c:
                              return;
                              addr024d:
                           }
                           §§goto(addr014d);
                        }
                        §§goto(addr024d);
                     }
                  }
                  §§goto(addr025c);
               }
               §§goto(addr00a1);
            }
            §§goto(addr025c);
         }
         §§goto(addr008d);
      }
      
      private function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
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
         if(!_loc11_)
         {
            _loc5_.bottomRight = new Point(param1.right + 1,param1.bottom + 1);
         }
         var _loc6_:Vector.<IGameObjectVo> = _loc4_.getGameObjectsByCuboid(_loc5_);
         for each(_loc7_ in _loc6_)
         {
            §§push(_loc7_ is PlaneObjectVo);
            if(_loc12_)
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(!_loc11_)
                  {
                     §§pop();
                     if(!(_loc11_ && Boolean(this)))
                     {
                        addr00e6:
                        §§push((_loc7_ as PlaneObjectVo).isConnectedToStreet);
                        if(!_loc11_)
                        {
                           addr00e5:
                           §§push(§§pop());
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                     }
                     _loc8_ = _loc7_ as PlaneObjectVo;
                     if(!(_loc11_ && Boolean(_loc3_)))
                     {
                        if(_loc3_ == null)
                        {
                           if(!(_loc11_ && Boolean(this)))
                           {
                              addr0117:
                              _loc2_.push(_loc8_);
                              if(_loc12_ || Boolean(_loc2_))
                              {
                                 continue;
                              }
                              addr0143:
                              if(_loc8_.matrixCoordinates.x + _loc8_.matrixCoordinates.y <= _loc3_.matrixCoordinates.x + _loc3_.matrixCoordinates.y)
                              {
                                 continue;
                              }
                              if(_loc11_ && Boolean(param1))
                              {
                                 continue;
                              }
                           }
                           _loc2_.push(_loc8_);
                           continue;
                        }
                        if(_loc3_ == null)
                        {
                           continue;
                        }
                        if(_loc11_ && Boolean(this))
                        {
                           continue;
                        }
                        §§goto(addr0143);
                     }
                     §§goto(addr0117);
                  }
                  §§goto(addr00e5);
               }
            }
            §§goto(addr00e6);
         }
         return _loc2_;
      }
      
      private function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc8_:UrbieObject = null;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc5_:UrbieLifeVo = _loc3_.getRandomCitizenFromMood("neutral");
         var _loc6_:SimpleWalker = new SimpleWalker(_loc5_.id,_loc5_.config.terrain);
         if(_loc10_)
         {
            _loc5_.walker = _loc6_;
            if(_loc10_)
            {
               _loc6_.waypoints.push(param1);
               if(_loc10_ || Boolean(param1))
               {
                  addr009e:
                  _loc6_.waypoints.push(param2);
               }
               §§goto(addr00a7);
            }
            §§goto(addr009e);
         }
         addr00a7:
         var _loc7_:Number = 1 + Math.random();
         if(!(_loc9_ && Boolean(param2)))
         {
            _loc6_.speed = _loc4_.pathwalkManager.terrain.tileSize / _loc7_;
            if(_loc10_)
            {
               _loc3_.addUrbie(_loc5_);
               if(_loc10_ || Boolean(_loc3_))
               {
                  §§goto(addr00fb);
               }
               §§goto(addr0107);
            }
         }
         addr00fb:
         if(_loc4_.addWalker(_loc6_))
         {
            addr0107:
            _loc8_ = _loc3_.urbieObjectDictionary[_loc6_.id];
            _loc8_.animationStartConditions.push(new AnimationConditionsVo(CitizenConstants.WALKER_PATH_COMPLETE,"jump",5,CitizenConstants.ANIMATION_ACTION_GO_RANDOM));
         }
      }
   }
}

