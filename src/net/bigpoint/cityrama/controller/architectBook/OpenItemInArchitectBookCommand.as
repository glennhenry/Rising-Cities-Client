package net.bigpoint.cityrama.controller.architectBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenItemInArchitectBookCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenItemInArchitectBookCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Number = param1.getBody() as Number;
         if(_loc4_ || Boolean(param1))
         {
            if(!isNaN(_loc2_))
            {
               if(_loc4_ || Boolean(this))
               {
                  addr005e:
                  sendNotification(ApplicationNotificationConstants.OPEN_INGAME_STORE_POPUP,{
                     "index":IngameStoreTabProxy.ARCHITECT_TAB_INDEX,
                     "itemConfigId":_loc2_
                  });
               }
            }
            return;
         }
         §§goto(addr005e);
      }
   }
}

