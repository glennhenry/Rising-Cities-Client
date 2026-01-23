package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class MouseMoveForImprovementCommand extends SimpleCommand
   {
      
      public function MouseMoveForImprovementCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
      }
   }
}

