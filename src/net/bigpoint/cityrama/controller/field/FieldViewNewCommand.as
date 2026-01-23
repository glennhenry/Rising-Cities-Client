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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            facade.removeMediator(ViewForegroundMediator.NAME);
         }
         var _loc2_:IsoView = IsoView(param1.getBody());
         if(!(_loc3_ && Boolean(this)))
         {
            facade.registerMediator(new ViewForegroundMediator(ViewForegroundMediator.NAME,_loc2_.foregroundContainer));
         }
      }
   }
}

