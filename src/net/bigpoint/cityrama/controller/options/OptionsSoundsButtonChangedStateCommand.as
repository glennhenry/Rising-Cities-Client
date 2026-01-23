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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         _loc3_.isSFXOff = !_loc3_.isSFXOff;
         _loc3_.isBackgroundSoundOff = !_loc3_.isBackgroundSoundOff;
         OptionsGlobalVariables.getInstance().soundActive = _loc2_;
         TweenMax.delayedCall(0.3,this.handleServerNotification);
      }
      
      private function handleServerNotification() : void
      {
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
      }
   }
}

