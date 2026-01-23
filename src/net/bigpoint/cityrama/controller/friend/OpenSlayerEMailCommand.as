package net.bigpoint.cityrama.controller.friend
{
   import flash.external.ExternalInterface;
   import mx.controls.Alert;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenSlayerEMailCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenSlayerEMailCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var note:INotification;
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         note = param1;
         try
         {
            ExternalInterface.call("SLAYER.renderInviteDialog()");
         }
         catch(e:Error)
         {
            if(!(_loc4_ && _loc2_))
            {
               Alert.show("Js CALL slayer Invite","only live");
            }
         }
      }
   }
}

