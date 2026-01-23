package org.puremvc.as3.patterns.command
{
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.interfaces.INotifier;
   import org.puremvc.as3.patterns.observer.Notifier;
   
   public class MacroCommand extends Notifier implements ICommand, INotifier
   {
      
      private var subCommands:Array;
      
      public function MacroCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               subCommands = new Array();
               if(_loc1_ || _loc1_)
               {
                  addr0047:
                  initializeMacroCommand();
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      final public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Class = null;
         var _loc3_:ICommand = null;
         loop0:
         while(true)
         {
            §§push(subCommands);
            while(§§pop().length > 0)
            {
               §§push(subCommands);
               if(_loc4_ || Boolean(this))
               {
                  _loc2_ = §§pop().shift();
                  _loc3_ = new _loc2_();
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     _loc3_.execute(param1);
                  }
                  continue loop0;
               }
            }
            break;
         }
      }
      
      protected function addSubCommand(param1:Class) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            subCommands.push(param1);
         }
      }
      
      protected function initializeMacroCommand() : void
      {
      }
   }
}

