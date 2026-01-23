package net.bigpoint.cityrama.controller.server.messages.common
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageRentCollectorSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageRentCollectorSuccessCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc4_:ResourceDTO = null;
         var _loc9_:Object = null;
         var _loc10_:MessageVo = null;
         var _loc11_:Object = null;
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc3_:MessageVo = param1.getBody() as MessageVo;
         var _loc5_:Object = {
            "vc":0,
            "ep":0,
            "pp":0
         };
         §§push(_loc2_.ingameCurrency);
         if(_loc17_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc6_:* = §§pop();
         §§push(_loc2_.productionPoints);
         if(!_loc18_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         §§push(_loc2_.educationPoints);
         if(!(_loc18_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         for each(_loc9_ in _loc3_.json.sm)
         {
            _loc10_ = new MessageVo();
            _loc10_.json = _loc9_.b;
            if(_loc17_)
            {
               _loc10_.header = _loc9_.h;
               if(!(_loc18_ && Boolean(param1)))
               {
                  sendNotification(ServerNotificationConstants.SERVER_MESSAGE_ + _loc10_.header,_loc10_);
                  if(_loc17_)
                  {
                     if(_loc10_.header == ServerMessageConstants.RESOURCES)
                     {
                        if(!(_loc18_ && Boolean(_loc3_)))
                        {
                           var _loc14_:int = 0;
                           if(_loc17_)
                           {
                              for each(_loc11_ in _loc10_.json.res)
                              {
                                 _loc4_ = ConfigFactory.buildResourceDTO(_loc11_);
                                 if(!_loc17_)
                                 {
                                    continue;
                                 }
                                 var _loc16_:* = _loc4_.config.type;
                                 if(_loc17_)
                                 {
                                    §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                    if(_loc17_ || Boolean(param1))
                                    {
                                       §§push(_loc16_);
                                       if(!_loc18_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc17_)
                                             {
                                                §§push(0);
                                                if(_loc17_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr0245:
                                                §§push(2);
                                                if(_loc17_)
                                                {
                                                }
                                             }
                                             addr025d:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   _loc5_.vc = _loc4_.amount - _loc6_;
                                                   if(_loc17_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                   break;
                                                case 1:
                                                   _loc5_.ep = _loc4_.amount - _loc8_;
                                                   if(_loc17_ || Boolean(param1))
                                                   {
                                                   }
                                                   break;
                                                case 2:
                                                   _loc5_.pp = _loc4_.amount - _loc7_;
                                                   if(_loc18_ && Boolean(_loc3_))
                                                   {
                                                   }
                                             }
                                          }
                                          else
                                          {
                                             §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                             if(_loc17_)
                                             {
                                                addr0214:
                                                §§push(_loc16_);
                                                if(_loc17_ || Boolean(_loc3_))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         §§push(1);
                                                         if(_loc18_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0245);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0241:
                                                      addr023f:
                                                      if(ServerResConst.RESOURCE_PRODUCTIONPOINTS === _loc16_)
                                                      {
                                                         §§goto(addr0245);
                                                      }
                                                      else
                                                      {
                                                         §§push(3);
                                                      }
                                                   }
                                                   §§goto(addr025d);
                                                }
                                                §§goto(addr0241);
                                             }
                                             §§goto(addr023f);
                                          }
                                          §§goto(addr0245);
                                       }
                                       §§goto(addr0241);
                                    }
                                    §§goto(addr0214);
                                 }
                                 §§goto(addr0245);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(!_loc18_)
         {
            §§push(_loc5_.vc == 0);
            if(_loc17_)
            {
               var _temp_11:* = §§pop();
               §§push(_temp_11);
               §§push(_temp_11);
               if(!(_loc18_ && Boolean(_loc2_)))
               {
                  if(§§pop())
                  {
                     if(_loc17_)
                     {
                        §§pop();
                        if(_loc17_ || Boolean(_loc3_))
                        {
                           §§push(_loc5_.pp == 0);
                           if(_loc17_ || Boolean(this))
                           {
                              addr02da:
                              var _temp_15:* = §§pop();
                              addr02db:
                              §§push(_temp_15);
                              if(_temp_15)
                              {
                                 if(!(_loc18_ && Boolean(_loc2_)))
                                 {
                                    §§pop();
                                    if(_loc17_ || Boolean(this))
                                    {
                                       addr0312:
                                       if(_loc5_.ep != 0)
                                       {
                                          if(_loc17_)
                                          {
                                             sendNotification(ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_SUCCESS,_loc5_);
                                          }
                                       }
                                    }
                                    §§goto(addr0328);
                                 }
                              }
                           }
                           §§goto(addr0312);
                        }
                        §§goto(addr0328);
                     }
                  }
                  §§goto(addr02da);
               }
               §§goto(addr02db);
            }
            §§goto(addr02da);
         }
         addr0328:
      }
   }
}

