package net.bigpoint.cityrama.view.preloader
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.init.preloader.PreloaderView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class PreloaderMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "PreloaderMediator";
      
      private var _preloaderPlayed:Boolean;
      
      private var _preloadServiceLoaded:Boolean;
      
      public function PreloaderMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         SystemManager.rawStage.addEventListener(Event.RESIZE,this.resizeEventHandler,false,0,true);
      }
      
      private function resizeEventHandler(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.preloader)
         {
            _loc2_ = Math.round((SystemManager.rawStage.stageWidth - this.preloader.width) / 2);
            _loc3_ = Math.round((SystemManager.rawStage.stageHeight - this.preloader.height) / 2);
            this.preloader.x = _loc2_;
            this.preloader.y = _loc3_;
         }
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.preloader.addEventListener(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,this.onPreloaderViewed);
      }
      
      private function onPreloaderViewed(param1:Event) : void
      {
         param1.stopPropagation();
         this.preloader.removeEventListener(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,this.onPreloaderViewed);
         this._preloaderPlayed = true;
         this.checkContinuation();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_PROGRESS,ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_LOADED,ServerNotificationConstants.SERVER_MESSAGE_PROGRESS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ServerNotificationConstants.SERVER_MESSAGE_PROGRESS:
               this.preloader.preloadState = PreloaderView.STATE_LOAD_SERVER_MESSAGE;
               this.preloader.setProgress(param1.getBody() as Number);
               break;
            case ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_PROGRESS:
               this.preloader.preloadState = PreloaderView.STATE_PRELOAD_ASSETS;
               this.preloader.setProgress(param1.getBody() as Number);
               break;
            case ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_LOADED:
               this._preloadServiceLoaded = true;
               SystemManager.rawStage.removeEventListener(Event.RESIZE,this.resizeEventHandler);
               this.checkContinuation();
         }
      }
      
      private function checkContinuation() : void
      {
         if(this._preloaderPlayed && this._preloadServiceLoaded)
         {
            sendNotification(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE);
         }
      }
      
      private function get preloader() : PreloaderView
      {
         return viewComponent as PreloaderView;
      }
   }
}

