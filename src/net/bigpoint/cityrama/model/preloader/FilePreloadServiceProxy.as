package net.bigpoint.cityrama.model.preloader
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.services.filePreloadService.FilePreloadService;
   import net.bigpoint.services.filePreloadService.FilePreloadServiceEvent;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FilePreloadServiceProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FilePreloadServiceProxy";
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _filePreloadService:FilePreloadService;
      
      public function FilePreloadServiceProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._flashVarsProxy = facade.retrieveProxy("FlashVarsProxy") as FlashVarsProxy;
         this._filePreloadService = new FilePreloadService();
         this._filePreloadService.addEventListener(FilePreloadServiceEvent.PROGRESS,this.onProgress);
         this._filePreloadService.addEventListener(FilePreloadServiceEvent.COMPLETE,this.onComplete);
         this._filePreloadService.addEventListener(FilePreloadServiceEvent.CHILD_COMPLETE,this.onChildComplete);
         this._filePreloadService.addEventListener(FilePreloadServiceEvent.ERROR,this.onError);
         this._filePreloadService.addEventListener(FilePreloadServiceEvent.FAIL,this.onError);
      }
      
      public function loadXML(param1:String) : void
      {
         this._filePreloadService.initLoadWithXml(param1);
      }
      
      public function load() : void
      {
         this._filePreloadService.initLoad();
      }
      
      private function onError(param1:FilePreloadServiceEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.ERROR,"FilePreloadServiceProxy, " + param1.text);
      }
      
      private function onComplete(param1:FilePreloadServiceEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_LOADED);
      }
      
      private function onChildComplete(param1:FilePreloadServiceEvent) : void
      {
      }
      
      private function onProgress(param1:FilePreloadServiceEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_PROGRESS,param1.progress);
      }
      
      public function get service() : FilePreloadService
      {
         return this._filePreloadService;
      }
   }
}

