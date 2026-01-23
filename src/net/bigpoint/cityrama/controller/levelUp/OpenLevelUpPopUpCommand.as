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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:UserLevelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:Number = param1.getBody() as Number;
         var _loc5_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.STACK_POPUP);
         _loc5_.modal = true;
         if(!(_loc7_ && Boolean(this)))
         {
            _loc5_.viewClass = RewardLayerPopup;
            if(!_loc7_)
            {
               _loc5_.mediatorClass = RewardLayerMediator;
               if(!_loc7_)
               {
                  _loc5_.mediatorName = RewardLayerMediator.NAME + getTimer();
                  if(_loc8_)
                  {
                     addr00a5:
                     _loc5_.openedByUserAxn = false;
                  }
                  addr00ab:
                  var _loc6_:LevelUpVo = _loc2_.getLevelUpVoById(_loc4_,RewardItemComponentVo.SIZE_BIG);
                  if(_loc8_ || Boolean(param1))
                  {
                     _loc5_.data = RewardLayerProxy.getRewardVoForLevelUp(_loc6_);
                     if(!_loc7_)
                     {
                        _loc3_.playLevelUp();
                        if(_loc8_)
                        {
                           addr00fa:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                        }
                        return;
                     }
                  }
                  §§goto(addr00fa);
               }
               §§goto(addr00a5);
            }
         }
         §§goto(addr00ab);
      }
   }
}

