package net.bigpoint.cityrama.controller
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ErrorCommand extends SimpleCommand
   {
      
      public function ErrorCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

