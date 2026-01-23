package net.bigpoint.cityrama.controller.upselling
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.ExternalPaymentPackInfoVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.view.miniLayer.UpsellNotificationMiniLayerMediator;
   import net.bigpoint.cityrama.view.upselling.ui.UpsellNotificationMinilayer;
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingNotificationLayerVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenUpsellingNotificationLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenUpsellingNotificationLayerCommand()
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
         §§push(false);
         var _loc15_:Boolean = true;
         var _loc16_:* = §§pop();
         var _loc9_:ExternalPaymentPackInfoVo = null;
         var _loc11_:ConfigPaymentPackUpsellingDTO = null;
         var _loc2_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         if(!_loc16_)
         {
            if(!_loc2_.upsellEnabled)
            {
               if(!(_loc16_ && Boolean(_loc2_)))
               {
                  §§goto(addr004e);
               }
            }
            var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
            var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            var _loc5_:PlayerPaymentUpsellDTO = _loc3_.player.playerPaymentPackInfo.upsellPaymentPack;
            if(_loc5_ == null)
            {
               if(!_loc16_)
               {
                  return;
               }
            }
            var _loc6_:Object = param1.getBody();
            var _loc7_:UpsellingNotificationLayerVo = new UpsellingNotificationLayerVo();
            var _loc8_:ConfigPaymentPackDTO = _loc4_.config.paymentPacks[_loc5_.id];
            if(_loc15_)
            {
               _loc7_.packConfig = _loc8_;
               if(_loc15_)
               {
                  addr00c7:
                  _loc7_.currentUpsell = _loc5_;
                  if(_loc15_ || Boolean(_loc3_))
                  {
                     _loc7_.oldPaymentCall = _loc6_;
                  }
               }
               var _loc10_:* = "";
               for each(_loc11_ in _loc8_.upsellPackages)
               {
                  §§push(_loc11_.category);
                  if(!(_loc16_ && Boolean(_loc2_)))
                  {
                     if(§§pop() != _loc5_.type)
                     {
                        continue;
                     }
                     if(_loc16_ && Boolean(param1))
                     {
                        break;
                     }
                     §§push(_loc11_.key);
                     if(_loc15_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc10_ = §§pop();
                  break;
               }
               if(!(_loc16_ && Boolean(_loc3_)))
               {
                  §§push(Boolean(_loc2_.upsellPackInfoDictionary));
                  if(!_loc16_)
                  {
                     var _temp_9:* = §§pop();
                     §§push(_temp_9);
                     §§push(_temp_9);
                     if(_loc15_)
                     {
                        if(§§pop())
                        {
                           if(!_loc16_)
                           {
                              §§pop();
                              if(!_loc16_)
                              {
                                 addr018d:
                                 §§push(Boolean(_loc2_.upsellPackInfoDictionary[_loc10_]));
                                 if(_loc15_)
                                 {
                                    addr019d:
                                    if(§§pop())
                                    {
                                       if(!(_loc16_ && Boolean(param1)))
                                       {
                                          _loc9_ = _loc2_.upsellPackInfoDictionary[_loc10_];
                                          if(!(_loc16_ && Boolean(_loc2_)))
                                          {
                                             _loc7_.price = _loc9_.price;
                                             if(!(_loc16_ && Boolean(_loc2_)))
                                             {
                                                _loc7_.currency = _loc9_.currency;
                                             }
                                          }
                                          addr01ed:
                                          §§push(Boolean(_loc2_.realCurrencyPackInfoDictionary));
                                          if(_loc15_)
                                          {
                                             addr01f8:
                                             var _temp_13:* = §§pop();
                                             addr01f9:
                                             §§push(_temp_13);
                                             if(_temp_13)
                                             {
                                                if(_loc15_)
                                                {
                                                   addr0203:
                                                   §§pop();
                                                   if(_loc15_ || Boolean(_loc2_))
                                                   {
                                                      addr021e:
                                                      addr0212:
                                                      if(Boolean(_loc2_.realCurrencyPackInfoDictionary[_loc8_.id]))
                                                      {
                                                         addr0222:
                                                         _loc9_ = _loc2_.realCurrencyPackInfoDictionary[_loc8_.id];
                                                         if(!(_loc16_ && Boolean(_loc2_)))
                                                         {
                                                            _loc7_.amount = _loc9_.amount;
                                                         }
                                                      }
                                                      var _loc12_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                                                      _loc12_.mediatorName = UpsellNotificationMiniLayerMediator.NAME;
                                                      if(!_loc16_)
                                                      {
                                                         _loc12_.mediatorClass = UpsellNotificationMiniLayerMediator;
                                                         if(!(_loc16_ && Boolean(_loc3_)))
                                                         {
                                                            _loc12_.viewClass = UpsellNotificationMinilayer;
                                                            if(!_loc16_)
                                                            {
                                                               _loc12_.modal = true;
                                                               if(!_loc16_)
                                                               {
                                                                  §§goto(addr02a4);
                                                               }
                                                               §§goto(addr02b8);
                                                            }
                                                            addr02a4:
                                                            _loc12_.data = _loc7_;
                                                            if(_loc15_ || Boolean(_loc2_))
                                                            {
                                                               addr02b8:
                                                               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc12_);
                                                            }
                                                            §§goto(addr02c4);
                                                         }
                                                         addr02c4:
                                                         return;
                                                      }
                                                      §§goto(addr02b8);
                                                   }
                                                   §§goto(addr0222);
                                                }
                                             }
                                          }
                                          §§goto(addr021e);
                                       }
                                       §§goto(addr0222);
                                    }
                                    §§goto(addr01ed);
                                 }
                                 §§goto(addr0203);
                              }
                              §§goto(addr0212);
                           }
                           §§goto(addr0203);
                        }
                        §§goto(addr019d);
                     }
                     §§goto(addr01f9);
                  }
                  §§goto(addr01f8);
               }
               §§goto(addr018d);
            }
            §§goto(addr00c7);
         }
         addr004e:
      }
   }
}

