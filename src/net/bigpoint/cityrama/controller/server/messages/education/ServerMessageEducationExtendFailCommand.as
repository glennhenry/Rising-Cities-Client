package net.bigpoint.cityrama.controller.server.messages.education
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEducationExtendFailCommand extends SimpleCommand
   {
      
      public function ServerMessageEducationExtendFailCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

