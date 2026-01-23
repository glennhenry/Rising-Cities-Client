package net.bigpoint.cityrama.init.preloader
{
   import net.bigpoint.util.StatInfoLayer;
   
   public class Preloader extends PreloaderContainer
   {
      
      public function Preloader()
      {
         super();
      }
      
      override protected function onFrameSuspension() : void
      {
         if(!preloaderDisplay)
         {
            this.createChildren();
         }
         setInitProgress(75,100);
         this.initiaizeFramework();
      }
      
      protected function initiaizeFramework() : void
      {
         StatInfoLayer.instance.executeStep(StatInfoLayer.STEN_GAMECLIENTLOADS);
         _customSystemManager.resumeNextFrame();
      }
      
      override protected function createChildren() : void
      {
         if(!preloaderDisplay)
         {
            preloaderDisplay = new PreloaderView();
            preloaderDisplay.x = 0;
            preloaderDisplay.y = 0;
            addChild(preloaderDisplay);
         }
      }
   }
}

