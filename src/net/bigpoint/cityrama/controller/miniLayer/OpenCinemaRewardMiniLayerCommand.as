package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CinemaRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CinemaRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCinemaRewardMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCinemaRewardMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:CinemaProxy = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = CinemaRewardMiniLayer;
         _loc3_.mediatorClass = CinemaRewardMiniLayerMediator;
         _loc3_.mediatorName = CinemaRewardMiniLayerMediator.NAME;
         _loc3_.data = _loc2_.cinemaRewardMiniLayerVo;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

