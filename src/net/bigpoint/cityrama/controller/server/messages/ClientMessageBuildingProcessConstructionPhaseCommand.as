package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingProcessConstructionPhaseCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingProcessConstructionPhaseCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc11_:PhaseDTO = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:BillboardObjectVo = _loc2_.vo as BillboardObjectVo;
         var _loc4_:Boolean = Boolean(_loc2_.boost);
         var _loc5_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc6_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc7_:Object = new Object();
         _loc7_.bid = _loc3_.buildingDTO.id;
         if(!(_loc16_ && Boolean(_loc3_)))
         {
            _loc7_.pid = _loc3_.activePhases[0].phaseId;
            if(!(_loc16_ && Boolean(_loc2_)))
            {
               _loc7_.bst = _loc4_;
            }
         }
         var _loc8_:MessageVo = _loc5_.createMessage(_loc7_,ServerMessageConstants.PLAYFIELD_BUILDING_PROCESSPHASE);
         loop0:
         for each(_loc11_ in _loc3_.activePhases)
         {
            §§push(_loc11_.config);
            if(_loc17_)
            {
               §§push(§§pop().phaseType);
               if(_loc17_ || Boolean(_loc2_))
               {
                  §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                  if(_loc17_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc17_)
                     {
                        var _temp_7:* = §§pop();
                        §§push(_temp_7);
                        if(!_temp_7)
                        {
                           if(_loc17_)
                           {
                              addr0120:
                              §§pop();
                              if(!_loc16_)
                              {
                                 §§push(_loc11_.config);
                                 if(!_loc16_)
                                 {
                                    addr0131:
                                    §§push(§§pop().phaseType);
                                    if(_loc17_)
                                    {
                                       addr013a:
                                       §§push(ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                       if(!_loc16_)
                                       {
                                          addr0147:
                                          addr0146:
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc17_ || Boolean(_loc3_))
                                             {
                                                §§push(_loc11_.expirationTime);
                                                if(!(_loc16_ && Boolean(this)))
                                                {
                                                   §§push(_loc6_.currentTimeStamp);
                                                   if(!_loc16_)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            §§push(_loc11_.expirationTime);
                                                            if(_loc17_ || Boolean(_loc3_))
                                                            {
                                                               if(§§pop() == 0)
                                                               {
                                                                  if(_loc17_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(_loc11_.config);
                                                                     if(!(_loc16_ && Boolean(param1)))
                                                                     {
                                                                        addr01c7:
                                                                        _loc9_ = §§pop();
                                                                        continue;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0255:
                                                                     §§push(_loc11_.config);
                                                                     if(!_loc16_)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        continue;
                                                                     }
                                                                  }
                                                                  addr026c:
                                                                  addr0275:
                                                                  addr026f:
                                                                  if(§§pop().phaseType != ServerPhaseTypes.CREATE_PLACE_NORMAL)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr0279:
                                                                  §§push(0);
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc16_ && Boolean(this)))
                                                                  {
                                                                     var _loc14_:* = §§pop();
                                                                     if(!_loc16_)
                                                                     {
                                                                        var _loc15_:* = _loc3_.configPlayfieldItemVo.constructionPhases;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc15_,_loc14_));
                                                                           if(!(_loc16_ && Boolean(param1)))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc10_ = §§nextvalue(_loc14_,_loc15_);
                                                                                 if(_loc10_.phaseOrderId == _loc11_.config.phaseOrderId + 1)
                                                                                 {
                                                                                    _loc9_ = _loc10_;
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 _loc10_ = §§nextvalue(_loc14_,_loc15_);
                                                                                 if(_loc10_.phaseOrderId == _loc11_.config.phaseOrderId + 1)
                                                                                 {
                                                                                    _loc9_ = _loc10_;
                                                                                    break;
                                                                                 }
                                                                                 addr02b3:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc15_,_loc14_));
                                                                                    break;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     addr027d:
                                                                     _loc15_ = _loc3_.configPlayfieldItemVo.constructionPhases;
                                                                     §§goto(addr02b3);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr027b:
                                                                     _loc14_ = §§pop();
                                                                  }
                                                                  §§goto(addr027d);
                                                               }
                                                               §§goto(addr027b);
                                                            }
                                                            else
                                                            {
                                                               addr0246:
                                                               addr024b:
                                                               if(§§pop() <= _loc6_.currentTimeStamp)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc17_)
                                                               {
                                                                  §§goto(addr0255);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0279);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc11_.expirationTime);
                                                      }
                                                      §§goto(addr0246);
                                                   }
                                                   §§goto(addr024b);
                                                }
                                                §§goto(addr0246);
                                             }
                                             §§goto(addr0255);
                                          }
                                          else
                                          {
                                             §§push(_loc11_.config);
                                          }
                                          §§goto(addr026c);
                                       }
                                       §§goto(addr0275);
                                    }
                                    §§goto(addr026f);
                                 }
                                 §§goto(addr01c7);
                              }
                              §§goto(addr0255);
                           }
                        }
                        §§goto(addr0147);
                     }
                     §§goto(addr0120);
                  }
                  §§goto(addr0146);
               }
               §§goto(addr013a);
            }
            §§goto(addr0131);
         }
         if(!(_loc16_ && Boolean(param1)))
         {
            if(!_loc9_)
            {
               if(_loc17_)
               {
                  _loc9_ = _loc3_.activePhases[0].config;
                  addr0300:
                  _loc3_.informationFloaterPhase = _loc9_;
                  if(_loc17_)
                  {
                     _loc5_.sendMessage(_loc8_);
                  }
               }
               §§goto(addr0314);
            }
            §§goto(addr0300);
         }
         addr0314:
      }
   }
}

