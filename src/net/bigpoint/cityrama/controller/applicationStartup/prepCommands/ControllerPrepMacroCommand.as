package net.bigpoint.cityrama.controller.applicationStartup.prepCommands
{
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandApplicationModes;
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandClientServerCommunication;
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandMenu;
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandMisc;
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandPlayfield;
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandPopups;
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandQuestsystem;
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller.ControllerPrepCommandServerClientCommunication;
   import org.puremvc.as3.patterns.command.MacroCommand;
   
   public class ControllerPrepMacroCommand extends MacroCommand
   {
      
      public function ControllerPrepMacroCommand()
      {
         super();
      }
      
      override protected function initializeMacroCommand() : void
      {
         addSubCommand(ControllerPrepCommandApplicationModes);
         addSubCommand(ControllerPrepCommandServerClientCommunication);
         addSubCommand(ControllerPrepCommandClientServerCommunication);
         addSubCommand(ControllerPrepCommandMenu);
         addSubCommand(ControllerPrepCommandQuestsystem);
         addSubCommand(ControllerPrepCommandPlayfield);
         addSubCommand(ControllerPrepCommandPopups);
         addSubCommand(ControllerPrepCommandMisc);
      }
   }
}

