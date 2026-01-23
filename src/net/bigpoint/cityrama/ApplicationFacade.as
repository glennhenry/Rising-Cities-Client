package net.bigpoint.cityrama
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationStartup.StartUpCommand;
   import net.bigpoint.cityrama.controller.preloaderStartup.PreloaderStartupCommand;
   import net.bigpoint.cityrama.model.developertools.DeveloperSettingsProxy;
   import net.bigpoint.cityrama.view.application.ui.components.MainView;
   import org.puremvc.as3.interfaces.IFacade;
   
   public class ApplicationFacade extends SwitchFacade implements IFacade
   {
      
      private var _mainView:MainView;
      
      public function ApplicationFacade(param1:SingletonEnforcer)
      {
         super();
      }
      
      public static function getInstance() : ApplicationFacade
      {
         if(instance == null)
         {
            instance = new ApplicationFacade(new SingletonEnforcer());
         }
         return ApplicationFacade(instance);
      }
      
      override protected function initializeController() : void
      {
         super.initializeController();
         registerCommand(ApplicationNotificationConstants.STARTUP,PreloaderStartupCommand);
         registerCommand(ApplicationNotificationConstants.APPLICATION_INITIALIZED,StartUpCommand);
      }
      
      public function startup(param1:MainApplication) : void
      {
         this._mainView = param1.mainView;
         registerProxy(new DeveloperSettingsProxy(DeveloperSettingsProxy.NAME));
         var _loc2_:DeveloperSettingsProxy = retrieveProxy(DeveloperSettingsProxy.NAME) as DeveloperSettingsProxy;
         _loc2_.application = param1;
      }
      
      public function get mainView() : MainView
      {
         return this._mainView;
      }
   }
}

class SingletonEnforcer
{
   
   public function SingletonEnforcer()
   {
      super();
   }
}
