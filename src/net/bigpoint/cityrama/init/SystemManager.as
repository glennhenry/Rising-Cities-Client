package net.bigpoint.cityrama.init
{
   import flash.display.Stage;
   import flash.events.Event;
   import mx.core.mx_internal;
   import mx.managers.SystemManager;
   import net.bigpoint.cityrama.init.event.SystemManagerEvent;
   
   use namespace mx_internal;
   
   public class SystemManager extends mx.managers.SystemManager implements ISystemManager
   {
      
      public static var rawStage:Stage;
      
      protected var _resumable:Boolean;
      
      public function SystemManager()
      {
         super();
         rawStage = this.stage;
      }
      
      override mx_internal function docFrameHandler(param1:Event = null) : void
      {
         if(this._resumable)
         {
            mx_internal::kickOff();
         }
      }
      
      override mx_internal function preloader_completeHandler(param1:Event) : void
      {
         mx_internal::preloader.removeEventListener(Event.COMPLETE,this.mx_internal::preloader_completeHandler);
         mx_internal::preloader.dispatchEvent(new SystemManagerEvent(this));
      }
      
      public function resumeNextFrame() : void
      {
         if(currentFrame >= 2)
         {
            this._resumable = true;
            mx_internal::kickOff();
         }
      }
   }
}

