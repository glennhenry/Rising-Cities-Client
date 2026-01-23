package net.bigpoint.cityrama.controller.field
{
   import as3isolib.display.IsoView;
   import net.bigpoint.cityrama.view.field.ViewForegroundMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldViewNewCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldViewNewCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.removeMediator(ViewForegroundMediator.NAME);
         var _loc2_:IsoView = IsoView(param1.getBody());
         facade.registerMediator(new ViewForegroundMediator(ViewForegroundMediator.NAME,_loc2_.foregroundContainer));
      }
   }
}

