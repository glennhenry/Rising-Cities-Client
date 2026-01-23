package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class GroundGenerateTexturesCommand extends SimpleCommand
   {
      
      public function GroundGenerateTexturesCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlaneObject = PlaneObject(param1.getBody());
         _loc2_.redraw();
      }
   }
}

