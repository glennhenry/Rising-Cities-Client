package net.bigpoint.cityrama.controller.citysquare
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitysquareRequestNewEventCommand extends SimpleCommand
   {
      
      public function OpenCitysquareRequestNewEventCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         var _loc3_:Number = param1.getBody() as Number;
         if(!isNaN(_loc3_))
         {
            _loc4_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc4_.modal = true;
            _loc4_.viewClass = QueryMiniLayer;
            _loc4_.mediatorClass = OpenCitysquareRequestNewEventMiniLayerMediator;
            _loc4_.mediatorName = OpenCitysquareRequestNewEventMiniLayerMediator.NAME;
            _loc4_.data = _loc3_;
            _loc4_.modal = true;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
         }
      }
   }
}

