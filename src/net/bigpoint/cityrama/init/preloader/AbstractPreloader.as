package net.bigpoint.cityrama.init.preloader
{
   import flash.display.Sprite;
   import flash.events.IEventDispatcher;
   import mx.preloaders.SparkDownloadProgressBar;
   import net.bigpoint.cityrama.init.ISystemManager;
   import net.bigpoint.cityrama.init.event.SystemManagerEvent;
   
   public class AbstractPreloader extends SparkDownloadProgressBar
   {
      
      protected var _customSystemManager:ISystemManager;
      
      public function AbstractPreloader()
      {
         super();
      }
      
      override public function set preloader(param1:Sprite) : void
      {
         super.preloader = param1;
         param1.addEventListener(SystemManagerEvent.FRAME_SUSPENDED,this.handleFrameSuspension);
      }
      
      protected function onFrameSuspension() : void
      {
      }
      
      protected function resumeInitialization() : void
      {
         this._customSystemManager.resumeNextFrame();
      }
      
      protected function handleFrameSuspension(param1:SystemManagerEvent) : void
      {
         (param1.target as IEventDispatcher).removeEventListener(SystemManagerEvent.FRAME_SUSPENDED,this.handleFrameSuspension);
         this._customSystemManager = param1.manager;
         this.onFrameSuspension();
      }
   }
}

