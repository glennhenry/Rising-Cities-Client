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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         NAME = "FilePreloadServiceProxy";
      }
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _filePreloadService:FilePreloadService;
      
      public function FilePreloadServiceProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super(param1,param2);
            if(!_loc4_)
            {
               this._flashVarsProxy = facade.retrieveProxy("FlashVarsProxy") as FlashVarsProxy;
               if(_loc3_)
               {
                  addr003a:
                  this._filePreloadService = new FilePreloadService();
                  if(_loc3_)
                  {
                     §§push(this._filePreloadService);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(FilePreloadServiceEvent.PROGRESS);
                        if(!_loc4_)
                        {
                           §§pop().addEventListener(§§pop(),this.onProgress);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr008b:
                              §§push(this._filePreloadService);
                              if(_loc3_)
                              {
                                 §§push(FilePreloadServiceEvent.COMPLETE);
                                 if(_loc3_)
                                 {
                                    addr009f:
                                    §§pop().addEventListener(§§pop(),this.onComplete);
                                    if(_loc3_)
                                    {
                                       addr00ac:
                                       §§push(this._filePreloadService);
                                       if(_loc3_)
                                       {
                                          §§push(FilePreloadServiceEvent.CHILD_COMPLETE);
                                          if(_loc3_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.onChildComplete);
                                             if(_loc3_ || Boolean(param1))
                                             {
                                                addr00d5:
                                                §§push(this._filePreloadService);
                                                if(_loc3_ || Boolean(param2))
                                                {
                                                   addr00f2:
                                                   §§push(FilePreloadServiceEvent.ERROR);
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      addr0106:
                                                      §§pop().addEventListener(§§pop(),this.onError);
                                                      if(_loc3_)
                                                      {
                                                         addr011c:
                                                         this._filePreloadService.addEventListener(FilePreloadServiceEvent.FAIL,this.onError);
                                                         addr0116:
                                                      }
                                                      §§goto(addr0123);
                                                   }
                                                   §§goto(addr011c);
                                                }
                                                §§goto(addr0116);
                                             }
                                             §§goto(addr0123);
                                          }
                                          §§goto(addr0106);
                                       }
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr0123);
                                 }
                                 §§goto(addr011c);
                              }
                              §§goto(addr0116);
                           }
                           addr0123:
                           return;
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0116);
                  }
                  §§goto(addr00d5);
               }
               §§goto(addr00ac);
            }
            §§goto(addr003a);
         }
         §§goto(addr008b);
      }
      
      public function loadXML(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._filePreloadService.initLoadWithXml(param1);
         }
      }
      
      public function load() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._filePreloadService.initLoad();
         }
      }
      
      private function onError(param1:FilePreloadServiceEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§findproperty(sendNotification));
            §§push(ApplicationNotificationConstants.ERROR);
            §§push("FilePreloadServiceProxy, ");
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + param1.text);
            }
            §§pop().sendNotification(§§pop(),§§pop());
         }
      }
      
      private function onComplete(param1:FilePreloadServiceEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_LOADED);
         }
      }
      
      private function onChildComplete(param1:FilePreloadServiceEvent) : void
      {
      }
      
      private function onProgress(param1:FilePreloadServiceEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.FILE_PRELOAD_SERVICE_PROGRESS,param1.progress);
         }
      }
      
      public function get service() : FilePreloadService
      {
         return this._filePreloadService;
      }
   }
}

