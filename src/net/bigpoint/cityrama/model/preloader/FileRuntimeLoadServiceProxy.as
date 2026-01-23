package net.bigpoint.cityrama.model.preloader
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeClassLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadService;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceEvent;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoaderEvent;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FileRuntimeLoadServiceProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FileRuntimeLoadServiceProxy";
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _fileRuntimeLoadService:FileRuntimeLoadService;
      
      public function FileRuntimeLoadServiceProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._flashVarsProxy = facade.retrieveProxy("FlashVarsProxy") as FlashVarsProxy;
         this._fileRuntimeLoadService = new FileRuntimeLoadService();
         this._fileRuntimeLoadService.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onComplete);
         this._fileRuntimeLoadService.addEventListener(FileRuntimeLoaderEvent.ERROR,this.onError);
         this._fileRuntimeLoadService.addEventListener(FileRuntimeLoaderEvent.FAIL,this.onError);
      }
      
      public function load(param1:String) : void
      {
         this._fileRuntimeLoadService.initLoadWithXml(param1);
      }
      
      private function onError(param1:FileRuntimeLoadServiceEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.ERROR,"FileRuntimeLoadServiceProxy, " + param1.text);
      }
      
      private function onComplete(param1:FileRuntimeLoadServiceEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.FILE_RUNTIMELOAD_SERVICE_LOADED);
      }
      
      public function loadObjectByName(param1:String) : void
      {
         var _loc2_:FileRuntimeClassLoader = this._fileRuntimeLoadService.getLoaderForObjectInstance(param1,param1,true);
         _loc2_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onFileComplete);
         _loc2_.addEventListener(FileRuntimeLoaderEvent.ERROR,this.onFileError);
         _loc2_.load();
      }
      
      private function onFileComplete(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function onFileError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      public function get service() : FileRuntimeLoadService
      {
         return this._fileRuntimeLoadService;
      }
   }
}

