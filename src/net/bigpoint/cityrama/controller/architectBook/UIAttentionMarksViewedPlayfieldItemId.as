package net.bigpoint.cityrama.controller.architectBook
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class UIAttentionMarksViewedPlayfieldItemId extends SimpleCommand implements ICommand
   {
      
      public function UIAttentionMarksViewedPlayfieldItemId()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         if(!_loc3_)
         {
            OptionsGlobalVariables.getInstance().viewedPlayfieldItemConfigIds = _loc2_.uiDataDTO.viewedPlayfieldItemConfigIds;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0056:
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
            }
            return;
         }
         §§goto(addr0056);
      }
   }
}

