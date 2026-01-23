package net.bigpoint.cityrama.controller.featureScreens
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.featureScreens.FeatureScreenMediator;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.FeatureScreenPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenFeatureScreenCommand extends SimpleCommand
   {
      
      public function OpenFeatureScreenCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = param1.getBody();
         var _loc3_:String = _loc2_.feature;
         var _loc4_:Boolean = Boolean(_loc2_.quest);
         var _loc5_:FeatureScreenProxy = facade.retrieveProxy(FeatureScreenProxy.NAME) as FeatureScreenProxy;
         var _loc6_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
         _loc6_.modal = true;
         _loc6_.viewClass = FeatureScreenPopup;
         _loc6_.mediatorClass = FeatureScreenMediator;
         _loc6_.mediatorName = FeatureScreenMediator.NAME + getTimer();
         _loc6_.openedByUserAxn = !_loc4_;
         var _loc7_:Object = new Object();
         _loc7_.feature = _loc5_.getFeatureScreenVo(_loc3_);
         _loc7_.quest = _loc4_;
         _loc6_.data = _loc7_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc6_);
      }
   }
}

