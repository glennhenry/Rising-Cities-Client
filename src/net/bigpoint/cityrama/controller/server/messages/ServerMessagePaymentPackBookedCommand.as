package net.bigpoint.cityrama.controller.server.messages
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.rewards.vo.RewardDataVo;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.rewardLayer.RewardLayerMediator;
   import net.bigpoint.cityrama.view.rewardLayer.ui.RewardLayerPopup;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePaymentPackBookedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePaymentPackBookedCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc5_:RewardLayerProxy = null;
         var _loc6_:PopupSettingsVo = null;
         var _loc7_:RewardDataVo = null;
         var _loc8_:ExternalInterfaceProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:ConfigPaymentPackDTO = _loc3_.config.paymentPacks[_loc2_.json.pid];
         if(_loc4_ != null)
         {
            if(_loc9_)
            {
               §§push(_loc4_.type);
               if(_loc9_ || Boolean(_loc2_))
               {
                  §§push(ServerPaymentPackConst.EVOUCHER);
                  if(!(_loc10_ && Boolean(this)))
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc10_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(!_loc10_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc10_)
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    §§push(_loc4_.type);
                                    if(!_loc10_)
                                    {
                                       §§push(ServerPaymentPackConst.STARTERPACK);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc10_)
                                          {
                                             addr00cb:
                                             var _temp_5:* = §§pop();
                                             §§push(_temp_5);
                                             §§push(_temp_5);
                                             if(!(_loc10_ && Boolean(param1)))
                                             {
                                                addr00da:
                                                if(!§§pop())
                                                {
                                                   if(!(_loc10_ && Boolean(_loc2_)))
                                                   {
                                                      §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc4_.type);
                                                         if(_loc9_ || Boolean(this))
                                                         {
                                                            §§push(ServerPaymentPackConst.AID_PACK);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc9_)
                                                               {
                                                                  addr0118:
                                                                  var _temp_9:* = §§pop();
                                                                  §§push(_temp_9);
                                                                  §§push(_temp_9);
                                                                  if(_loc9_ || Boolean(_loc3_))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr0131:
                                                                           §§pop();
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr0138:
                                                                              §§push(_loc4_.type);
                                                                              if(_loc9_ || Boolean(this))
                                                                              {
                                                                                 §§goto(addr014a);
                                                                              }
                                                                              §§goto(addr02aa);
                                                                           }
                                                                           §§goto(addr02b4);
                                                                        }
                                                                        §§goto(addr017e);
                                                                     }
                                                                     §§goto(addr0173);
                                                                  }
                                                                  §§goto(addr0174);
                                                               }
                                                               §§goto(addr017e);
                                                            }
                                                            §§goto(addr02b0);
                                                         }
                                                         §§goto(addr02aa);
                                                      }
                                                      §§goto(addr01be);
                                                   }
                                                }
                                                §§goto(addr0118);
                                             }
                                             §§goto(addr0174);
                                          }
                                          §§goto(addr0173);
                                       }
                                       §§goto(addr02b0);
                                    }
                                    §§goto(addr02aa);
                                 }
                                 §§goto(addr0138);
                              }
                              §§goto(addr0173);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr0131);
                  }
                  §§goto(addr016c);
               }
               addr014a:
               §§push(ServerPaymentPackConst.PREMIUMPACK_A);
               if(!(_loc10_ && Boolean(param1)))
               {
                  addr016c:
                  §§push(§§pop() == §§pop());
                  if(_loc9_)
                  {
                     addr0173:
                     var _temp_13:* = §§pop();
                     addr0174:
                     §§push(_temp_13);
                     if(!_temp_13)
                     {
                        if(_loc9_)
                        {
                           addr017e:
                           §§pop();
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              §§push(_loc4_.type);
                              if(!_loc10_)
                              {
                                 §§push(ServerPaymentPackConst.EXPANSION_REFUND);
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr01ac);
                                 }
                                 §§goto(addr02b0);
                              }
                              §§goto(addr02aa);
                           }
                           §§goto(addr01be);
                        }
                     }
                  }
                  addr01ac:
                  §§goto(addr01ab);
               }
               addr01ab:
               if(§§pop() == §§pop())
               {
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     addr01be:
                     _loc5_ = facade.retrieveProxy(RewardLayerProxy.NAME) as RewardLayerProxy;
                     _loc6_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
                     _loc6_.modal = true;
                     if(!_loc10_)
                     {
                        _loc6_.viewClass = RewardLayerPopup;
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           _loc6_.mediatorClass = RewardLayerMediator;
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              addr0216:
                              _loc6_.mediatorName = RewardLayerMediator.NAME + getTimer();
                              if(!(_loc10_ && Boolean(this)))
                              {
                                 _loc6_.openedByUserAxn = false;
                              }
                           }
                           _loc7_ = _loc5_.getRewardForPaymentPack(Number(_loc2_.json.pid),RewardItemComponentVo.SIZE_BIG);
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              _loc6_.data = _loc7_;
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 if(_loc7_)
                                 {
                                    if(!_loc10_)
                                    {
                                       facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
                                       addr0289:
                                    }
                                 }
                                 §§goto(addr02de);
                              }
                           }
                           §§goto(addr0289);
                        }
                     }
                     §§goto(addr0216);
                  }
                  else
                  {
                     addr02b4:
                     _loc8_ = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
                     _loc8_.closeExternalCinema();
                     if(!_loc10_)
                     {
                        sendNotification(MiniLayerConstants.OPEN_MINI_CINEMA_REWARDS_LAYER);
                     }
                  }
               }
               else
               {
                  addr02b0:
                  addr02aa:
                  if(_loc4_.type == ServerPaymentPackConst.CINEMA)
                  {
                     §§goto(addr02b4);
                  }
               }
               §§goto(addr02de);
            }
            §§goto(addr0138);
         }
         addr02de:
      }
   }
}

