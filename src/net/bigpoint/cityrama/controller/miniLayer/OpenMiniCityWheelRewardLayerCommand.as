package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.CityWheelRewardLayerVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CityWheelRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CityWheelRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMiniCityWheelRewardLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMiniCityWheelRewardLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:FeaturedEventProxy = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
         var _loc3_:CityWheelRewardLayerVo = _loc2_.cityWheelRewardLayerVo;
         if(_loc3_)
         {
            _loc4_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc4_.modal = true;
            _loc4_.viewClass = CityWheelRewardMiniLayer;
            _loc4_.mediatorClass = CityWheelRewardMiniLayerMediator;
            _loc4_.mediatorName = CityWheelRewardMiniLayerMediator.NAME;
            _loc4_.data = _loc3_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
         }
      }
   }
}

