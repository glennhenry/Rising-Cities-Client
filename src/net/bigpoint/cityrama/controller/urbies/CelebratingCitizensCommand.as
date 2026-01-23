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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:IntPoint = null;
         var _loc7_:* = 0;
         var _loc8_:Vector.<IntPoint> = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc2_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc4_:Vector.<PlaneObjectVo> = this.customSearchForStreet(_loc2_);
         if(_loc4_.length)
         {
            try
            {
               _loc5_ = Math.floor(_loc4_.length * Math.random());
               _loc6_ = new IntPoint(_loc4_[_loc5_].matrixCoordinates.x,_loc4_[_loc5_].matrixCoordinates.y);
               if(!(_loc14_ && Boolean(this)))
               {
                  §§push(5);
                  if(_loc13_ || Boolean(param1))
                  {
                     §§push(int(§§pop() + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE)));
                  }
                  _loc7_ = §§pop();
               }
               _loc8_ = _loc3_.pathwalkManager.terrain.getDistanceBasedPath(_loc6_,_loc7_,"walkable");
               if(_loc8_.length)
               {
                  if(_loc13_)
                  {
                     §§push(int(Math.floor(_loc8_.length * Math.random())));
                     if(!(_loc14_ && Boolean(_loc2_)))
                     {
                        _loc9_ = §§pop();
                        if(_loc13_)
                        {
                           this.spawnCarCitizen(_loc8_[_loc9_],_loc6_);
                           if(_loc13_ || Boolean(param1))
                           {
                              §§push(int(_loc2_.configPlayfieldItemVo.sizeX * _loc2_.configPlayfieldItemVo.sizeY));
                              if(_loc13_)
                              {
                                 _loc10_ = §§pop();
                                 if(_loc13_ || Boolean(this))
                                 {
                                    §§push(0);
                                    if(_loc13_)
                                    {
                                       _loc11_ = §§pop();
                                       if(_loc13_ || Boolean(param1))
                                       {
                                          while(true)
                                          {
                                             §§push(_loc11_);
                                             addr028c:
                                             §§goto(addr02ac);
                                          }
                                          addr028a:
                                       }
                                       while(true)
                                       {
                                          §§push(int(Math.floor(_loc4_.length * Math.random())));
                                          if(_loc13_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!(_loc13_ || Boolean(param1)))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                _loc6_ = new IntPoint(_loc4_[_loc5_].matrixCoordinates.x,_loc4_[_loc5_].matrixCoordinates.y);
                                                _loc8_ = _loc3_.pathwalkManager.terrain.getDistanceBasedPath(_loc6_,_loc7_,"walkable");
                                                if(_loc13_ || Boolean(param1))
                                                {
                                                   _loc9_ = Math.floor(_loc8_.length * Math.random());
                                                   if(_loc13_ || Boolean(this))
                                                   {
                                                      this.spawnNormalCitizen(_loc8_[_loc9_],_loc6_);
                                                      if(!(_loc14_ && Boolean(_loc3_)))
                                                      {
                                                         addr0288:
                                                         _loc11_++;
                                                      }
                                                      §§goto(addr028a);
                                                   }
                                                   §§goto(addr0288);
                                                }
                                                §§goto(addr028a);
                                             }
                                          }
                                       }
                                       addr02ac:
                                       loop0:
                                       while(§§pop() < _loc10_ * CitizenConstants.INAUGURATE_MODIFIER)
                                       {
                                          §§push(5);
                                          if(_loc13_ || Boolean(_loc2_))
                                          {
                                             while(true)
                                             {
                                                §§push(int(§§pop() + Math.floor(Math.random() * CitizenConstants.INAUGURATE_DISTANCE)));
                                                if(!(_loc13_ || Boolean(this)))
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             break;
                                             addr019e:
                                          }
                                          do
                                          {
                                             _loc7_ = §§pop();
                                          }
                                          while(!_loc14_);
                                          
                                          break;
                                       }
                                       addr02ac:
                                       return;
                                       addr01c9:
                                    }
                                    §§goto(addr028c);
                                 }
                                 §§goto(addr01c9);
                              }
                              §§goto(addr028c);
                           }
                           §§goto(addr01c9);
                        }
                        §§goto(addr01f1);
                     }
                     §§goto(addr019e);
                  }
                  §§goto(addr028a);
               }
            }
            catch(e:Error)
            {
            }
         }
         §§goto(addr02ac);
      }
      
      private function customSearchForStreet(param1:BillboardObjectVo, param2:Boolean = false) : Vector.<PlaneObjectVo>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:Rectangle = param1.matrixCoordinates;
         var _loc4_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc3_);
         §§push(_loc4_.length == 0);
         if(_loc6_)
         {
            var _temp_3:* = §§pop();
            §§push(_temp_3);
            §§push(_temp_3);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        §§push(param1 is DecorationFieldObjectVo);
                        if(!_loc5_)
                        {
                           addr0059:
                           var _temp_4:* = §§pop();
                           addr005a:
                           §§push(_temp_4);
                           if(_temp_4)
                           {
                              if(!_loc5_)
                              {
                                 §§pop();
                                 if(!(_loc5_ && param2))
                                 {
                                    §§goto(addr0089);
                                 }
                                 §§goto(addr00ed);
                              }
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr009b);
                  }
                  addr0089:
                  §§push(param2);
                  if(_loc6_)
                  {
                     addr0088:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc6_ || Boolean(param1))
                     {
                        addr009b:
                        _loc3_.topLeft = new Point(_loc3_.topLeft.x - 2,_loc3_.topLeft.y - 2);
                        if(!(_loc5_ && param2))
                        {
                           _loc3_.bottomRight = new Point(_loc3_.bottomRight.x + 2,_loc3_.bottomRight.y + 2);
                        }
                     }
                     addr00ed:
                     _loc4_ = this.customSearchForStreet(param1,true);
                  }
                  return _loc4_;
               }
               §§goto(addr0059);
            }
            §§goto(addr005a);
         }
         §§goto(addr0059);
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.spawnNormalCitizen(param1,param2);
         }
      }
   }
}

