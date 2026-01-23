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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:ExternalPaymentPackInfoVo = null;
         var _loc11_:ConfigPaymentPackUpsellingDTO = null;
         var _loc2_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         if(!_loc2_.upsellEnabled)
         {
            return;
         }
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:PlayerPaymentUpsellDTO = _loc3_.player.playerPaymentPackInfo.upsellPaymentPack;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:Object = param1.getBody();
         var _loc7_:UpsellingNotificationLayerVo = new UpsellingNotificationLayerVo();
         var _loc8_:ConfigPaymentPackDTO = _loc4_.config.paymentPacks[_loc5_.id];
         _loc7_.packConfig = _loc8_;
         _loc7_.currentUpsell = _loc5_;
         _loc7_.oldPaymentCall = _loc6_;
         var _loc10_:String = "";
         for each(_loc11_ in _loc8_.upsellPackages)
         {
            if(_loc11_.category == _loc5_.type)
            {
               _loc10_ = _loc11_.key;
               break;
            }
         }
         if(Boolean(_loc2_.upsellPackInfoDictionary) && Boolean(_loc2_.upsellPackInfoDictionary[_loc10_]))
         {
            _loc9_ = _loc2_.upsellPackInfoDictionary[_loc10_];
            _loc7_.price = _loc9_.price;
            _loc7_.currency = _loc9_.currency;
         }
         if(Boolean(_loc2_.realCurrencyPackInfoDictionary) && Boolean(_loc2_.realCurrencyPackInfoDictionary[_loc8_.id]))
         {
            _loc9_ = _loc2_.realCurrencyPackInfoDictionary[_loc8_.id];
            _loc7_.amount = _loc9_.amount;
         }
         var _loc12_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc12_.mediatorName = UpsellNotificationMiniLayerMediator.NAME;
         _loc12_.mediatorClass = UpsellNotificationMiniLayerMediator;
         _loc12_.viewClass = UpsellNotificationMinilayer;
         _loc12_.modal = true;
         _loc12_.data = _loc7_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc12_);
      }
   }
}

