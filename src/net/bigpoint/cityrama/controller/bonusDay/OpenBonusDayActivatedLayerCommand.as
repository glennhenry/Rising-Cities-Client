package net.bigpoint.cityrama.controller.bonusDay
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.bonusDay.BonusDayActivatedLayerMediator;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDayActivatedLayer;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenBonusDayActivatedLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenBonusDayActivatedLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:TimerBarComponentVo = null;
         var _loc8_:PopupSettingsVo = null;
         var _loc9_:ImprovementVo = null;
         var _loc2_:CityImprovementProxy = facade.retrieveProxy(CityImprovementProxy.NAME) as CityImprovementProxy;
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc6_:Boolean = param1.getBody() as Boolean;
         if((_loc6_) || _loc3_.userdata.lastTimeBonusDayWasShown + 86400000 < _loc4_.currentTimeStamp)
         {
            _loc3_.userdata.lastTimeBonusDayWasShown = _loc4_.currentTimeStamp;
            _loc3_.flush();
            if(_loc2_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
            {
               _loc7_ = new TimerBarComponentVo();
               _loc7_.currentTime = _loc4_.currentTimeStamp;
               if(_loc2_.isImprovementActive(ServerTagConstants.CLIENT_BONUS_DAY))
               {
                  _loc9_ = _loc2_.getImprovement(ServerTagConstants.CLIENT_BONUS_DAY);
                  _loc7_.startTime = _loc9_.startTime;
                  _loc7_.cycleLength = _loc9_.expirationTime - _loc9_.startTime;
                  _loc7_.targetTime = _loc9_.expirationTime;
               }
               _loc8_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               _loc8_.mediatorName = BonusDayActivatedLayerMediator.NAME;
               _loc8_.mediatorClass = BonusDayActivatedLayerMediator;
               _loc8_.viewClass = BonusDayActivatedLayer;
               _loc8_.modal = true;
               _loc8_.data = _loc7_;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc8_);
            }
         }
      }
   }
}

