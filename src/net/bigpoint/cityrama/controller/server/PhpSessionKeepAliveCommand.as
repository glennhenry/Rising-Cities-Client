package net.bigpoint.cityrama.controller.server
{
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PhpSessionKeepAliveCommand extends SimpleCommand implements ICommand
   {
      
      public function PhpSessionKeepAliveCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

