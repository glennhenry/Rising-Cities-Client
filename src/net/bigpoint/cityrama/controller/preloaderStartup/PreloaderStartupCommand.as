package net.bigpoint.cityrama.controller.preloaderStartup
{
   import org.puremvc.as3.patterns.command.MacroCommand;
   
   public class PreloaderStartupCommand extends MacroCommand
   {
      
      public function PreloaderStartupCommand()
      {
         super();
      }
      
      override protected function initializeMacroCommand() : void
      {
         addSubCommand(PreloaderViewPrepCommand);
         addSubCommand(PreloaderModelPrepCommand);
         addSubCommand(PreloaderControllerPrepCommand);
      }
   }
}

