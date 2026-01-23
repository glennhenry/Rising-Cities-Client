package net.bigpoint.cityrama.controller.payment
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.rewards.vo.RewardDataVo;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentPackDTO;
   import net.bigpoint.cityrama.view.miniLayer.CinemaRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CinemaRewardMiniLayer;
   import net.bigpoint.cityrama.view.rewardLayer.RewardLayerMediator;
   import net.bigpoint.cityrama.view.rewardLayer.ui.RewardLayerPopup;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayerPaymentPackStartupCommand extends SimpleCommand implements ICommand
   {
      
      public function PlayerPaymentPackStartupCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:PopupSettingsVo = null;
         var _loc5_:PlayerPaymentPackDTO = null;
         var _loc6_:RewardLayerProxy = null;
         var _loc7_:RewardDataVo = null;
         var _loc8_:CinemaProxy = null;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc3_:int = 0;
         for each(_loc5_ in _loc2_.player.playerPaymentPackInfo.purchasedPaymentPacks)
         {
            if(_loc5_.showLayer)
            {
               if(_loc5_.config.type != ServerPaymentPackConst.CINEMA)
               {
                  _loc6_ = facade.retrieveProxy(RewardLayerProxy.NAME) as RewardLayerProxy;
                  _loc4_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
                  _loc4_.modal = true;
                  _loc4_.viewClass = RewardLayerPopup;
                  _loc4_.mediatorClass = RewardLayerMediator;
                  _loc4_.mediatorName = RewardLayerMediator.NAME + getTimer() + _loc3_;
                  _loc4_.openedByUserAxn = false;
                  _loc7_ = _loc6_.getRewardForPaymentPack(_loc5_.config.id,RewardItemComponentVo.SIZE_BIG);
                  _loc4_.data = _loc7_;
               }
               else
               {
                  _loc8_ = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
                  _loc4_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
                  _loc4_.modal = true;
                  _loc4_.viewClass = CinemaRewardMiniLayer;
                  _loc4_.mediatorClass = CinemaRewardMiniLayerMediator;
                  _loc4_.mediatorName = CinemaRewardMiniLayerMediator.NAME + getTimer() + _loc3_;
                  _loc4_.openedByUserAxn = false;
                  _loc4_.data = _loc8_.cinemaRewardMiniLayerVo;
               }
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
               _loc5_.showLayer = false;
               _loc3_++;
            }
         }
      }
   }
}

