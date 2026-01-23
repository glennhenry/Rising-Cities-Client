package net.bigpoint.cityrama.controller.marketplace
{
   import flash.external.ExternalInterface;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SyncronizePHPResourcesCommand extends SimpleCommand implements ICommand
   {
      
      public function SyncronizePHPResourcesCommand()
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
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         try
         {
            ExternalInterface.call("initCurrencies(" + _loc2_.ingameCurrency + ", " + _loc2_.realCurrency + ")");
         }
         catch(e:*)
         {
         }
      }
   }
}

