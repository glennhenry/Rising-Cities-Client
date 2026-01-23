package net.bigpoint.cityrama.controller
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeNewCommand extends SimpleCommand
   {
      
      public function ApplicationModeNewCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

