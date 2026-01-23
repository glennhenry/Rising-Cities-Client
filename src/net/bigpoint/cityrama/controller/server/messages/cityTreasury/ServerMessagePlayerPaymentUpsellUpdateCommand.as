package net.bigpoint.cityrama.controller.server.messages.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayerPaymentUpsellUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayerPaymentUpsellUpdateCommand()
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
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc3_:MessageVo = param1.getBody() as MessageVo;
         var _loc4_:PlayerPaymentUpsellDTO = null;
         if(!(_loc8_ && Boolean(param1)))
         {
            if(_loc3_)
            {
               if(_loc9_ || Boolean(_loc3_))
               {
                  addr0057:
                  §§push(_loc3_.json);
                  if(_loc9_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              §§pop();
                              if(_loc9_ || Boolean(this))
                              {
                                 §§push(Boolean(_loc3_.json.up));
                                 if(_loc9_ || Boolean(this))
                                 {
                                    addr0099:
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          addr00a3:
                                          _loc4_ = new PlayerPaymentUpsellDTO(_loc3_.json.up);
                                          if(_loc4_.id == 0)
                                          {
                                             _loc4_ = null;
                                          }
                                          addr00c6:
                                          §§push(_loc4_ == null);
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc8_ && Boolean(_loc3_)))
                                             {
                                                var _temp_10:* = §§pop();
                                                §§push(_temp_10);
                                                §§push(_temp_10);
                                                if(_loc9_ || Boolean(_loc2_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc8_ && Boolean(_loc3_)))
                                                      {
                                                         §§pop();
                                                         if(!(_loc8_ && Boolean(_loc3_)))
                                                         {
                                                            addr0117:
                                                            §§push(_loc2_.player);
                                                            if(!(_loc8_ && Boolean(param1)))
                                                            {
                                                               §§push(§§pop().playerPaymentPackInfo);
                                                               if(!(_loc8_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(§§pop().upsellPaymentPack);
                                                                  if(!(_loc8_ && Boolean(_loc2_)))
                                                                  {
                                                                     §§push(§§pop() == null);
                                                                     if(!_loc8_)
                                                                     {
                                                                        var _temp_17:* = §§pop();
                                                                        §§push(_temp_17);
                                                                        §§push(_temp_17);
                                                                        if(_loc9_)
                                                                        {
                                                                           addr0167:
                                                                           if(!§§pop())
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr0171:
                                                                                 §§pop();
                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr0180:
                                                                                    §§push(_loc2_.player);
                                                                                    if(_loc9_ || Boolean(param1))
                                                                                    {
                                                                                       addr0192:
                                                                                       §§push(§§pop().playerPaymentPackInfo);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr019b:
                                                                                          §§push(§§pop().upsellPaymentPack);
                                                                                          if(_loc9_ || Boolean(_loc3_))
                                                                                          {
                                                                                             addr01ac:
                                                                                             §§push(§§pop().id == _loc4_.id);
                                                                                             if(_loc9_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr01c3:
                                                                                                §§push(!§§pop());
                                                                                                if(!(_loc8_ && Boolean(param1)))
                                                                                                {
                                                                                                   addr01d2:
                                                                                                   var _temp_23:* = §§pop();
                                                                                                   addr01d3:
                                                                                                   §§push(_temp_23);
                                                                                                   if(_temp_23)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr01e8:
                                                                                                         addr01e5:
                                                                                                         addr01e2:
                                                                                                         addr01de:
                                                                                                         §§push(_loc2_.player.playerPaymentPackInfo.upsellPaymentPack.type == _loc4_.type);
                                                                                                         if(_loc9_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr01ff:
                                                                                                            addr0207:
                                                                                                            §§push(!§§pop());
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr0206:
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            var _loc5_:* = §§pop();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               _loc2_.player.playerPaymentPackInfo.upsellPaymentPack = _loc4_;
                                                                                                            }
                                                                                                            var _loc6_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
                                                                                                            _loc6_.cleanTreasuryIcons();
                                                                                                            var _loc7_:CityTreasuryTabProxy = facade.retrieveProxy(CityTreasuryTabProxy.NAME) as CityTreasuryTabProxy;
                                                                                                            _loc7_.cleanTabs();
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(facade.hasMediator(CityTreasuryMediator.NAME))
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     facade.sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr0285:
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              facade.sendNotification(ApplicationNotificationConstants.OPEN_UPSELL_OFFER_LAYER);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr0285);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0206);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr01ff);
                                                                                          }
                                                                                          §§goto(addr01e8);
                                                                                       }
                                                                                       §§goto(addr01e5);
                                                                                    }
                                                                                    §§goto(addr01e2);
                                                                                 }
                                                                                 §§goto(addr01de);
                                                                              }
                                                                              §§goto(addr01d2);
                                                                           }
                                                                           §§goto(addr0206);
                                                                        }
                                                                        §§goto(addr01d3);
                                                                     }
                                                                     §§goto(addr0206);
                                                                  }
                                                                  §§goto(addr01ac);
                                                               }
                                                               §§goto(addr019b);
                                                            }
                                                            §§goto(addr0192);
                                                         }
                                                         §§goto(addr01de);
                                                      }
                                                      §§goto(addr01c3);
                                                   }
                                                   §§goto(addr0206);
                                                }
                                                §§goto(addr0167);
                                             }
                                          }
                                          §§goto(addr0206);
                                       }
                                       §§goto(addr0117);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr0171);
                              }
                              §§goto(addr0180);
                           }
                           §§goto(addr0207);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr01d3);
                  }
                  §§goto(addr01ff);
               }
               §§goto(addr00a3);
            }
            §§goto(addr00c6);
         }
         §§goto(addr0057);
      }
   }
}

