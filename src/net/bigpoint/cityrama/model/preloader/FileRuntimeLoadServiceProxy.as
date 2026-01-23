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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "FileRuntimeLoadServiceProxy";
      }
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _fileRuntimeLoadService:FileRuntimeLoadService;
      
      public function FileRuntimeLoadServiceProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super(param1,param2);
            if(_loc4_)
            {
               this._flashVarsProxy = facade.retrieveProxy("FlashVarsProxy") as FlashVarsProxy;
               if(!(_loc3_ && _loc3_))
               {
                  addr004b:
                  this._fileRuntimeLoadService = new FileRuntimeLoadService();
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr006f:
                     §§push(this._fileRuntimeLoadService);
                     if(_loc4_ || Boolean(param2))
                     {
                        §§push(FileRuntimeLoaderEvent.COMPLETE);
                        if(_loc4_ || _loc3_)
                        {
                           §§pop().addEventListener(§§pop(),this.onComplete);
                           if(!(_loc3_ && Boolean(param2)))
                           {
                              §§push(this._fileRuntimeLoadService);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 addr00c7:
                                 §§push(FileRuntimeLoaderEvent.ERROR);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop().addEventListener(§§pop(),this.onError);
                                    if(_loc4_)
                                    {
                                       addr00f2:
                                       this._fileRuntimeLoadService.addEventListener(FileRuntimeLoaderEvent.FAIL,this.onError);
                                       addr00ec:
                                       addr00e8:
                                    }
                                    §§goto(addr00fa);
                                 }
                                 §§goto(addr00f2);
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr00c7);
                  }
               }
               addr00fa:
               return;
            }
            §§goto(addr004b);
         }
         §§goto(addr006f);
      }
      
      public function load(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._fileRuntimeLoadService.initLoadWithXml(param1);
         }
      }
      
      private function onError(param1:FileRuntimeLoadServiceEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§findproperty(sendNotification));
            §§push(ApplicationNotificationConstants.ERROR);
            §§push("FileRuntimeLoadServiceProxy, ");
            if(_loc2_)
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
         if(_loc2_ || _loc2_)
         {
            sendNotification(ApplicationNotificationConstants.FILE_RUNTIMELOAD_SERVICE_LOADED);
         }
      }
      
      public function loadObjectByName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeClassLoader = this._fileRuntimeLoadService.getLoaderForObjectInstance(param1,param1,true);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onFileComplete);
            if(_loc4_ || _loc3_)
            {
               addr0065:
               _loc2_.addEventListener(FileRuntimeLoaderEvent.ERROR,this.onFileError);
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_.load();
               }
            }
            return;
         }
         §§goto(addr0065);
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

