package net.bigpoint.cityrama.model.preloader
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceEvent;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FileRuntimeLoadDynamicServiceProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FileRuntimeLoadDynamicServiceProxy";
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _fileRuntimeLoadServiceDynamic:FileRuntimeLoadServiceDynamic;
      
      public function FileRuntimeLoadDynamicServiceProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._flashVarsProxy = facade.retrieveProxy("FlashVarsProxy") as FlashVarsProxy;
         this._fileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
      }
      
      public function init(param1:Dictionary) : void
      {
         this._fileRuntimeLoadServiceDynamic.init(param1,this._flashVarsProxy.path);
      }
      
      private function onError(param1:FileRuntimeLoadServiceEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.ERROR,"FileRuntimeLoadServiceProxy, " + param1.text);
      }
      
      private function onComplete(param1:FileRuntimeLoadServiceEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.FILE_RUNTIMELOAD_SERVICE_LOADED);
      }
      
      public function get service() : FileRuntimeLoadServiceDynamic
      {
         return this._fileRuntimeLoadServiceDynamic;
      }
   }
}

