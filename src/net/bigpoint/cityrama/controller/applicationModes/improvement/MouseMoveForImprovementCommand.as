package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class MouseMoveForImprovementCommand extends SimpleCommand
   {
      
      public function MouseMoveForImprovementCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

