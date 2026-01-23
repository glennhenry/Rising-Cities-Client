package net.bigpoint.cityrama.controller.server.messages.education
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageStartEducationFailCommand extends SimpleCommand
   {
      
      public function ServerMessageStartEducationFailCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

