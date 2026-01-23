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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._gameServerProxy = facade.retrieveProxy(ServerConfigProxy.NAME) as ServerConfigProxy;
            if(!_loc2_)
            {
               facade.registerProxy(new ResourceManagerPreloadProxy(ResourceManagerPreloadProxy.NAME));
               if(!(_loc2_ && _loc2_))
               {
                  facade.registerProxy(new CitizensProxy());
                  if(_loc3_)
                  {
                     facade.registerProxy(new CvTagProxy(CvTagProxy.NAME));
                     if(!_loc2_)
                     {
                        this._langProxy = ResourceManagerPreloadProxy(facade.retrieveProxy(ResourceManagerPreloadProxy.NAME));
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00bb:
                           if(this._langProxy.languageFilesLoaded)
                           {
                              if(_loc3_)
                              {
                                 addr00cd:
                                 this._gameServerProxy.loadServer(0);
                                 if(_loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              facade.registerCommand(ApplicationNotificationConstants.LOCALE_LOADED,LanguageFilesLoadedCommand);
                           }
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr00bb);
                  }
               }
               addr00ed:
               return;
            }
         }
         §§goto(addr00cd);
      }
   }
}

