package net.bigpoint.cityrama.controller.server.messages.education
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalAttributeChangeFailCommand extends SimpleCommand
   {
      
      public function ServerMessageProfessionalAttributeChangeFailCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

