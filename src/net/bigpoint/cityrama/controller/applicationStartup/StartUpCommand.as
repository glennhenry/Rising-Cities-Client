package net.bigpoint.cityrama.controller.applicationStartup
{
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.ControllerPrepMacroCommand;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.patterns.command.MacroCommand;
   
   public class StartUpCommand extends MacroCommand implements ICommand
   {
      
      public function StartUpCommand()
      {
         super();
      }
      
      override protected function initializeMacroCommand() : void
      {
         addSubCommand(ControllerPrepMacroCommand);
         addSubCommand(ModelPrepCommand);
         addSubCommand(ViewPrepCommand);
      }
   }
}

