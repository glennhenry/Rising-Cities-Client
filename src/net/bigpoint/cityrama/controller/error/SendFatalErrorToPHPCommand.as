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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._subject = param1.getBody().subject as String;
            if(!(_loc3_ && Boolean(param1)))
            {
               this._mailBody = param1.getBody().body as String;
               if(_loc2_)
               {
                  this._request = new URLRequest();
                  if(!_loc3_)
                  {
                     this._request.method = URLRequestMethod.GET;
                     if(_loc2_)
                     {
                        addr0083:
                        this._urlLoader = new URLLoader();
                        if(_loc2_)
                        {
                           addr0093:
                           this._request.url = "/?action=internalSendMail&g=1";
                           if(_loc2_)
                           {
                              §§goto(addr00a3);
                           }
                        }
                        §§goto(addr00b2);
                     }
                     addr00a3:
                     this.configureListener(this._urlLoader);
                     if(!_loc3_)
                     {
                        addr00b2:
                        this._urlLoader.load(this._request);
                     }
                     return;
                  }
                  §§goto(addr0093);
               }
            }
            §§goto(addr00b2);
         }
         §§goto(addr0083);
      }
      
      private function configureListener(param1:EventDispatcher) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            param1.addEventListener(Event.COMPLETE,this.onComplete);
            if(!_loc3_)
            {
               param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onComplete);
            }
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = JSON.parse(String(this._urlLoader.data));
         var _loc3_:int = int(_loc2_.i);
         var _loc4_:String = _loc2_.t;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            this.sendMail(_loc3_,_loc4_);
         }
      }
      
      private function sendMail(param1:int, param2:String) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:String = PHPMailTokens.tokenArray[param1];
         §§push(PHPMailTokens.salt);
         if(_loc9_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = MD5.hash(MD5.hash(_loc4_ + _loc3_) + _loc4_ + MD5.hash(param2 + _loc4_));
         var _loc6_:URLRequest = new URLRequest();
         _loc6_.method = URLRequestMethod.GET;
         var _loc7_:URLVariables = new URLVariables();
         _loc7_.s = 1;
         if(!_loc10_)
         {
            _loc7_.h = _loc5_;
            if(_loc9_)
            {
               _loc7_.su = this._subject;
               if(_loc9_)
               {
                  _loc7_.b = this._mailBody;
                  if(!(_loc10_ && Boolean(this)))
                  {
                     addr00dd:
                     _loc6_.data = _loc7_;
                     if(_loc9_)
                     {
                        addr00e9:
                        _loc6_.url = "/?action=internalSendMail&";
                     }
                  }
               }
               var _loc8_:URLLoader = new URLLoader();
               _loc8_.dataFormat = URLLoaderDataFormat.VARIABLES;
               if(_loc9_)
               {
                  _loc8_.load(_loc6_);
               }
               return;
            }
            §§goto(addr00e9);
         }
         §§goto(addr00dd);
      }
   }
}

