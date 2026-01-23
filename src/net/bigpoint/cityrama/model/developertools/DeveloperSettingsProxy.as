package net.bigpoint.cityrama.model.developertools
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import flash.events.Event;
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class DeveloperSettingsProxy extends Proxy
   {
      
      public static const NAME:String = "DeveloperSettingsProxy";
      
      private var _application:MainApplication;
      
      private var _xmlLoader:DataLoader;
      
      private var _devUserId:Number;
      
      private var _devServer:String;
      
      private var _devPort:Number;
      
      private var _language:String;
      
      public function DeveloperSettingsProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._xmlLoader = new DataLoader("xml/settings.xml");
         this._xmlLoader.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
         this._xmlLoader.addEventListener(LoaderEvent.IO_ERROR,this.onError);
         this._xmlLoader.load();
      }
      
      private function onError(param1:Event) : void
      {
         facade.removeProxy(this.getProxyName());
         this.proceed();
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var event:LoaderEvent = param1;
         try
         {
            this.parseConfigXML(new XML(this._xmlLoader.content));
         }
         catch(e:Error)
         {
            proceed();
         }
      }
      
      private function parseConfigXML(param1:XML) : void
      {
         if(param1.language[0].toString() != "")
         {
            this._language = param1.language[0].toString();
         }
         if(Boolean(param1.uid[0]) && param1.uid[0].toString() != "")
         {
            this._devUserId = Number(param1.uid[0].toString());
         }
         if(Boolean(param1.server[0]) && param1.server[0].toString() != "")
         {
            this._devServer = String(param1.server[0].toString());
         }
         if(Boolean(param1.port[0]) && param1.port[0].toString() != "")
         {
            this._devPort = Number(param1.port[0].toString());
         }
         this.proceed();
      }
      
      private function proceed() : void
      {
         sendNotification(ApplicationNotificationConstants.STARTUP,this._application);
      }
      
      public function set application(param1:MainApplication) : void
      {
         this._application = param1;
      }
      
      public function get devUserId() : Number
      {
         return this._devUserId;
      }
      
      public function get language() : String
      {
         return this._language;
      }
      
      public function get devPort() : Number
      {
         return this._devPort;
      }
      
      public function get devServer() : String
      {
         return this._devServer;
      }
   }
}

