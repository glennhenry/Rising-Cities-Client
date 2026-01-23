package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.optionsmenu.OptionsMenuPopupMediator;
   import net.bigpoint.cityrama.view.optionsmenu.ui.components.OptionsMenuPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsLayerOpenCommand extends SimpleCommand
   {
      
      public function OptionsLayerOpenCommand()
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
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(!_loc4_)
         {
            _loc2_.modal = true;
            if(_loc3_ || Boolean(this))
            {
               _loc2_.viewClass = OptionsMenuPopup;
               if(!(_loc4_ && Boolean(param1)))
               {
                  _loc2_.mediatorClass = OptionsMenuPopupMediator;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr008a);
               }
               addr007c:
               _loc2_.mediatorName = OptionsMenuPopupMediator.NAME;
               if(_loc3_)
               {
                  addr008a:
                  sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
               }
               §§goto(addr0095);
            }
            §§goto(addr008a);
         }
         addr0095:
      }
   }
}

