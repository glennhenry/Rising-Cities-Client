package net.bigpoint.cityrama.controller.featureScreens
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureCharacterScreenVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.featureScreens.BigFeatureScreenMediator;
   import net.bigpoint.cityrama.view.featureScreens.FeatureCharacterScreenMediator;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.BigFeatureScreenPopup;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.FeatureCharacterScreen;
   import net.bigpoint.cityrama.view.quest.InfrastructureIntroductionScreenMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.InfrastructureIntroScreen;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenBigFeatureOrCharacterScreenCommand extends SimpleCommand implements ICommand
   {
      
      private var _featP:FeatureScreenProxy;
      
      public function OpenBigFeatureOrCharacterScreenCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = param1.getBody();
         var _loc3_:Boolean = Boolean(_loc2_.quest);
         var _loc4_:int = int(_loc2_.screen);
         var _loc5_:int = int(_loc2_.feature);
         if(_loc4_)
         {
            this.openCharacterScreen(_loc4_,_loc3_);
         }
         if(_loc5_)
         {
            this.openBigFeatureScreen(_loc5_,_loc3_);
         }
      }
      
      private function openBigFeatureScreen(param1:int, param2:Boolean) : void
      {
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = BigFeatureScreenPopup;
         _loc3_.mediatorClass = BigFeatureScreenMediator;
         _loc3_.mediatorName = BigFeatureScreenMediator.NAME;
         _loc3_.openedByUserAxn = !param2;
         var _loc4_:BigFeatureScreenVO = this.featureScreenProxy.getBigFeatureScreenVo(param1);
         if(_loc4_)
         {
            _loc3_.data = {
               "feature":_loc4_,
               "quest":param2
            };
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         }
      }
      
      private function openCharacterScreen(param1:int, param2:Boolean) : void
      {
         var _loc4_:FeatureCharacterScreenVo = null;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.FEATURE_POPUP);
         _loc3_.modal = true;
         _loc3_.openedByUserAxn = !param2;
         if(param1 == QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION)
         {
            _loc3_.viewClass = InfrastructureIntroScreen;
            _loc3_.mediatorClass = InfrastructureIntroductionScreenMediator;
            _loc3_.mediatorName = InfrastructureIntroductionScreenMediator.NAME;
            _loc3_.data = {"quest":param2};
         }
         else
         {
            _loc3_.viewClass = FeatureCharacterScreen;
            _loc3_.mediatorClass = FeatureCharacterScreenMediator;
            _loc3_.mediatorName = FeatureCharacterScreenMediator.NAME;
            _loc4_ = this.featureScreenProxy.getFeatureCharacterScreenVo(param1);
            _loc3_.data = {
               "quest":param2,
               "vo":_loc4_
            };
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
      
      private function get featureScreenProxy() : FeatureScreenProxy
      {
         if(this._featP == null)
         {
            this._featP = facade.retrieveProxy(FeatureScreenProxy.NAME) as FeatureScreenProxy;
         }
         return this._featP;
      }
   }
}

