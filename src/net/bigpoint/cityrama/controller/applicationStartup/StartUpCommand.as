package net.bigpoint.cityrama.controller.applicationStartup
{
   import net.bigpoint.cityrama.controller.applicationStartup.prepCommands.ControllerPrepMacroCommand;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.patterns.command.MacroCommand;
   
   public class StartUpCommand extends MacroCommand implements ICommand
   {
      
      public function StartUpCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function initializeMacroCommand() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            addSubCommand(ControllerPrepMacroCommand);
            if(_loc2_ || _loc2_)
            {
               addSubCommand(ModelPrepCommand);
               if(_loc2_ || _loc1_)
               {
                  addr004e:
                  addSubCommand(ViewPrepCommand);
               }
            }
            return;
         }
         §§goto(addr004e);
      }
   }
}

