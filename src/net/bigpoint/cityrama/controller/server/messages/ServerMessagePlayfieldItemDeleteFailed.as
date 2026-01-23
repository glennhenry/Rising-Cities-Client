package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemDeleteFailed extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldItemDeleteFailed()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(_loc4_)
         {
            _loc2_.mode = ApplicationModeProxy.MODE_NORMAL;
         }
      }
   }
}

