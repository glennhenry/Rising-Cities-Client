package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class InteractiveClickForDestroyCommand extends SimpleCommand
   {
      
      public function InteractiveClickForDestroyCommand()
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
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc5_:BillboardObject = null;
         var _loc6_:IPlaneObject = null;
         var _loc7_:* = 0;
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:IGameObjectVo = null;
         var _loc2_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         if(_loc13_ || Boolean(param1))
         {
            §§push(_loc3_.clickObject);
            if(_loc13_ || Boolean(_loc2_))
            {
               if(§§pop() != null)
               {
                  if(!(_loc14_ && Boolean(param1)))
                  {
                     addr00a9:
                     §§push(_loc3_.clickObject);
                     if(_loc13_ || Boolean(this))
                     {
                        §§push(§§pop() is BillboardObject);
                        if(_loc13_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc14_ && Boolean(param1)))
                              {
                                 §§push(_loc3_.clickObject);
                                 if(!_loc14_)
                                 {
                                    §§push((§§pop() as BillboardObject).billboardObjectVo.isExpansionObject);
                                    if(!(_loc14_ && Boolean(param1)))
                                    {
                                       addr00f6:
                                       if(!§§pop())
                                       {
                                          if(_loc13_ || Boolean(this))
                                          {
                                             §§push(_loc3_.clickObject);
                                             if(!_loc14_)
                                             {
                                                addr0112:
                                                §§push(§§pop() is ExpansionFieldObject);
                                                if(!_loc14_)
                                                {
                                                   addr011c:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc14_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(_loc3_.clickObject);
                                                         if(_loc13_ || Boolean(_loc3_))
                                                         {
                                                            _loc5_ = §§pop() as BillboardObject;
                                                            _loc5_.billboardObjectVo.userInteractionLocked = true;
                                                         }
                                                         else
                                                         {
                                                            addr0168:
                                                            addr0164:
                                                            if(§§pop() is IPlaneObject)
                                                            {
                                                               if(_loc13_ || Boolean(_loc3_))
                                                               {
                                                                  addr017e:
                                                                  _loc6_ = _loc3_.clickObject as IPlaneObject;
                                                                  addr0187:
                                                                  _loc3_.clickObject = null;
                                                                  if(_loc14_ && Boolean(this))
                                                                  {
                                                                     addr01e2:
                                                                     _loc9_ = _loc4_.getColBy2DCoordinates(_loc7_,_loc8_);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(int(_loc9_.length - 1));
                                                                           if(_loc13_ || Boolean(_loc2_))
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              §§push(_loc10_);
                                                                              if(!(_loc14_ && Boolean(_loc3_)))
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           _loc11_ = §§pop();
                                                                        }
                                                                        loop0:
                                                                        do
                                                                        {
                                                                           §§push(_loc11_);
                                                                           while(§§pop() >= 0)
                                                                           {
                                                                              §§push(_loc9_[_loc11_] == null);
                                                                              if(!(_loc14_ && Boolean(this)))
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    var _temp_20:* = §§pop();
                                                                                    §§push(_temp_20);
                                                                                    if(_temp_20)
                                                                                    {
                                                                                       if(_loc13_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr0259:
                                                                                          §§pop();
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             addr0279:
                                                                                             if(_loc9_[_loc11_] is IGameObjectVo)
                                                                                             {
                                                                                                if(_loc14_ && Boolean(_loc2_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr028b:
                                                                                                _loc12_ = _loc9_[_loc11_] as IGameObjectVo;
                                                                                                §§push(_loc12_.configPlayfieldItemVo.destroyable);
                                                                                                if(!(_loc14_ && Boolean(param1)))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc13_ || Boolean(this))
                                                                                                   {
                                                                                                      addr02bf:
                                                                                                      var _temp_26:* = §§pop();
                                                                                                      §§push(_temp_26);
                                                                                                      if(_temp_26)
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc13_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§push(!_loc12_);
                                                                                                               if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  §§push(§§pop() is IInteraction);
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     addr02f4:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§push(_loc12_ is BillboardObjectVo);
                                                                                                                           if(_loc13_ || Boolean(_loc2_))
                                                                                                                           {
                                                                                                                              addr0312:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    _loc5_ = _loc4_.getObjectByVo(_loc12_) as BillboardObject;
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr0339:
                                                                                                                                    _loc6_ = _loc4_.getPlaneObjectByVo(_loc12_) as IPlaneObject;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr0335:
                                                                                                                                 if(_loc12_ is PlaneObjectVo)
                                                                                                                                 {
                                                                                                                                    §§goto(addr0339);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr034a:
                                                                                                                              §§push(_loc11_);
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                 if(_loc13_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           §§goto(addr0335);
                                                                                                                        }
                                                                                                                        §§goto(addr0339);
                                                                                                                     }
                                                                                                                     §§goto(addr034a);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0312);
                                                                                                            }
                                                                                                            §§goto(addr0339);
                                                                                                         }
                                                                                                         §§goto(addr0312);
                                                                                                      }
                                                                                                      §§goto(addr02f4);
                                                                                                   }
                                                                                                   §§goto(addr0312);
                                                                                                }
                                                                                                §§goto(addr02bf);
                                                                                             }
                                                                                             §§goto(addr034a);
                                                                                          }
                                                                                          §§goto(addr028b);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0279);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0259);
                                                                           }
                                                                           break;
                                                                        }
                                                                        while(_loc11_ = §§pop(), _loc13_ || Boolean(_loc3_));
                                                                        
                                                                     }
                                                                  }
                                                                  addr0379:
                                                                  §§push(Boolean(_loc5_));
                                                                  if(_loc13_)
                                                                  {
                                                                     var _temp_31:* = §§pop();
                                                                     §§push(_temp_31);
                                                                     §§push(_temp_31);
                                                                     if(_loc13_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§push(_loc5_.billboardObjectVo);
                                                                                 if(_loc13_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§push(§§pop().interactionBlockedByEmergency());
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(!(_loc14_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          addr03c5:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push(_loc5_ is BoulderFieldObject);
                                                                                                if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         §§goto(addr03ed);
                                                                                                      }
                                                                                                      §§goto(addr04cb);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      sendNotification(MiniLayerConstants.OPEN_MINI_DEMOLITION,_loc5_);
                                                                                                      if(!(_loc13_ || Boolean(_loc2_)))
                                                                                                      {
                                                                                                         addr045c:
                                                                                                         §§push(_loc5_.billboardObjectVo);
                                                                                                         if(!(_loc14_ && Boolean(param1)))
                                                                                                         {
                                                                                                            addr046e:
                                                                                                            §§push(§§pop().interactionBlockedByEmergency());
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               addr0478:
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  addr047f:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        addr0489:
                                                                                                                        sendNotification(MiniLayerConstants.OPEN_MINI_MOVE_BLOCKED);
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           addr049e:
                                                                                                                           _loc5_.billboardObjectVo.userInteractionLocked = false;
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§goto(addr04a8);
                                                                                                                           }
                                                                                                                           §§goto(addr0504);
                                                                                                                        }
                                                                                                                        §§goto(addr04cb);
                                                                                                                     }
                                                                                                                     §§goto(addr0523);
                                                                                                                  }
                                                                                                                  §§goto(addr04a8);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr04b9);
                                                                                                         }
                                                                                                         §§goto(addr049e);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr04a8);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr044d:
                                                                                                   §§pop();
                                                                                                   if(_loc13_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§goto(addr045c);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0489);
                                                                                             }
                                                                                             addr03ed:
                                                                                             sendNotification(ApplicationNotificationConstants.BOULDER_CLICKED,_loc5_);
                                                                                             if(!(_loc14_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                addr04a8:
                                                                                                §§push(Boolean(_loc6_));
                                                                                                if(!(_loc14_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   addr04b9:
                                                                                                   var _temp_37:* = §§pop();
                                                                                                   addr04ba:
                                                                                                   §§push(_temp_37);
                                                                                                   if(_temp_37)
                                                                                                   {
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         addr04c4:
                                                                                                         §§pop();
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            addr04cb:
                                                                                                            §§push(_loc6_.objectVo);
                                                                                                            if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               addr04e5:
                                                                                                               if(Boolean(§§pop().configPlayfieldItemVo.destroyable))
                                                                                                               {
                                                                                                                  if(_loc13_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr0509:
                                                                                                                     (_loc6_.objectVo as IFloaterObjectVo).informationFloaterPhase = (_loc6_.objectVo as PlaneObjectVo).getDestructionPhase();
                                                                                                                     addr0504:
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        addr0523:
                                                                                                                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DESTROY_GROUND,_loc6_);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           addr0536:
                                                                                                                           _loc3_.reset();
                                                                                                                        }
                                                                                                                        §§goto(addr053b);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0536);
                                                                                                            }
                                                                                                            §§goto(addr0509);
                                                                                                         }
                                                                                                         §§goto(addr0536);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr04e5);
                                                                                                }
                                                                                                §§goto(addr04c4);
                                                                                             }
                                                                                             addr053b:
                                                                                             return;
                                                                                          }
                                                                                          §§push(Boolean(_loc5_));
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             addr0434:
                                                                                             var _temp_43:* = §§pop();
                                                                                             §§push(_temp_43);
                                                                                             §§push(_temp_43);
                                                                                             if(_loc13_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr0443:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§goto(addr044d);
                                                                                                   }
                                                                                                   §§goto(addr04e5);
                                                                                                }
                                                                                                §§goto(addr047f);
                                                                                             }
                                                                                             §§goto(addr04ba);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0478);
                                                                                    }
                                                                                    §§goto(addr047f);
                                                                                 }
                                                                                 §§goto(addr046e);
                                                                              }
                                                                              §§goto(addr04a8);
                                                                           }
                                                                           §§goto(addr0478);
                                                                        }
                                                                        §§goto(addr03c5);
                                                                     }
                                                                     §§goto(addr0443);
                                                                  }
                                                                  §§goto(addr0434);
                                                               }
                                                               else
                                                               {
                                                                  addr01e0:
                                                                  _loc8_ = Math.floor(_loc2_.mouse2dPoint.y / _loc2_.tileSize);
                                                                  addr01ce:
                                                               }
                                                               §§goto(addr01e2);
                                                            }
                                                         }
                                                         §§goto(addr0187);
                                                      }
                                                      §§goto(addr0379);
                                                   }
                                                   §§goto(addr0187);
                                                }
                                                §§goto(addr0168);
                                             }
                                             §§goto(addr0164);
                                          }
                                          §§goto(addr01ce);
                                       }
                                       §§goto(addr0187);
                                    }
                                    §§goto(addr011c);
                                 }
                                 §§goto(addr0164);
                              }
                              §§goto(addr01ce);
                           }
                           else
                           {
                              §§push(_loc3_.clickObject);
                              if(!(_loc14_ && Boolean(param1)))
                              {
                                 §§goto(addr0164);
                              }
                           }
                           §§goto(addr017e);
                        }
                        §§goto(addr00f6);
                     }
                     §§goto(addr0112);
                  }
                  §§goto(addr0379);
               }
               else
               {
                  §§push(int(Math.floor(_loc2_.mouse2dPoint.x / _loc2_.tileSize)));
                  if(_loc13_ || Boolean(this))
                  {
                     _loc7_ = §§pop();
                     if(_loc13_ || Boolean(_loc3_))
                     {
                        §§goto(addr01ce);
                     }
                     §§goto(addr01e2);
                  }
               }
               §§goto(addr01e0);
            }
            §§goto(addr0112);
         }
         §§goto(addr00a9);
      }
   }
}

