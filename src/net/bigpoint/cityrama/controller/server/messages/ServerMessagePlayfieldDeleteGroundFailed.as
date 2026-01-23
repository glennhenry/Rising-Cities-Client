package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldDeleteGroundFailed extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldDeleteGroundFailed()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         _loc2_.mode = ApplicationModeProxy.MODE_NORMAL;
      }
   }
}

