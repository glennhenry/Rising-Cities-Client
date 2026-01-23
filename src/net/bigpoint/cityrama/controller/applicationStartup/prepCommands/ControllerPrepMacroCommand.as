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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override protected function initializeMacroCommand() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            addSubCommand(ControllerPrepCommandApplicationModes);
            if(!_loc1_)
            {
               addSubCommand(ControllerPrepCommandServerClientCommunication);
               if(!_loc1_)
               {
                  addSubCommand(ControllerPrepCommandClientServerCommunication);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addSubCommand(ControllerPrepCommandMenu);
                     if(_loc2_)
                     {
                        addSubCommand(ControllerPrepCommandQuestsystem);
                        if(_loc2_)
                        {
                           addr007d:
                           addSubCommand(ControllerPrepCommandPlayfield);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr0094:
                              addSubCommand(ControllerPrepCommandPopups);
                              if(!_loc1_)
                              {
                                 addr00a3:
                                 addSubCommand(ControllerPrepCommandMisc);
                              }
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0094);
                  }
                  addr00ad:
                  return;
               }
               §§goto(addr0094);
            }
         }
         §§goto(addr007d);
      }
   }
}

