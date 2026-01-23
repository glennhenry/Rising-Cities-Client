package net.bigpoint.cityrama.controller.friend
{
   import flash.external.ExternalInterface;
   import mx.controls.Alert;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenSlayerEMailCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenSlayerEMailCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var note:INotification = param1;
         try
         {
            ExternalInterface.call("SLAYER.renderInviteDialog()");
         }
         catch(e:Error)
         {
            Alert.show("Js CALL slayer Invite","only live");
         }
      }
   }
}

