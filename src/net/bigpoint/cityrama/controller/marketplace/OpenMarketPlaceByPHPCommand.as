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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var note:INotification;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         note = param1;
         try
         {
            ExternalInterface.call("showMarketPlace()");
         }
         catch(e:Error)
         {
            if(!_loc5_)
            {
               Alert.show("PHP CALL","only live");
            }
         }
      }
   }
}

