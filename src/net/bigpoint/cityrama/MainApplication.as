package net.bigpoint.cityrama
{
   import flash.events.Event;
   import mx.core.ContainerCreationPolicy;
   import mx.core.mx_internal;
   import mx.preloaders.Preloader;
   import net.bigpoint.cityrama.init.PreloaderConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.init.preloader.PreloaderView;
   import net.bigpoint.cityrama.view.application.ui.components.MainView;
   import net.bigpoint.util.StatInfoLayer;
   import spark.components.Application;
   
   use namespace mx_internal;
   
   public class MainApplication extends Application
   {
      
      private static var _skinParts:Object = {
         "controlBarGroup":false,
         "contentGroup":false
      };
      
      protected var _facade:ApplicationFacade;
      
      protected var _preloader:Preloader;
      
      public var preloaderView:PreloaderView;
      
      public var mainView:MainView;
      
      public function MainApplication()
      {
         super();
         creationPolicy = ContainerCreationPolicy.NONE;
      }
      
      override public function initialize() : void
      {
         var _loc1_:SystemManager = SystemManager(systemManager);
         this._preloader = Preloader(_loc1_.mx_internal::preloader);
         this._preloader.addEventListener(PreloaderConstants.FLEX_PRELOADING_COMPLETE,this.flexPreloadingCompleteHandler);
         StatInfoLayer.instance.executeStep(StatInfoLayer.LOADER_STARTS);
         this.mainView = new MainView();
         this.mainView.top = 0;
         this.mainView.left = 0;
         this.mainView.right = 0;
         this.mainView.bottom = 0;
         addElement(this.mainView);
      }
      
      public function finishInitializing() : void
      {
         super.initialize();
      }
      
      public function flexPreloadingCompleteHandler(param1:Event) : void
      {
         this._preloader.removeEventListener(PreloaderConstants.FLEX_PRELOADING_COMPLETE,this.flexPreloadingCompleteHandler);
         this.preloaderView = PreloaderView(param1.target);
         this._facade = ApplicationFacade.getInstance();
         this._facade.startup(this);
      }
   }
}

