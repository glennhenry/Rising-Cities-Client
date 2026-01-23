package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CitySquareUpsellMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitysquareUpsellRewardMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCitysquareUpsellRewardMinilayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Object = param1.getBody();
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_)
         {
            _loc3_.modal = true;
            if(!(_loc5_ && Boolean(this)))
            {
               addr0041:
               _loc3_.viewClass = CitySquareRewardMiniLayer;
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  _loc3_.mediatorClass = CitySquareUpsellMiniLayerMediator;
                  if(_loc4_)
                  {
                     _loc3_.mediatorName = CitySquareUpsellMiniLayerMediator.NAME;
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc3_.data = EventLayerProxy(facade.retrieveProxy(EventLayerProxy.NAME)).getUpsellingCitySquareDetailViewVo();
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr00b6:
                           facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr00b6);
         }
         §§goto(addr0041);
      }
   }
}

