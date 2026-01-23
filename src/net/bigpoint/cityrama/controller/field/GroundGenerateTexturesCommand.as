package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class GroundGenerateTexturesCommand extends SimpleCommand
   {
      
      public function GroundGenerateTexturesCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PlaneObject = PlaneObject(param1.getBody());
         if(!_loc4_)
         {
            _loc2_.redraw();
         }
      }
   }
}

