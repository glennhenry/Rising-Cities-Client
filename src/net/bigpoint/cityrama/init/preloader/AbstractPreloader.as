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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function set preloader(param1:Sprite) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.preloader = param1;
            if(!_loc3_)
            {
               param1.addEventListener(SystemManagerEvent.FRAME_SUSPENDED,this.handleFrameSuspension);
            }
         }
      }
      
      protected function onFrameSuspension() : void
      {
      }
      
      protected function resumeInitialization() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._customSystemManager.resumeNextFrame();
         }
      }
      
      protected function handleFrameSuspension(param1:SystemManagerEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            (param1.target as IEventDispatcher).removeEventListener(SystemManagerEvent.FRAME_SUSPENDED,this.handleFrameSuspension);
            if(!_loc2_)
            {
               this._customSystemManager = param1.manager;
               if(!(_loc2_ && _loc3_))
               {
                  addr005d:
                  this.onFrameSuspension();
               }
               return;
            }
         }
         §§goto(addr005d);
      }
   }
}

