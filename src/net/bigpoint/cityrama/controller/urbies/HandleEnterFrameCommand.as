package net.bigpoint.cityrama.controller.urbies
{
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class HandleEnterFrameCommand extends SimpleCommand
   {
      
      public function HandleEnterFrameCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc6_:SimpleWalker = null;
         var _loc7_:UrbieObject = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc2_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_loc12_)
         {
            if(_loc3_)
            {
               addr0060:
               for each(_loc6_ in _loc3_.pathwalkManager.walkerContainer.walkers)
               {
                  §§push(_loc6_.paused);
                  if(!_loc13_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc13_ && Boolean(param1)))
                        {
                           addr00a0:
                           if(_loc3_.allPaused)
                           {
                              if(!(_loc12_ || Boolean(param1)))
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              _loc7_ = _loc2_.urbieObjectDictionary[_loc6_.id];
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              if(!(_loc13_ && Boolean(param1)))
                              {
                                 §§push(_loc7_.width / 2);
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    §§push(§§pop());
                                    if(_loc12_)
                                    {
                                       _loc8_ = §§pop();
                                       if(!_loc13_)
                                       {
                                          §§push(_loc7_.length / 2);
                                          if(_loc12_ || Boolean(this))
                                          {
                                             §§push(§§pop());
                                             if(_loc12_ || Boolean(_loc2_))
                                             {
                                                _loc9_ = §§pop();
                                                if(!(_loc12_ || Boolean(this)))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc7_.urbieLifeVo);
                                                if(!_loc13_)
                                                {
                                                   §§push(§§pop().config);
                                                   if(!(_loc13_ && Boolean(param1)))
                                                   {
                                                      §§push(§§pop().id);
                                                      if(_loc12_ || Boolean(this))
                                                      {
                                                         §§push("_bottom");
                                                         if(!_loc13_)
                                                         {
                                                            if(§§pop().split(§§pop()).length >= 2)
                                                            {
                                                               if(!_loc12_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(-2);
                                                               if(!_loc13_)
                                                               {
                                                                  §§push(_loc3_.pathwalkManager);
                                                                  if(!(_loc13_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(§§pop().terrain);
                                                                     if(_loc12_ || Boolean(this))
                                                                     {
                                                                        §§push(§§pop().tileSize);
                                                                        if(!_loc13_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc12_ || Boolean(this))
                                                                           {
                                                                              addr01c1:
                                                                              §§push(_loc7_.isoBounds.width / 2);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc13_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc13_ && Boolean(this)))
                                                                                    {
                                                                                       addr01fc:
                                                                                       _loc4_ = §§pop();
                                                                                       if(_loc12_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr020c:
                                                                                          §§push(-2);
                                                                                          if(!(_loc13_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             addr0226:
                                                                                             addr0223:
                                                                                             addr0220:
                                                                                             §§push(§§pop() + _loc3_.pathwalkManager.terrain.tileSize);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr022d:
                                                                                                §§push(_loc7_.isoBounds.length / 2);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   addr023e:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc12_ || Boolean(param1))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc12_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         addr025c:
                                                                                                         _loc5_ = §§pop();
                                                                                                         if(_loc13_ && Boolean(param1))
                                                                                                         {
                                                                                                            addr02d5:
                                                                                                            addr02e2:
                                                                                                            addr02d7:
                                                                                                            §§push(2 - _loc7_.isoBounds.length / 2);
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               addr02e9:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc12_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     addr039a:
                                                                                                                     §§push(_loc7_);
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     if(_loc12_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(_loc12_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr03bf:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           §§push(_loc6_.y);
                                                                                                                           if(!(_loc13_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr03dd:
                                                                                                                              §§push(§§pop() + _loc5_);
                                                                                                                           }
                                                                                                                           §§pop().moveTo(§§pop(),§§pop(),0);
                                                                                                                           if(_loc12_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr03f4:
                                                                                                                              _loc7_.invalidatePosition();
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr03dd);
                                                                                                                     }
                                                                                                                     §§goto(addr03bf);
                                                                                                                  }
                                                                                                                  §§goto(addr03f4);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr036d:
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     addr0375:
                                                                                                                     §§push(_loc9_);
                                                                                                                     if(!_loc13_)
                                                                                                                     {
                                                                                                                        addr0392:
                                                                                                                        addr037d:
                                                                                                                        addr038a:
                                                                                                                        addr0389:
                                                                                                                        addr0387:
                                                                                                                        addr0384:
                                                                                                                        addr0381:
                                                                                                                        §§push(§§pop() - _loc3_.pathwalkManager.terrain.tileSize / 2);
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           addr0391:
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        _loc5_ = §§pop();
                                                                                                                        if(!_loc13_)
                                                                                                                        {
                                                                                                                           §§goto(addr039a);
                                                                                                                        }
                                                                                                                        §§goto(addr03f4);
                                                                                                                     }
                                                                                                                     §§goto(addr0391);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr039a);
                                                                                                            }
                                                                                                            §§goto(addr0392);
                                                                                                         }
                                                                                                         §§goto(addr039a);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr030c:
                                                                                                         §§push(_loc3_.pathwalkManager);
                                                                                                         if(!(_loc13_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§push(§§pop().terrain);
                                                                                                            if(_loc12_ || Boolean(param1))
                                                                                                            {
                                                                                                               §§push(§§pop().tileSize);
                                                                                                               if(_loc12_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  if(!(_loc13_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc12_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                        addr035f:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              §§goto(addr036d);
                                                                                                                           }
                                                                                                                           §§goto(addr0392);
                                                                                                                        }
                                                                                                                        §§goto(addr037d);
                                                                                                                     }
                                                                                                                     §§goto(addr038a);
                                                                                                                  }
                                                                                                                  §§goto(addr0389);
                                                                                                               }
                                                                                                               §§goto(addr0387);
                                                                                                            }
                                                                                                            §§goto(addr0384);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0381);
                                                                                                   }
                                                                                                   §§goto(addr025c);
                                                                                                }
                                                                                                §§goto(addr035f);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr02be:
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc13_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   addr02cd:
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      §§goto(addr02d5);
                                                                                                   }
                                                                                                   §§goto(addr03f4);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0392);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr029e:
                                                                                             §§push(_loc7_.isoBounds.width / 2);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc13_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   §§goto(addr02be);
                                                                                                }
                                                                                                §§goto(addr0392);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02e2);
                                                                                       }
                                                                                       §§goto(addr039a);
                                                                                    }
                                                                                    §§goto(addr022d);
                                                                                 }
                                                                                 §§goto(addr030c);
                                                                              }
                                                                              §§goto(addr023e);
                                                                           }
                                                                           §§goto(addr02e9);
                                                                        }
                                                                        §§goto(addr0226);
                                                                     }
                                                                     §§goto(addr0223);
                                                                  }
                                                                  §§goto(addr0220);
                                                               }
                                                               §§goto(addr029e);
                                                            }
                                                            else
                                                            {
                                                               addr027c:
                                                               addr0279:
                                                               addr0277:
                                                               addr0275:
                                                               if(_loc7_.urbieLifeVo.config.id.split("_top").length >= 2)
                                                               {
                                                                  if(!(_loc13_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§goto(addr029e);
                                                                     }
                                                                     §§goto(addr02d7);
                                                                  }
                                                                  §§goto(addr0375);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§goto(addr030c);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr036d);
                                                         }
                                                         §§goto(addr027c);
                                                      }
                                                      §§goto(addr0279);
                                                   }
                                                   §§goto(addr0277);
                                                }
                                                §§goto(addr0275);
                                             }
                                             §§goto(addr036d);
                                          }
                                          §§goto(addr02cd);
                                       }
                                       §§goto(addr020c);
                                    }
                                    §§goto(addr01fc);
                                 }
                                 §§goto(addr01c1);
                              }
                              §§goto(addr020c);
                           }
                        }
                        _loc6_.pausePath();
                     }
                     continue;
                  }
                  §§goto(addr00a0);
               }
            }
            return;
         }
         §§goto(addr0060);
      }
   }
}

