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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:PopupSettingsVo = null;
         var _loc6_:NewsScreenMediator = null;
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         var _loc4_:NewsscreenPopupVo = _loc3_.getNewsscreenLayerVo(_loc2_);
         if(_loc4_.slides.length > 0)
         {
            _loc5_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc5_.modal = true;
            if(_loc7_ || Boolean(param1))
            {
               _loc5_.viewClass = NewsScreenPopup;
               if(_loc7_)
               {
                  _loc5_.mediatorClass = NewsScreenMediator;
                  if(_loc7_ || _loc2_)
                  {
                     _loc5_.mediatorName = NewsScreenMediator.NAME;
                     if(_loc7_ || _loc2_)
                     {
                        _loc5_.openedByUserAxn = false;
                        if(!(_loc8_ && _loc2_))
                        {
                           addr00cf:
                           _loc5_.data = _loc4_;
                           if(_loc7_ || Boolean(this))
                           {
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
                              addr00e3:
                           }
                        }
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr00e3);
            }
            §§goto(addr00cf);
         }
         else
         {
            _loc6_ = facade.retrieveMediator(NewsScreenMediator.NAME) as NewsScreenMediator;
            if(_loc6_)
            {
               if(_loc7_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,_loc6_.getMediatorName());
               }
            }
         }
         addr012c:
      }
   }
}

