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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc4_:PopupSettingsVo = null;
         var _loc5_:PlayerPaymentPackDTO = null;
         var _loc6_:RewardLayerProxy = null;
         var _loc7_:RewardDataVo = null;
         var _loc8_:CinemaProxy = null;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc3_:int = 0;
         for each(_loc5_ in _loc2_.player.playerPaymentPackInfo.purchasedPaymentPacks)
         {
            if(!_loc5_.showLayer)
            {
               continue;
            }
            if(_loc11_)
            {
               if(_loc5_.config.type != ServerPaymentPackConst.CINEMA)
               {
                  addr0084:
                  _loc6_ = facade.retrieveProxy(RewardLayerProxy.NAME) as RewardLayerProxy;
                  _loc4_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
                  _loc4_.modal = true;
                  if(_loc11_ || Boolean(_loc3_))
                  {
                     _loc4_.viewClass = RewardLayerPopup;
                     if(!_loc12_)
                     {
                        _loc4_.mediatorClass = RewardLayerMediator;
                        if(!_loc12_)
                        {
                           _loc4_.mediatorName = RewardLayerMediator.NAME + getTimer() + _loc3_;
                           addr00d4:
                           if(_loc11_)
                           {
                              addr00fc:
                              _loc4_.openedByUserAxn = false;
                           }
                           _loc7_ = _loc6_.getRewardForPaymentPack(_loc5_.config.id,RewardItemComponentVo.SIZE_BIG);
                           if(_loc11_)
                           {
                              _loc4_.data = _loc7_;
                              if(!_loc12_)
                              {
                                 addr01ce:
                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
                                 if(_loc11_)
                                 {
                                    addr01e0:
                                    _loc5_.showLayer = false;
                                    if(_loc12_ && Boolean(param1))
                                    {
                                       continue;
                                    }
                                 }
                                 addr01f4:
                                 _loc3_++;
                                 continue;
                              }
                              §§goto(addr01e0);
                           }
                           §§goto(addr01f4);
                        }
                        §§goto(addr00fc);
                     }
                  }
                  §§goto(addr00d4);
               }
               else
               {
                  _loc8_ = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
                  _loc4_ = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
                  _loc4_.modal = true;
                  if(_loc11_)
                  {
                     _loc4_.viewClass = CinemaRewardMiniLayer;
                     if(_loc11_ || Boolean(this))
                     {
                        _loc4_.mediatorClass = CinemaRewardMiniLayerMediator;
                        if(_loc11_ || Boolean(_loc3_))
                        {
                           addr0188:
                           _loc4_.mediatorName = CinemaRewardMiniLayerMediator.NAME + getTimer() + _loc3_;
                           if(_loc11_ || Boolean(this))
                           {
                              addr01aa:
                              _loc4_.openedByUserAxn = false;
                              if(_loc11_)
                              {
                                 _loc4_.data = _loc8_.cinemaRewardMiniLayerVo;
                              }
                           }
                           §§goto(addr01ce);
                        }
                        §§goto(addr01aa);
                     }
                     §§goto(addr0188);
                  }
                  §§goto(addr01aa);
               }
            }
            §§goto(addr0084);
         }
      }
   }
}

