package net.bigpoint.cityrama.controller.worldMap
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenWorldMapOrLoadPlayfieldCommand extends SimpleCommand
   {
      
      public function OpenWorldMapOrLoadPlayfieldCommand()
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
         var _loc2_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(_loc3_)
         {
            if(!_loc2_.isMoreThanOnePlayfieldEnabled)
            {
               if(!(_loc4_ && _loc3_))
               {
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,1);
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI,false);
               if(!_loc4_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP,false);
               }
            }
         }
      }
   }
}

