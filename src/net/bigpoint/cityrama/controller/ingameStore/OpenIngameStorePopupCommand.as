package net.bigpoint.cityrama.controller.ingameStore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.ingameStore.IngameStoreBookMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenIngameStorePopupCommand extends SimpleCommand
   {
      
      public function OpenIngameStorePopupCommand()
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
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Object = param1.getBody() as Object;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            if(!_loc2_)
            {
               addr0031:
               _loc2_ = new Object();
            }
            var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            if(_loc4_ || Boolean(param1))
            {
               _loc3_.modal = true;
               if(!(_loc5_ && Boolean(this)))
               {
                  _loc3_.viewClass = IngameStoreBook;
                  if(_loc4_)
                  {
                     _loc3_.mediatorClass = IngameStoreBookMediator;
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        _loc3_.mediatorName = IngameStoreBookMediator.NAME;
                        if(_loc4_)
                        {
                           _loc3_.data = _loc2_;
                           if(_loc4_)
                           {
                              addr00b8:
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
                           }
                        }
                        §§goto(addr00c3);
                     }
                  }
                  §§goto(addr00b8);
               }
            }
            addr00c3:
            return;
         }
         §§goto(addr0031);
      }
   }
}

