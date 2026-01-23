package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.LogoutMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenLogoutMiniLayerCommand extends SimpleCommand
   {
      
      public function OpenLogoutMiniLayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            _loc2_.modal = true;
            if(!(_loc4_ && _loc3_))
            {
               addr004b:
               _loc2_.viewClass = QueryMiniLayer;
               if(!_loc4_)
               {
                  §§goto(addr0058);
               }
               §§goto(addr0090);
            }
            addr0058:
            _loc2_.mediatorClass = LogoutMiniLayerMediator;
            if(!(_loc4_ && Boolean(param1)))
            {
               _loc2_.mediatorName = LogoutMiniLayerMediator.NAME;
               if(_loc3_ || Boolean(param1))
               {
                  addr0090:
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
               }
            }
            return;
         }
         §§goto(addr004b);
      }
   }
}

