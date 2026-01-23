package net.bigpoint.cityrama.controller.error
{
   import com.adobe.crypto.MD5;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SendFatalErrorToPHPCommand extends SimpleCommand implements ICommand
   {
      
      private var _urlLoader:URLLoader;
      
      private var _request:URLRequest;
      
      private var _subject:String;
      
      private var _mailBody:String;
      
      public function SendFatalErrorToPHPCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         this._subject = param1.getBody().subject as String;
         this._mailBody = param1.getBody().body as String;
         this._request = new URLRequest();
         this._request.method = URLRequestMethod.GET;
         this._urlLoader = new URLLoader();
         this._request.url = "/?action=internalSendMail&g=1";
         this.configureListener(this._urlLoader);
         this._urlLoader.load(this._request);
      }
      
      private function configureListener(param1:EventDispatcher) : void
      {
         param1.addEventListener(Event.COMPLETE,this.onComplete);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onComplete);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(String(this._urlLoader.data));
         var _loc3_:int = int(_loc2_.i);
         var _loc4_:String = _loc2_.t;
         this.sendMail(_loc3_,_loc4_);
      }
      
      private function sendMail(param1:int, param2:String) : void
      {
         var _loc3_:String = PHPMailTokens.tokenArray[param1];
         var _loc4_:String = PHPMailTokens.salt;
         var _loc5_:* = MD5.hash(MD5.hash(_loc4_ + _loc3_) + _loc4_ + MD5.hash(param2 + _loc4_));
         var _loc6_:URLRequest = new URLRequest();
         _loc6_.method = URLRequestMethod.GET;
         var _loc7_:URLVariables = new URLVariables();
         _loc7_.s = 1;
         _loc7_.h = _loc5_;
         _loc7_.su = this._subject;
         _loc7_.b = this._mailBody;
         _loc6_.data = _loc7_;
         _loc6_.url = "/?action=internalSendMail&";
         var _loc8_:URLLoader = new URLLoader();
         _loc8_.dataFormat = URLLoaderDataFormat.VARIABLES;
         _loc8_.load(_loc6_);
      }
   }
}

