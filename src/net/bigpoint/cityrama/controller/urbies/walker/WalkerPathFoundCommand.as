package net.bigpoint.cityrama.controller.urbies.walker
{
   import flash.geom.Point;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class WalkerPathFoundCommand extends SimpleCommand
   {
      
      public function WalkerPathFoundCommand()
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
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:UrbieObject = null;
         var _loc7_:Point = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc2_:IWalker = param1.getBody() as IWalker;
         var _loc3_:UrbiesLifeProxy = facade.retrieveProxy(UrbiesLifeProxy.NAME) as UrbiesLifeProxy;
         var _loc4_:UrbieLifeVo = _loc3_.dictionary[_loc2_.id];
         var _loc5_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         if(!_loc10_)
         {
            if(!_loc3_.urbieObjectDictionary[_loc2_.id])
            {
               if(!_loc10_)
               {
                  addr0083:
                  facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_ADD_ITEM,_loc4_);
               }
            }
            _loc6_ = _loc3_.urbieObjectDictionary[_loc2_.id];
            if(_loc6_)
            {
               _loc7_ = new Point(_loc2_.path[0].x,_loc2_.path[0].y);
               _loc7_ = _loc7_.subtract(new Point(_loc2_.path[1].x,_loc2_.path[1].y));
               if(!(_loc10_ && Boolean(this)))
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(§§pop());
                     if(_loc11_ || Boolean(this))
                     {
                        _loc8_ = §§pop();
                        if(_loc11_)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              §§push(§§pop());
                              if(_loc11_ || Boolean(_loc3_))
                              {
                                 _loc9_ = §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push(_loc6_.urbieLifeVo);
                                    if(!(_loc10_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop().config);
                                       if(!(_loc10_ && Boolean(param1)))
                                       {
                                          §§push(§§pop().id);
                                          if(_loc11_ || Boolean(this))
                                          {
                                             §§push("_bottom");
                                             if(!(_loc10_ && Boolean(param1)))
                                             {
                                                if(§§pop().split(§§pop()).length >= 2)
                                                {
                                                   if(_loc11_ || Boolean(this))
                                                   {
                                                      §§push(_loc5_.pathwalkManager);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop().terrain);
                                                         if(!(_loc10_ && Boolean(param1)))
                                                         {
                                                            §§push(§§pop().tileSize);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(_loc6_.isoBounds.width / 2);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc10_ && Boolean(this)))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr01fc:
                                                                           addr01f9:
                                                                           §§push(_loc5_.pathwalkManager.terrain.tileSize);
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr0210:
                                                                              §§push(§§pop() - _loc6_.isoBounds.length / 2);
                                                                              if(_loc11_ || Boolean(_loc2_))
                                                                              {
                                                                                 §§goto(addr021f);
                                                                              }
                                                                              §§goto(addr0286);
                                                                           }
                                                                           §§goto(addr02f9);
                                                                        }
                                                                        §§goto(addr0302);
                                                                     }
                                                                     addr021f:
                                                                     §§push(§§pop());
                                                                     if(_loc11_ || Boolean(this))
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           addr0260:
                                                                           §§push(-_loc6_.isoBounds.width);
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr026f:
                                                                              §§push(2);
                                                                              if(!(_loc10_ && Boolean(this)))
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr0286:
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§goto(addr028d);
                                                                                    }
                                                                                    §§goto(addr02b4);
                                                                                 }
                                                                                 §§goto(addr02d4);
                                                                              }
                                                                              §§goto(addr02b6);
                                                                           }
                                                                           §§goto(addr02c5);
                                                                        }
                                                                        §§goto(addr0302);
                                                                     }
                                                                     §§goto(addr028d);
                                                                  }
                                                                  addr028d:
                                                                  _loc8_ = §§pop();
                                                                  if(!(_loc10_ && Boolean(this)))
                                                                  {
                                                                     addr029d:
                                                                     §§push(-_loc6_.isoBounds.length);
                                                                     if(!(_loc10_ && Boolean(_loc3_)))
                                                                     {
                                                                        addr02b4:
                                                                        addr02b6:
                                                                        §§push(§§pop() / 2);
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           addr02c5:
                                                                           §§push(§§pop());
                                                                           if(_loc11_ || Boolean(param1))
                                                                           {
                                                                              addr02d4:
                                                                              _loc9_ = §§pop();
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr02fa:
                                                                                 _loc9_ = 0;
                                                                                 addr02f9:
                                                                                 addr02f7:
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr0302:
                                                                                    §§push(_loc6_);
                                                                                    §§push(_loc2_.x);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc10_ && Boolean(param1)))
                                                                                       {
                                                                                          addr0320:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(_loc2_.y);
                                                                                          if(!(_loc10_ && Boolean(param1)))
                                                                                          {
                                                                                             §§push(§§pop() + _loc9_);
                                                                                          }
                                                                                       }
                                                                                       §§pop().moveTo(§§pop(),§§pop(),0);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr0351:
                                                                                          _loc6_.container.visible = false;
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§goto(addr035f);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0373);
                                                                                    }
                                                                                    §§goto(addr0320);
                                                                                 }
                                                                                 §§goto(addr0351);
                                                                              }
                                                                              §§goto(addr0302);
                                                                           }
                                                                           §§goto(addr02fa);
                                                                        }
                                                                        §§goto(addr02d4);
                                                                     }
                                                                     §§goto(addr02fa);
                                                                  }
                                                                  addr035f:
                                                                  _loc6_.invalidatePosition();
                                                                  if(_loc11_ || Boolean(_loc2_))
                                                                  {
                                                                     addr0373:
                                                                     _loc6_.directionStrategy.playDirectionAnimation(_loc7_);
                                                                  }
                                                                  §§goto(addr037e);
                                                               }
                                                               §§goto(addr0210);
                                                            }
                                                            else
                                                            {
                                                               addr02e8:
                                                               §§push(§§pop());
                                                               if(_loc11_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr02f7);
                                                                  }
                                                                  §§goto(addr0373);
                                                               }
                                                            }
                                                            §§goto(addr02fa);
                                                         }
                                                         §§goto(addr01fc);
                                                      }
                                                      §§goto(addr01f9);
                                                   }
                                                   §§goto(addr02f7);
                                                }
                                                else
                                                {
                                                   addr0246:
                                                   addr0243:
                                                   addr0241:
                                                   addr023f:
                                                   if(_loc6_.urbieLifeVo.config.id.split("_top").length >= 2)
                                                   {
                                                      if(!(_loc10_ && Boolean(_loc3_)))
                                                      {
                                                         §§goto(addr0260);
                                                      }
                                                      §§goto(addr029d);
                                                   }
                                                   else
                                                   {
                                                      §§push(0);
                                                      if(_loc11_)
                                                      {
                                                         §§goto(addr02e8);
                                                      }
                                                   }
                                                }
                                                §§goto(addr02f9);
                                             }
                                             §§goto(addr0246);
                                          }
                                          §§goto(addr0243);
                                       }
                                       §§goto(addr0241);
                                    }
                                    §§goto(addr023f);
                                 }
                                 §§goto(addr0373);
                              }
                              §§goto(addr026f);
                           }
                           §§goto(addr02f9);
                        }
                        §§goto(addr0260);
                     }
                     §§goto(addr02d4);
                  }
                  §§goto(addr02e8);
               }
               §§goto(addr02f7);
            }
            addr037e:
            return;
         }
         §§goto(addr0083);
      }
   }
}

