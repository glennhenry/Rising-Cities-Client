package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsMusicButtonChangedStateCommand extends SimpleCommand
   {
      
      public function OptionsMusicButtonChangedStateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         _loc3_.isBackgroundSoundOff = _loc2_;
      }
   }
}

