package net.bigpoint.cityrama.controller.upselling
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.upselling.UpsellingOfferLayerMediator;
   import net.bigpoint.cityrama.view.upselling.ui.UpsellingOfferLayer;
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingOfferLayerVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenUpsellingOfferLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenUpsellingOfferLayerCommand()
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
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc7_:PlayerProxy = null;
         var _loc8_:GameConfigProxy = null;
         var _loc9_:UpsellingOfferLayerVo = null;
         var _loc10_:PopupSettingsVo = null;
         var _loc2_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         if(_loc12_)
         {
            if(!_loc2_.upsellEnabled)
            {
               if(!(_loc11_ && Boolean(this)))
               {
                  return;
               }
            }
         }
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         §§push(1000 * 60);
         if(!(_loc11_ && Boolean(this)))
         {
            §§push(60);
            if(_loc12_)
            {
               §§push(§§pop() * §§pop());
               if(_loc12_)
               {
                  §§push(24);
                  if(!_loc11_)
                  {
                     addr00c2:
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        addr00b2:
                        addr00b0:
                        §§push(§§pop() * 3);
                        if(!(_loc11_ && Boolean(_loc2_)))
                        {
                           §§push(§§pop());
                        }
                     }
                     var _loc5_:* = §§pop();
                     var _loc6_:* = false;
                     if(_loc12_ || Boolean(_loc3_))
                     {
                        §§push(Boolean(param1.getBody()));
                        if(_loc12_)
                        {
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           §§push(_temp_6);
                           if(!_loc11_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    addr00f1:
                                    §§pop();
                                    if(!_loc11_)
                                    {
                                       §§push(Boolean(param1.getBody().showAnyways));
                                       if(_loc12_)
                                       {
                                          addr0107:
                                          if(§§pop())
                                          {
                                             if(_loc12_ || Boolean(_loc3_))
                                             {
                                                §§push(Boolean(param1.getBody().showAnyways));
                                                if(!(_loc11_ && Boolean(_loc3_)))
                                                {
                                                   _loc6_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      §§goto(addr0138);
                                                   }
                                                   §§goto(addr01e1);
                                                }
                                                §§goto(addr0148);
                                             }
                                             §§goto(addr01dc);
                                          }
                                          addr0138:
                                          §§push(_loc6_);
                                          if(_loc12_ || Boolean(_loc3_))
                                          {
                                             addr0148:
                                             §§push(§§pop());
                                             if(_loc12_)
                                             {
                                                §§goto(addr014f);
                                             }
                                             §§goto(addr016f);
                                          }
                                          addr014f:
                                          var _temp_10:* = §§pop();
                                          addr0150:
                                          §§push(_temp_10);
                                          if(!_temp_10)
                                          {
                                             if(!(_loc11_ && Boolean(_loc3_)))
                                             {
                                                addr016f:
                                                §§pop();
                                                if(_loc12_ || Boolean(_loc3_))
                                                {
                                                   §§push(_loc3_.userdata);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop().lastTimeUpsellWasShown);
                                                      if(_loc12_ || Boolean(param1))
                                                      {
                                                         §§goto(addr01b0);
                                                      }
                                                      §§goto(addr01aa);
                                                   }
                                                   §§goto(addr01c6);
                                                }
                                                §§goto(addr01c2);
                                             }
                                          }
                                          §§goto(addr01b0);
                                       }
                                       addr01b0:
                                       §§push(_loc5_);
                                       if(_loc12_ || Boolean(this))
                                       {
                                          addr01aa:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc4_.currentTimeStamp);
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc12_ || Boolean(_loc3_))
                                          {
                                             addr01c6:
                                             _loc3_.userdata.lastTimeUpsellWasShown = _loc4_.currentTimeStamp;
                                             addr01c2:
                                             if(!(_loc11_ && Boolean(this)))
                                             {
                                                addr01dc:
                                                _loc3_.flush();
                                             }
                                             addr01e1:
                                             _loc7_ = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                                             _loc8_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                                             if(_loc12_ || Boolean(this))
                                             {
                                                if(!_loc2_.isUpsellRunning())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      return;
                                                   }
                                                   addr0237:
                                                   _loc9_ = new UpsellingOfferLayerVo();
                                                   _loc9_.packConfig = _loc8_.config.paymentPacks[_loc7_.player.playerPaymentPackInfo.upsellPaymentPack.id];
                                                   if(!_loc11_)
                                                   {
                                                      _loc9_.currentUpsell = _loc7_.player.playerPaymentPackInfo.upsellPaymentPack;
                                                   }
                                                   _loc10_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                                                   _loc10_.mediatorName = UpsellingOfferLayerMediator.NAME;
                                                   if(_loc12_ || Boolean(this))
                                                   {
                                                      _loc10_.mediatorClass = UpsellingOfferLayerMediator;
                                                      if(!(_loc11_ && Boolean(_loc3_)))
                                                      {
                                                         _loc10_.viewClass = UpsellingOfferLayer;
                                                         if(_loc12_ || Boolean(_loc2_))
                                                         {
                                                            _loc10_.modal = true;
                                                            if(!_loc11_)
                                                            {
                                                               addr02e0:
                                                               _loc10_.data = _loc9_;
                                                               if(_loc12_)
                                                               {
                                                                  addr02ec:
                                                                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc10_);
                                                               }
                                                            }
                                                            §§goto(addr02f8);
                                                         }
                                                         §§goto(addr02e0);
                                                      }
                                                      §§goto(addr02f8);
                                                   }
                                                   §§goto(addr02ec);
                                                }
                                                else if(_loc7_.player.playerPaymentPackInfo.upsellPaymentPack)
                                                {
                                                   §§goto(addr0237);
                                                }
                                                §§goto(addr02f8);
                                             }
                                             §§goto(addr0237);
                                          }
                                          §§goto(addr01dc);
                                       }
                                       addr02f8:
                                       return;
                                    }
                                    §§goto(addr01dc);
                                 }
                                 §§goto(addr014f);
                              }
                              §§goto(addr0107);
                           }
                           §§goto(addr0150);
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr0138);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00c2);
            }
            §§goto(addr00b2);
         }
         §§goto(addr00b0);
      }
   }
}

