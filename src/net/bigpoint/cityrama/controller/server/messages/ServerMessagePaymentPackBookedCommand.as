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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:RewardLayerProxy = null;
         var _loc6_:PopupSettingsVo = null;
         var _loc7_:RewardDataVo = null;
         var _loc8_:ExternalInterfaceProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:ConfigPaymentPackDTO = _loc3_.config.paymentPacks[_loc2_.json.pid];
         if(_loc4_ != null)
         {
            if(_loc4_.type == ServerPaymentPackConst.EVOUCHER || _loc4_.type == ServerPaymentPackConst.STARTERPACK || _loc4_.type == ServerPaymentPackConst.AID_PACK || _loc4_.type == ServerPaymentPackConst.PREMIUMPACK_A || _loc4_.type == ServerPaymentPackConst.EXPANSION_REFUND)
            {
               _loc5_ = facade.retrieveProxy(RewardLayerProxy.NAME) as RewardLayerProxy;
               _loc6_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
               _loc6_.modal = true;
               _loc6_.viewClass = RewardLayerPopup;
               _loc6_.mediatorClass = RewardLayerMediator;
               _loc6_.mediatorName = RewardLayerMediator.NAME + getTimer();
               _loc6_.openedByUserAxn = false;
               _loc7_ = _loc5_.getRewardForPaymentPack(Number(_loc2_.json.pid),RewardItemComponentVo.SIZE_BIG);
               _loc6_.data = _loc7_;
               if(_loc7_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
               }
            }
            else if(_loc4_.type == ServerPaymentPackConst.CINEMA)
            {
               _loc8_ = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
               _loc8_.closeExternalCinema();
               sendNotification(MiniLayerConstants.OPEN_MINI_CINEMA_REWARDS_LAYER);
            }
         }
      }
   }
}

