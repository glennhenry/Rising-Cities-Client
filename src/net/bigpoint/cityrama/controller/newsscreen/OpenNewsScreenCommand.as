package net.bigpoint.cityrama.controller.newsscreen
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.newsscreen.NewsscreenLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.newsscreen.NewsScreenMediator;
   import net.bigpoint.cityrama.view.newsscreen.NewsScreenPopup;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsscreenPopupVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenNewsScreenCommand extends SimpleCommand
   {
      
      public function OpenNewsScreenCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:PopupSettingsVo = null;
         var _loc6_:NewsScreenMediator = null;
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         var _loc4_:NewsscreenPopupVo = _loc3_.getNewsscreenLayerVo(_loc2_);
         if(_loc4_.slides.length > 0)
         {
            _loc5_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc5_.modal = true;
            _loc5_.viewClass = NewsScreenPopup;
            _loc5_.mediatorClass = NewsScreenMediator;
            _loc5_.mediatorName = NewsScreenMediator.NAME;
            _loc5_.openedByUserAxn = false;
            _loc5_.data = _loc4_;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
         }
         else
         {
            _loc6_ = facade.retrieveMediator(NewsScreenMediator.NAME) as NewsScreenMediator;
            if(_loc6_)
            {
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc6_.getMediatorName());
            }
         }
      }
   }
}

