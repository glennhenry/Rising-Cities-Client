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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
         }
      }
      
      public static function getInstance() : ApplicationFacade
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || ApplicationFacade)
         {
            if(instance == null)
            {
               if(!(_loc1_ && ApplicationFacade))
               {
                  addr003d:
                  instance = new ApplicationFacade(new SingletonEnforcer());
               }
            }
            return ApplicationFacade(instance);
         }
         §§goto(addr003d);
      }
      
      override protected function initializeController() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initializeController();
            if(!(_loc1_ && _loc2_))
            {
               addr0032:
               registerCommand(ApplicationNotificationConstants.STARTUP,PreloaderStartupCommand);
               if(_loc2_ || _loc2_)
               {
                  registerCommand(ApplicationNotificationConstants.APPLICATION_INITIALIZED,StartUpCommand);
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      public function startup(param1:MainApplication) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this._mainView = param1.mainView;
            if(!(_loc3_ && _loc2_))
            {
               registerProxy(new DeveloperSettingsProxy(DeveloperSettingsProxy.NAME));
            }
         }
         var _loc2_:DeveloperSettingsProxy = retrieveProxy(DeveloperSettingsProxy.NAME) as DeveloperSettingsProxy;
         if(_loc4_)
         {
            _loc2_.application = param1;
         }
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
