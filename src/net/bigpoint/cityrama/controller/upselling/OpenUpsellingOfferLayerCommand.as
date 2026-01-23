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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:PlayerProxy = null;
         var _loc8_:GameConfigProxy = null;
         var _loc9_:UpsellingOfferLayerVo = null;
         var _loc2_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         if(!_loc2_.upsellEnabled)
         {
            return;
         }
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc6_:Boolean = false;
         if(Boolean(param1.getBody()) && Boolean(param1.getBody().showAnyways))
         {
            _loc6_ = Boolean(param1.getBody().showAnyways);
         }
         if(_loc6_ || _loc3_.userdata.lastTimeUpsellWasShown + 259200000 <= _loc4_.currentTimeStamp)
         {
            _loc3_.userdata.lastTimeUpsellWasShown = _loc4_.currentTimeStamp;
            _loc3_.flush();
            _loc7_ = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
            _loc8_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            if(!_loc2_.isUpsellRunning())
            {
               return;
            }
            if(_loc7_.player.playerPaymentPackInfo.upsellPaymentPack)
            {
               _loc9_ = new UpsellingOfferLayerVo();
               _loc9_.packConfig = _loc8_.config.paymentPacks[_loc7_.player.playerPaymentPackInfo.upsellPaymentPack.id];
               _loc9_.currentUpsell = _loc7_.player.playerPaymentPackInfo.upsellPaymentPack;
               var _loc10_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               _loc10_.mediatorName = UpsellingOfferLayerMediator.NAME;
               null.mediatorClass = UpsellingOfferLayerMediator;
               null.viewClass = UpsellingOfferLayer;
               null.modal = true;
               null.data = _loc9_;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,null);
            }
         }
      }
   }
}

