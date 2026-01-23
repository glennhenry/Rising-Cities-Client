package net.bigpoint.cityrama.controller.preloaderStartup
{
   import org.puremvc.as3.patterns.command.MacroCommand;
   
   public class PreloaderStartupCommand extends MacroCommand
   {
      
      public function PreloaderStartupCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override protected function initializeMacroCommand() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            addSubCommand(PreloaderViewPrepCommand);
            if(_loc1_ || Boolean(this))
            {
               addSubCommand(PreloaderModelPrepCommand);
               if(!(_loc2_ && _loc2_))
               {
                  addr004d:
                  addSubCommand(PreloaderControllerPrepCommand);
               }
               §§goto(addr0057);
            }
            §§goto(addr004d);
         }
         addr0057:
      }
   }
}

