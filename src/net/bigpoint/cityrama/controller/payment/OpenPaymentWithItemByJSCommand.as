package net.bigpoint.cityrama.controller.payment
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenPaymentWithItemByJSCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenPaymentWithItemByJSCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var flashVarProxy:FlashVarsProxy;
         var paymentRequest:URLRequest = null;
         var paymentString:String = null;
         var treasuryProxy:CityTreasuryProxy = null;
         var upsell:PlayerPaymentUpsellDTO = null;
         var configProxy:GameConfigProxy = null;
         var packConfig:ConfigPaymentPackDTO = null;
         var cat:String = null;
         var upsellConfig:ConfigPaymentPackUpsellingDTO = null;
         var item:ConfigPaymentPackDTO = null;
         var notification:INotification = param1;
         var transObj:Object = notification.getBody();
         var category:String = transObj.category as String;
         var itemKey:String = transObj.itemKey as String;
         var deeplink:Boolean = transObj.deeplink as Boolean;
         var ignoreUpsell:Boolean = transObj.ignoreUpsell as Boolean;
         var playerProxy:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var timerProxy:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         if(!ignoreUpsell)
         {
            treasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
            if(treasuryProxy.upsellEnabled)
            {
               upsell = playerProxy.player.playerPaymentPackInfo.upsellPaymentPack;
               if(upsell && timerProxy.currentTimeStamp >= upsell.startTime && timerProxy.currentTimeStamp <= upsell.startTime + upsell.duration)
               {
                  configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  packConfig = configProxy.config.paymentPacks[upsell.id];
                  cat = CityTreasuryProxy.configToCategory(packConfig);
                  for each(upsellConfig in packConfig.upsellPackages)
                  {
                     if(upsellConfig.category == upsell.type)
                     {
                        if(itemKey != upsellConfig.key && cat != "" && cat == category)
                        {
                           for each(item in configProxy.config.paymentPacks)
                           {
                              if(item.key == itemKey)
                              {
                                 if(Boolean(treasuryProxy.realCurrencyPackInfoDictionary[item.id]) && Boolean(treasuryProxy.upsellPackInfoDictionary[upsellConfig.key]) && treasuryProxy.realCurrencyPackInfoDictionary[item.id].price > treasuryProxy.upsellPackInfoDictionary[upsellConfig.key].price)
                                 {
                                    facade.sendNotification(ApplicationNotificationConstants.OPEN_UPSELL_MINI_NOTIFICATION_LAYER,transObj);
                                    return;
                                 }
                                 break;
                              }
                           }
                        }
                        break;
                     }
                  }
               }
            }
         }
         flashVarProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         if(!deeplink)
         {
            switch(category)
            {
               case CityTreasuryProxy.PAYMENT_CATEGORY_STARTER:
               case CityTreasuryProxy.PAYMENT_CATEGORY_CASH_FOR_ACTION:
               case CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY:
               case CityTreasuryProxy.PAYMENT_CATEGORY_EXTERNAL:
                  paymentString = "&" + category;
                  break;
               default:
                  paymentString = "&" + CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY;
            }
         }
         else
         {
            paymentString = "&" + CityTreasuryProxy.PAYMENT_CATEGORY_DEFAULT;
         }
         if(Boolean(itemKey) && itemKey != "")
         {
            paymentString += "&item[]=" + itemKey;
         }
         try
         {
            paymentRequest = new URLRequest(flashVarProxy.paymentURL + paymentString);
            navigateToURL(paymentRequest,"_blank");
         }
         catch(e:Error)
         {
            Alert.show("PHP CALL","error only website");
         }
      }
   }
}

