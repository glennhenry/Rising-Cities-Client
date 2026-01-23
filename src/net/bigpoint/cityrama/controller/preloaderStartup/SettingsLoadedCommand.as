package net.bigpoint.cityrama.controller.preloaderStartup
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationStartup.LanguageFilesLoadedCommand;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.preloader.ResourceManagerPreloadProxy;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SettingsLoadedCommand extends SimpleCommand implements ICommand
   {
      
      private var _gameServerProxy:ServerConfigProxy;
      
      private var _langProxy:ResourceManagerPreloadProxy;
      
      public function SettingsLoadedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         this._gameServerProxy = facade.retrieveProxy(ServerConfigProxy.NAME) as ServerConfigProxy;
         facade.registerProxy(new ResourceManagerPreloadProxy(ResourceManagerPreloadProxy.NAME));
         facade.registerProxy(new CitizensProxy());
         facade.registerProxy(new CvTagProxy(CvTagProxy.NAME));
         this._langProxy = ResourceManagerPreloadProxy(facade.retrieveProxy(ResourceManagerPreloadProxy.NAME));
         if(this._langProxy.languageFilesLoaded)
         {
            this._gameServerProxy.loadServer(0);
         }
         else
         {
            facade.registerCommand(ApplicationNotificationConstants.LOCALE_LOADED,LanguageFilesLoadedCommand);
         }
      }
   }
}

