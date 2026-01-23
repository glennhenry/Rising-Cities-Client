package net.bigpoint.cityrama.controller.applicationStartup
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class LanguageFilesLoadedCommand extends SimpleCommand implements ICommand
   {
      
      public function LanguageFilesLoadedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerConfigProxy = ServerConfigProxy(facade.retrieveProxy(ServerConfigProxy.NAME));
         _loc2_.loadServer(0);
         facade.removeCommand(ApplicationNotificationConstants.LOCALE_LOADED);
      }
   }
}

