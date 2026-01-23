package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.as3toolbox.pathwalkmanager.PathWalkManager;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.SquareObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CitizenRebuildStreetmapCommand extends SimpleCommand implements ICommand
   {
      
      public function CitizenRebuildStreetmapCommand()
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
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:StreetObject = null;
         var _loc4_:SquareObject = null;
         var _loc5_:PierObject = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(_loc9_)
         {
            §§push(PathWalkManager.instance);
            if(_loc9_ || Boolean(this))
            {
               §§push(§§pop());
               if(_loc9_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || Boolean(this))
                        {
                           §§pop();
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              addr007f:
                              §§push(PathWalkManager.instance);
                              if(!_loc8_)
                              {
                                 §§push(§§pop().terrain);
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       addr00a4:
                                       var _temp_7:* = §§pop();
                                       addr00a5:
                                       §§push(_temp_7);
                                       if(_temp_7)
                                       {
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             addr00b7:
                                             §§pop();
                                             if(!_loc8_)
                                             {
                                                §§push(PathWalkManager.instance);
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   §§push(§§pop().terrain);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(§§pop().map);
                                                      if(!(_loc8_ && Boolean(_loc3_)))
                                                      {
                                                         addr00ed:
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               addr0103:
                                                               PathWalkManager.instance.terrain.map.setAllTilesUnusable();
                                                               addr0100:
                                                               addr00fd:
                                                            }
                                                            addr0108:
                                                            var _loc6_:* = 0;
                                                            var _loc7_:* = _loc2_.streetObjectList;
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc7_,_loc6_));
                                                               if(!(_loc9_ || Boolean(_loc2_)))
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!(_loc8_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc9_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(_loc9_ || Boolean(_loc2_))
                                                                              {
                                                                                 addr028b:
                                                                                 _loc7_ = _loc2_.squareObjectList;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc7_,_loc6_));
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    addr041f:
                                                                                    addr0427:
                                                                                    loop3:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                       if(_loc9_ || Boolean(this))
                                                                                       {
                                                                                          §§push(PathWalkManager.instance);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(§§pop().terrain);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(§§pop().map);
                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   §§push(_loc5_.pierObjectVo);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§pop().setUseable(§§pop().matrixCoordinates.x,_loc5_.pierObjectVo.matrixCoordinates.y,"walkable");
                                                                                                      if(_loc9_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0403:
                                                                                                         PathWalkManager.instance.terrain.map.setUseable(_loc5_.pierObjectVo.matrixCoordinates.x,_loc5_.pierObjectVo.matrixCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
                                                                                                         addr03fe:
                                                                                                         addr03fb:
                                                                                                         addr03f8:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      break;
                                                                                                      addr041c:
                                                                                                   }
                                                                                                   §§goto(addr0403);
                                                                                                }
                                                                                                §§goto(addr03fe);
                                                                                             }
                                                                                             §§goto(addr03fb);
                                                                                          }
                                                                                          §§goto(addr03f8);
                                                                                       }
                                                                                       §§goto(addr041c);
                                                                                    }
                                                                                    §§goto(addr0425);
                                                                                 }
                                                                                 addr032f:
                                                                              }
                                                                              addr036c:
                                                                              _loc7_ = _loc2_.pierObjectList;
                                                                              §§goto(addr041c);
                                                                           }
                                                                           addr035c:
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc8_ && Boolean(param1)))
                                                                           {
                                                                              §§goto(addr036c);
                                                                           }
                                                                        }
                                                                        §§goto(addr0425);
                                                                     }
                                                                     §§goto(addr028b);
                                                                  }
                                                                  addr0342:
                                                                  if(!(_loc8_ && Boolean(_loc2_)))
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§goto(addr035c);
                                                                        §§push(0);
                                                                     }
                                                                     §§goto(addr0425);
                                                                  }
                                                                  §§goto(addr036c);
                                                               }
                                                               else
                                                               {
                                                                  _loc3_ = §§nextvalue(_loc6_,_loc7_);
                                                                  if(!(_loc8_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(_loc3_.streetObjectVo);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(§§pop().configPlayfieldItemVo.driveable)
                                                                        {
                                                                           if(_loc9_ || Boolean(_loc3_))
                                                                           {
                                                                              §§push(PathWalkManager.instance);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(§§pop().terrain);
                                                                                 if(_loc9_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(§§pop().map);
                                                                                    if(!(_loc8_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       §§push(_loc3_.streetObjectVo);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§pop().setUseable(§§pop().matrixCoordinates.x,_loc3_.streetObjectVo.matrixCoordinates.y,"driveable");
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr01a5:
                                                                                          addr01a9:
                                                                                          if(_loc3_.streetObjectVo.configPlayfieldItemVo.walkable)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(PathWalkManager.instance);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(§§pop().terrain);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop().map);
                                                                                                   if(!(_loc8_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      addr01df:
                                                                                                      §§push(_loc3_.streetObjectVo);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§pop().setUseable(§§pop().matrixCoordinates.x,_loc3_.streetObjectVo.matrixCoordinates.y,"walkable");
                                                                                                         addr01e9:
                                                                                                         if(_loc8_ && Boolean(_loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr0224:
                                                                                                         addr0221:
                                                                                                         addr021e:
                                                                                                         addr0218:
                                                                                                         §§push(PathWalkManager.instance.terrain.map);
                                                                                                         §§push(_loc3_.streetObjectVo);
                                                                                                      }
                                                                                                      §§pop().setUseable(§§pop().matrixCoordinates.x,_loc3_.streetObjectVo.matrixCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr0224);
                                                                                                }
                                                                                                §§goto(addr0221);
                                                                                             }
                                                                                             §§goto(addr021e);
                                                                                          }
                                                                                          §§goto(addr0218);
                                                                                       }
                                                                                       §§goto(addr01e9);
                                                                                    }
                                                                                    §§goto(addr01df);
                                                                                 }
                                                                                 §§goto(addr0221);
                                                                              }
                                                                              §§goto(addr021e);
                                                                           }
                                                                           §§goto(addr0218);
                                                                        }
                                                                        §§goto(addr01a5);
                                                                     }
                                                                     §§goto(addr01a9);
                                                                  }
                                                                  §§goto(addr01a5);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr0342);
                                                                  }
                                                                  addr0425:
                                                                  return;
                                                               }
                                                               _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(PathWalkManager.instance);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop().terrain);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop().map);
                                                                        if(_loc9_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(_loc4_.squareObjectVo);
                                                                           if(!(_loc8_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§pop().setUseable(§§pop().matrixCoordinates.x,_loc4_.squareObjectVo.matrixCoordinates.y,"walkable");
                                                                              if(_loc9_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr0316:
                                                                                 PathWalkManager.instance.terrain.map.setUseable(_loc4_.squareObjectVo.matrixCoordinates.x,_loc4_.squareObjectVo.matrixCoordinates.y,Terrain.TYPE_ALL_TERRAINS);
                                                                                 addr0311:
                                                                                 addr030e:
                                                                                 addr030b:
                                                                                 addr0305:
                                                                              }
                                                                              §§goto(addr032f);
                                                                           }
                                                                           §§goto(addr0316);
                                                                        }
                                                                        §§goto(addr0311);
                                                                     }
                                                                     §§goto(addr030e);
                                                                  }
                                                                  §§goto(addr030b);
                                                               }
                                                               §§goto(addr0305);
                                                            }
                                                            §§goto(addr041f);
                                                         }
                                                         §§goto(addr0427);
                                                      }
                                                      §§goto(addr0103);
                                                   }
                                                   §§goto(addr0100);
                                                }
                                                §§goto(addr00fd);
                                             }
                                             §§goto(addr0108);
                                          }
                                       }
                                       §§goto(addr00ed);
                                    }
                                    §§goto(addr00b7);
                                 }
                                 §§goto(addr0100);
                              }
                              §§goto(addr00fd);
                           }
                           §§goto(addr0108);
                        }
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00b7);
            }
            §§goto(addr00fd);
         }
         §§goto(addr007f);
      }
   }
}

