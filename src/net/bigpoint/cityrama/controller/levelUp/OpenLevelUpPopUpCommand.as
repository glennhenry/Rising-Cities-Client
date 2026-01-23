package net.bigpoint.cityrama.controller.levelUp
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.rewardLayer.RewardLayerMediator;
   import net.bigpoint.cityrama.view.rewardLayer.ui.RewardLayerPopup;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenLevelUpPopUpCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenLevelUpPopUpCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:Number = param1.getBody() as Number;
         var _loc5_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
         _loc5_.modal = true;
         _loc5_.viewClass = RewardLayerPopup;
         _loc5_.mediatorClass = RewardLayerMediator;
         _loc5_.mediatorName = RewardLayerMediator.NAME + getTimer();
         _loc5_.openedByUserAxn = false;
         var _loc6_:LevelUpVo = _loc2_.getLevelUpVoById(_loc4_,RewardItemComponentVo.SIZE_BIG);
         _loc5_.data = RewardLayerProxy.getRewardVoForLevelUp(_loc6_);
         _loc3_.playLevelUp();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
      }
   }
}

