package net.bigpoint.cityrama.controller.citysquare
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventSelectionPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventSelectionPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitySquareEventSelectionCommand extends SimpleCommand
   {
      
      public function OpenCitySquareEventSelectionCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!_loc4_)
         {
            _loc2_.modal = true;
            if(!_loc4_)
            {
               _loc2_.viewClass = CitySquareEventSelectionPopup;
               if(_loc5_)
               {
                  addr004d:
                  _loc2_.mediatorClass = CitySquareEventSelectionPopupMediator;
                  if(!_loc4_)
                  {
                     _loc2_.mediatorName = CitySquareEventSelectionPopupMediator.NAME;
                  }
               }
            }
            var _loc3_:EventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
            if(!_loc4_)
            {
               _loc2_.data = _loc3_.getCitysquareEventSelectionVo();
               if(_loc5_ || Boolean(_loc2_))
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
               }
            }
            return;
         }
         §§goto(addr004d);
      }
   }
}

