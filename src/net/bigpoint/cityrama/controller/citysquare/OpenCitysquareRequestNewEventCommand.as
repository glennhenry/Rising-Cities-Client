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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         var _loc3_:Number = param1.getBody() as Number;
         if(!_loc6_)
         {
            if(!isNaN(_loc3_))
            {
               addr0045:
               _loc4_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
               _loc4_.modal = true;
               if(_loc5_ || Boolean(param1))
               {
                  _loc4_.viewClass = QueryMiniLayer;
                  if(!_loc6_)
                  {
                     §§goto(addr0080);
                  }
                  §§goto(addr00ae);
               }
               addr0080:
               _loc4_.mediatorClass = OpenCitysquareRequestNewEventMiniLayerMediator;
               if(_loc5_ || Boolean(this))
               {
                  _loc4_.mediatorName = OpenCitysquareRequestNewEventMiniLayerMediator.NAME;
                  if(_loc5_ || Boolean(param1))
                  {
                     _loc4_.data = _loc3_;
                     addr00ae:
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§goto(addr00ce);
                     }
                  }
                  §§goto(addr00e2);
               }
               addr00ce:
               _loc4_.modal = true;
               if(!(_loc6_ && Boolean(param1)))
               {
                  addr00e2:
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
               }
               §§goto(addr00ee);
            }
            addr00ee:
            return;
         }
         §§goto(addr0045);
      }
   }
}

