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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _skinParts = {
            "controlBarGroup":false,
            "contentGroup":false
         };
      }
      
      protected var _facade:ApplicationFacade;
      
      protected var _preloader:Preloader;
      
      public var preloaderView:PreloaderView;
      
      public var mainView:MainView;
      
      public function MainApplication()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_)
            {
               addr0025:
               creationPolicy = ContainerCreationPolicy.NONE;
            }
            return;
         }
         §§goto(addr0025);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SystemManager = SystemManager(systemManager);
         if(!_loc2_)
         {
            this._preloader = Preloader(_loc1_.mx_internal::preloader);
            if(_loc3_)
            {
               this._preloader.addEventListener(PreloaderConstants.FLEX_PRELOADING_COMPLETE,this.flexPreloadingCompleteHandler);
               if(_loc3_)
               {
                  §§goto(addr0055);
               }
               §§goto(addr0086);
            }
            addr0055:
            StatInfoLayer.instance.executeStep(StatInfoLayer.LOADER_STARTS);
            if(_loc3_ || Boolean(this))
            {
               this.mainView = new MainView();
               if(_loc3_)
               {
                  addr0086:
                  §§push(this.mainView);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        §§pop().top = §§pop();
                        if(_loc3_)
                        {
                           §§push(this.mainView);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 §§goto(addr00c9);
                              }
                              §§goto(addr0112);
                           }
                           §§goto(addr0110);
                        }
                        §§goto(addr010c);
                     }
                     addr00c9:
                     §§pop().left = §§pop();
                     if(!_loc2_)
                     {
                        §§push(this.mainView);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§pop().right = §§pop();
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0112:
                                 this.mainView.bottom = 0;
                                 addr0110:
                                 addr010c:
                                 if(_loc3_)
                                 {
                                    addr011a:
                                    addElement(this.mainView);
                                 }
                              }
                              §§goto(addr0125);
                           }
                           §§goto(addr0112);
                        }
                        §§goto(addr0110);
                     }
                     §§goto(addr0125);
                  }
                  §§goto(addr0110);
               }
               §§goto(addr011a);
            }
            addr0125:
            return;
         }
         §§goto(addr0086);
      }
      
      public function finishInitializing() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      public function flexPreloadingCompleteHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._preloader.removeEventListener(PreloaderConstants.FLEX_PRELOADING_COMPLETE,this.flexPreloadingCompleteHandler);
            if(!_loc3_)
            {
               this.preloaderView = PreloaderView(param1.target);
               addr0040:
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0067);
               }
               §§goto(addr007f);
            }
            addr0067:
            this._facade = ApplicationFacade.getInstance();
            if(_loc2_ || _loc2_)
            {
               addr007f:
               this._facade.startup(this);
            }
            return;
         }
         §§goto(addr0040);
      }
   }
}

