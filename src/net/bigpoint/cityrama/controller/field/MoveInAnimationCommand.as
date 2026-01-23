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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:Rectangle = _loc2_.matrixCoordinates;
         var _loc4_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc3_);
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(!(_loc13_ && Boolean(param1)))
         {
            if(_loc4_.length)
            {
               if(!_loc13_)
               {
                  addr0087:
                  _loc6_ = Math.floor(_loc4_.length * Math.random());
               }
               _loc7_ = new IntPoint(_loc4_[_loc6_].matrixCoordinates.x,_loc4_[_loc6_].matrixCoordinates.y);
               if(!(_loc13_ && Boolean(_loc3_)))
               {
                  §§push(5);
                  if(_loc14_ || Boolean(_loc2_))
                  {
                     §§push(int(§§pop() + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE)));
                  }
                  _loc8_ = §§pop();
               }
               _loc9_ = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(_loc7_,_loc8_,Terrain.TYPE_ALL_TERRAINS);
               if(_loc9_.length)
               {
                  if(!(_loc13_ && Boolean(param1)))
                  {
                     §§push(int(Math.floor(_loc9_.length * Math.random())));
                     if(!(_loc13_ && Boolean(_loc2_)))
                     {
                        _loc10_ = §§pop();
                        if(!_loc13_)
                        {
                           this.spawnCarCitizen(_loc9_[_loc10_],_loc7_);
                           if(_loc14_ || Boolean(this))
                           {
                              §§push(int(_loc2_.configPlayfieldItemVo.sizeX * _loc2_.configPlayfieldItemVo.sizeY));
                              if(!(_loc13_ && Boolean(_loc2_)))
                              {
                                 _loc11_ = §§pop();
                                 if(_loc14_ || Boolean(_loc3_))
                                 {
                                    addr01a5:
                                    _loc12_ = 0;
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §§push(_loc12_);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(_loc11_);
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop() * CitizenConstants.INAUGURATE_MODIFIER)
                                          {
                                             break loop0;
                                          }
                                          §§push(5);
                                          if(_loc13_)
                                          {
                                             break;
                                          }
                                          §§push(int(§§pop() + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE)));
                                          if(!_loc14_)
                                          {
                                             break;
                                          }
                                          _loc8_ = §§pop();
                                          if(_loc13_ && Boolean(this))
                                          {
                                             break loop1;
                                          }
                                          §§push(int(Math.floor(_loc4_.length * Math.random())));
                                          if(!(_loc13_ && Boolean(this)))
                                          {
                                             var _temp_13:* = §§pop();
                                             §§push(_temp_13);
                                             §§push(_temp_13);
                                             if(_loc13_ && Boolean(param1))
                                             {
                                                continue;
                                             }
                                             _loc6_ = §§pop();
                                             if(_loc13_ && Boolean(_loc2_))
                                             {
                                                break;
                                             }
                                          }
                                          §§push(-1);
                                          if(_loc13_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                break loop1;
                                             }
                                             _loc7_ = new IntPoint(_loc4_[_loc6_].matrixCoordinates.x,_loc4_[_loc6_].matrixCoordinates.y);
                                             _loc9_ = _loc5_.pathwalkManager.terrain.getDistanceBasedPath(_loc7_,_loc8_,"walkable");
                                             if(!(_loc13_ && Boolean(_loc3_)))
                                             {
                                                _loc10_ = Math.floor(_loc9_.length * Math.random());
                                                if(!(_loc13_ && Boolean(_loc3_)))
                                                {
                                                   addr02b0:
                                                   this.spawnNormalCitizen(_loc9_[_loc10_],_loc7_);
                                                }
                                                addr02bf:
                                                _loc12_++;
                                                if(_loc14_ || Boolean(_loc2_))
                                                {
                                                   break loop1;
                                                }
                                                break loop0;
                                             }
                                             §§goto(addr02b0);
                                          }
                                          §§goto(addr02bf);
                                       }
                                    }
                                 }
                                 addr02de:
                                 super.execute(param1);
                                 return;
                                 addr02cf:
                              }
                              §§goto(addr01a5);
                           }
                        }
                        §§goto(addr02cf);
                     }
                     §§goto(addr01a5);
                  }
                  §§goto(addr02cf);
               }
            }
            §§goto(addr02de);
         }
         §§goto(addr0087);
      }
      
      override protected function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
      {
         return super.getValidStreet(param1);
      }
      
      override protected function spawnCarCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super.spawnCarCitizen(param1,param2);
         }
      }
      
      override protected function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super.spawnNormalCitizen(param1,param2);
         }
      }
   }
}

