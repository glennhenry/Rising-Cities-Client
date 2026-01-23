package net.bigpoint.cityrama.controller.storage
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.storageBook.StoragePopupMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.StoragePopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenStoragePopupCommand extends SimpleCommand
   {
      
      public function OpenStoragePopupCommand()
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
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         if(!_loc4_)
         {
            _loc2_.modal = true;
            if(_loc3_ || _loc3_)
            {
               _loc2_.viewClass = StoragePopup;
               if(_loc3_ || Boolean(_loc2_))
               {
                  _loc2_.mediatorClass = StoragePopupMediator;
                  if(_loc3_)
                  {
                     _loc2_.mediatorName = StoragePopupMediator.NAME;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr0085:
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
                     }
                     §§goto(addr0090);
                  }
               }
               §§goto(addr0085);
            }
         }
         addr0090:
      }
   }
}

