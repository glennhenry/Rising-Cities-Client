package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsMusicButtonChangedStateCommand extends SimpleCommand
   {
      
      public function OptionsMusicButtonChangedStateCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
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
         if(!_loc4_)
         {
            _loc3_.isBackgroundSoundOff = _loc2_;
         }
      }
   }
}

