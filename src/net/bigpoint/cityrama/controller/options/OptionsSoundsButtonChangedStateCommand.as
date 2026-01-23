package net.bigpoint.cityrama.controller.options
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsSoundsButtonChangedStateCommand extends SimpleCommand
   {
      
      public function OptionsSoundsButtonChangedStateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(_loc5_ || _loc2_)
         {
            §§push(_loc3_);
            §§push(_loc3_.isSFXOff);
            if(_loc5_)
            {
               §§push(!§§pop());
            }
            §§pop().isSFXOff = §§pop();
            if(_loc5_ || Boolean(this))
            {
               §§push(_loc3_);
               §§push(_loc3_.isBackgroundSoundOff);
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(!§§pop());
               }
               §§pop().isBackgroundSoundOff = §§pop();
               if(_loc5_ || Boolean(this))
               {
                  addr0098:
                  OptionsGlobalVariables.getInstance().soundActive = _loc2_;
                  if(_loc5_ || _loc2_)
                  {
                     addr00b0:
                     TweenMax.delayedCall(0.3,this.handleServerNotification);
                  }
               }
               return;
            }
            §§goto(addr0098);
         }
         §§goto(addr00b0);
      }
      
      private function handleServerNotification() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
         }
      }
   }
}

