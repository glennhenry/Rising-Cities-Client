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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc3_:MessageVo = param1.getBody() as MessageVo;
         var _loc4_:PlayerPaymentUpsellDTO = null;
         if(_loc3_)
         {
            if(_loc3_.json && Boolean(_loc3_.json.up))
            {
               _loc4_ = new PlayerPaymentUpsellDTO(_loc3_.json.up);
               if(_loc4_.id == 0)
               {
                  _loc4_ = null;
               }
            }
         }
         var _loc5_:Boolean = _loc4_ != null && (_loc2_.player.playerPaymentPackInfo.upsellPaymentPack == null || _loc2_.player.playerPaymentPackInfo.upsellPaymentPack.id != _loc4_.id && _loc2_.player.playerPaymentPackInfo.upsellPaymentPack.type != _loc4_.type);
         _loc2_.player.playerPaymentPackInfo.upsellPaymentPack = _loc4_;
         var _loc6_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         _loc6_.cleanTreasuryIcons();
         var _loc7_:CityTreasuryTabProxy = facade.retrieveProxy(CityTreasuryTabProxy.NAME) as CityTreasuryTabProxy;
         _loc7_.cleanTabs();
         if(facade.hasMediator(CityTreasuryMediator.NAME))
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
         }
         if(_loc5_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_UPSELL_OFFER_LAYER);
         }
      }
   }
}

