package net.bigpoint.cityrama.model.preloader
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ApplicationSettingsProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ApplicationSettingsProxy";
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _xmlLoader:XMLLoader;
      
      private var _devUserId:uint;
      
      private var _cvRuntimeLinksLoader:DataLoader;
      
      private var _cvComplete:Boolean = false;
      
      private var _settingsComplete:Boolean = false;
      
      private var _kill:Boolean;
      
      private var _cvXML:XML;
      
      public function ApplicationSettingsProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this.load();
      }
      
      private function load() : void
      {
         this._settingsComplete = true;
         this._cvRuntimeLinksLoader = new DataLoader(this._flashVarsProxy.cvXmlRuntimePath);
         this._cvRuntimeLinksLoader.addEventListener(LoaderEvent.COMPLETE,this.onCompleteCV);
         this._cvRuntimeLinksLoader.addEventListener(LoaderEvent.ERROR,this.onError);
         this._cvRuntimeLinksLoader.addEventListener(LoaderEvent.FAIL,this.onError);
         this._cvRuntimeLinksLoader.load();
      }
      
      private function onCompleteCV(param1:LoaderEvent) : void
      {
         this._cvComplete = true;
         this.onComplete(param1);
      }
      
      private function onCompleteSettings(param1:LoaderEvent) : void
      {
         this._settingsComplete = true;
         this.onComplete(param1);
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         if(!this._kill)
         {
            sendNotification(ApplicationNotificationConstants.SETTINGS_LOADED);
         }
         this._kill = true;
      }
      
      private function onComplete(param1:LoaderEvent = null) : void
      {
         if(this._cvComplete && this._settingsComplete)
         {
            if(!this._kill)
            {
               sendNotification(ApplicationNotificationConstants.SETTINGS_LOADED);
            }
            this._cvXML = new XML(this._cvRuntimeLinksLoader.content);
            this._kill = true;
         }
      }
      
      public function get cvRuntimeLinksXML() : XML
      {
         return this._cvXML;
      }
   }
}

