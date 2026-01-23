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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "FileRuntimeLoadDynamicServiceProxy";
      }
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _fileRuntimeLoadServiceDynamic:FileRuntimeLoadServiceDynamic;
      
      public function FileRuntimeLoadDynamicServiceProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
            if(_loc3_)
            {
               this._flashVarsProxy = facade.retrieveProxy("FlashVarsProxy") as FlashVarsProxy;
               if(!_loc4_)
               {
                  addr0051:
                  this._fileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
               }
               §§goto(addr005b);
            }
            §§goto(addr0051);
         }
         addr005b:
      }
      
      public function init(param1:Dictionary) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._fileRuntimeLoadServiceDynamic.init(param1,this._flashVarsProxy.path);
         }
      }
      
      private function onError(param1:FileRuntimeLoadServiceEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(§§findproperty(sendNotification));
            §§push(ApplicationNotificationConstants.ERROR);
            §§push("FileRuntimeLoadServiceProxy, ");
            if(!_loc3_)
            {
               §§push(§§pop() + param1.text);
            }
            §§pop().sendNotification(§§pop(),§§pop());
         }
      }
      
      private function onComplete(param1:FileRuntimeLoadServiceEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.FILE_RUNTIMELOAD_SERVICE_LOADED);
         }
      }
      
      public function get service() : FileRuntimeLoadServiceDynamic
      {
         return this._fileRuntimeLoadServiceDynamic;
      }
   }
}

