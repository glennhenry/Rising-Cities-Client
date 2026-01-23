package net.bigpoint.cityrama.controller.cinema
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.cinema.CinemaLayerMediator;
   import net.bigpoint.cityrama.view.cinema.ui.CinemaLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCinemaLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCinemaLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:PopupSettingsVo = null;
         var _loc2_:CinemaProxy = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         if(!_loc2_.disabledByAID && !_loc2_.inMaintenance)
         {
            _loc3_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc3_.modal = true;
            _loc3_.mediatorName = CinemaLayerMediator.NAME;
            _loc3_.mediatorClass = CinemaLayerMediator;
            _loc3_.viewClass = CinemaLayer;
            _loc3_.data = _loc2_.cinemaLayerVo;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
         }
      }
   }
}

