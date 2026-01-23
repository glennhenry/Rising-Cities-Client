package net.bigpoint.cityrama.controller.marketplace
{
   import flash.external.ExternalInterface;
   import mx.controls.Alert;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenMarketPlaceByPHPCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenMarketPlaceByPHPCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var note:INotification = param1;
         try
         {
            ExternalInterface.call("showMarketPlace()");
         }
         catch(e:Error)
         {
            Alert.show("PHP CALL","only live");
         }
      }
   }
}

