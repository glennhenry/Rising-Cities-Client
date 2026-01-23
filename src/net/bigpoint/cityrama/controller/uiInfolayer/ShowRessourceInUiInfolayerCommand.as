package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowRessourceInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowRessourceInUiInfolayerCommand()
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
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:Number = Number(param1.getBody().cid);
         var _loc4_:Point = Point(param1.getBody().pt);
         var _loc5_:uint = uint(param1.getBody().lineId);
         var _loc6_:ConfigResourceDTO = ConfigResourceDTO(param1.getBody().cpidto);
         if(!_loc6_)
         {
            _loc6_ = _loc2_.config.resources[_loc3_];
         }
         §§push(_loc6_.type);
         loop0:
         while(true)
         {
            var _loc10_:* = §§pop();
            if(_loc12_)
            {
               §§push(ServerResConst.RESOURCE_EXPERIENCE);
               if(!(_loc11_ && Boolean(param1)))
               {
                  §§push(_loc10_);
                  if(!_loc11_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc12_)
                        {
                           §§push(0);
                           if(_loc12_)
                           {
                           }
                        }
                        else
                        {
                           addr02ff:
                           §§push(2);
                           if(_loc12_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                        if(_loc12_)
                        {
                           §§push(_loc10_);
                           if(_loc12_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_)
                                 {
                                    §§push(1);
                                    if(_loc12_ || Boolean(_loc3_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr0357:
                                    §§push(4);
                                    if(_loc11_)
                                    {
                                    }
                                 }
                                 addr036f:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.xp.flavor"));
                                       if(_loc12_)
                                       {
                                          §§push(§§pop());
                                          if(_loc12_)
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc11_ && Boolean(_loc3_))
                                             {
                                                break loop0;
                                             }
                                             §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.experience.capital"));
                                             if(_loc11_)
                                             {
                                                addr0132:
                                                _loc8_ = §§pop();
                                                if(_loc11_)
                                                {
                                                }
                                                break loop0;
                                             }
                                             §§push(§§pop());
                                             if(!_loc11_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   break loop0;
                                                }
                                                addr0168:
                                                §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.realcurrency.capital"));
                                                if(_loc12_ || Boolean(_loc3_))
                                                {
                                                   addr0182:
                                                   §§push(§§pop());
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      addr0191:
                                                      _loc8_ = §§pop();
                                                      if(_loc12_)
                                                      {
                                                         break loop0;
                                                      }
                                                      addr01db:
                                                      §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.productionpoints.capital"));
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop());
                                                      if(_loc12_ || Boolean(_loc3_))
                                                      {
                                                         addr01fc:
                                                         _loc8_ = §§pop();
                                                         if(_loc12_)
                                                         {
                                                            break loop0;
                                                         }
                                                         addr0232:
                                                         §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.educationpoints.capital"));
                                                         if(!(_loc11_ && Boolean(this)))
                                                         {
                                                            addr024c:
                                                            §§push(§§pop());
                                                            if(!_loc12_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         addr0253:
                                                         _loc8_ = §§pop();
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         break loop0;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr024c);
                                                }
                                                §§goto(addr01fc);
                                             }
                                             else
                                             {
                                                addr01cb:
                                                _loc7_ = §§pop();
                                                if(!(_loc12_ || Boolean(this)))
                                                {
                                                   break loop0;
                                                }
                                             }
                                             §§goto(addr01db);
                                          }
                                          §§goto(addr01fc);
                                       }
                                       §§goto(addr0132);
                                    case 1:
                                       §§push(LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.vc.flavor"));
                                       if(_loc12_ || Boolean(_loc3_))
                                       {
                                          §§push(§§pop());
                                          if(_loc12_ || Boolean(this))
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc12_ || Boolean(_loc2_))
                                             {
                                                §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.virtualcurrency.capital"));
                                                if(!(_loc12_ || Boolean(_loc3_)))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop());
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr0132);
                                                }
                                                else
                                                {
                                                   §§goto(addr0182);
                                                }
                                             }
                                             §§goto(addr01db);
                                          }
                                          §§goto(addr0253);
                                       }
                                       else
                                       {
                                          §§goto(addr01cb);
                                       }
                                    case 2:
                                       §§push(LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.rc.flavor"));
                                       if(_loc12_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc11_ && Boolean(this)))
                                          {
                                             _loc7_ = §§pop();
                                             if(_loc12_)
                                             {
                                                §§goto(addr0168);
                                             }
                                             §§goto(addr0232);
                                          }
                                       }
                                       §§goto(addr0191);
                                    case 3:
                                       §§push(LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.pp.flavor"));
                                       if(_loc12_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc11_ && Boolean(_loc3_)))
                                          {
                                             §§goto(addr01cb);
                                          }
                                          else
                                          {
                                             addr021b:
                                             §§push(§§pop());
                                             if(_loc12_ || Boolean(_loc3_))
                                             {
                                                break;
                                             }
                                          }
                                          §§goto(addr0253);
                                       }
                                       §§goto(addr01fc);
                                    case 4:
                                       §§push(LocaUtils.getString("rcl.guiinfolayer.resources","rcl.guiinfolayer.resources.ep.flavor"));
                                       if(!_loc11_)
                                       {
                                          §§goto(addr021b);
                                       }
                                       §§goto(addr0253);
                                    default:
                                       break loop0;
                                 }
                                 _loc7_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0232);
                              }
                              else
                              {
                                 §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                 if(!_loc11_)
                                 {
                                    addr02dd:
                                    §§push(_loc10_);
                                    if(_loc12_ || Boolean(_loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc12_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr02ff);
                                          }
                                          else
                                          {
                                             §§goto(addr0357);
                                          }
                                       }
                                       else
                                       {
                                          §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                          if(!_loc11_)
                                          {
                                             addr0316:
                                             §§push(_loc10_);
                                             if(!(_loc11_ && Boolean(this)))
                                             {
                                                addr0326:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(3);
                                                      if(_loc12_ || Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0357);
                                                   }
                                                }
                                                else
                                                {
                                                   addr0353:
                                                   addr0351:
                                                   if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc10_)
                                                   {
                                                      §§goto(addr0357);
                                                   }
                                                   else
                                                   {
                                                      §§push(5);
                                                   }
                                                }
                                                §§goto(addr036f);
                                             }
                                             §§goto(addr0353);
                                          }
                                          §§goto(addr0351);
                                       }
                                       §§goto(addr0357);
                                    }
                                    §§goto(addr0326);
                                 }
                                 §§goto(addr0316);
                              }
                           }
                           §§goto(addr0353);
                        }
                        §§goto(addr02dd);
                     }
                     §§goto(addr036f);
                  }
                  §§goto(addr0353);
               }
               §§goto(addr0351);
            }
            §§goto(addr0357);
         }
         var _loc9_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc5_,_loc4_,_loc7_,_loc8_);
         _loc9_.width = 230;
         if(!(_loc11_ && Boolean(_loc3_)))
         {
            sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc9_,param1.getType());
         }
      }
   }
}

