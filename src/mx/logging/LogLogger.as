package mx.logging
{
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class LogLogger extends EventDispatcher implements ILogger
   {
      
      mx_internal static const VERSION:String = "4.6.0.23201";
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      private var _category:String;
      
      public function LogLogger(param1:String)
      {
         super();
         this._category = param1;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      private function logToConsole(level:String, text:String, err:Error = null) : void
      {
         if(!ExternalInterface.available)
         {
            return;
         }
         if(err != null)
         {
            ExternalInterface.call("console.error","[FLASH " + level + "] " + text,err.getStackTrace());
         }
         else
         {
            ExternalInterface.call("console.log","[FLASH " + level + "] " + text);
         }
      }
      
      public function log(param1:int, param2:String, ... rest) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var text:String = param2;
         var err:Error = null;
         for each(var r in rest)
         {
            if(r is Error)
            {
               err = r;
            }
            text += r;
         }
         logToConsole("LOG",text,err);
         if(param1 < LogEventLevel.DEBUG)
         {
            _loc4_ = this.resourceManager.getString("logging","levelLimit");
            throw new ArgumentError(_loc4_);
         }
         if(hasEventListener(LogEvent.LOG))
         {
            _loc5_ = 0;
            while(_loc5_ < rest.length)
            {
               param2 = param2.replace(new RegExp("\\{" + _loc5_ + "\\}","g"),rest[_loc5_]);
               _loc5_++;
            }
            dispatchEvent(new LogEvent(param2,param1));
         }
      }
      
      public function debug(param1:String, ... rest) : void
      {
         var _loc3_:int = 0;
         var text:String = param1;
         var err:Error = null;
         for each(var r in rest)
         {
            if(r is Error)
            {
               err = r;
            }
            text += r;
         }
         logToConsole("DEBUG",text,err);
         if(hasEventListener(LogEvent.LOG))
         {
            _loc3_ = 0;
            while(_loc3_ < rest.length)
            {
               param1 = param1.replace(new RegExp("\\{" + _loc3_ + "\\}","g"),rest[_loc3_]);
               _loc3_++;
            }
            dispatchEvent(new LogEvent(param1,LogEventLevel.DEBUG));
         }
      }
      
      public function error(param1:String, ... rest) : void
      {
         var _loc3_:int = 0;
         var text:String = param1;
         var err:Error = null;
         for each(var r in rest)
         {
            if(r is Error)
            {
               err = r;
            }
            text += r;
         }
         logToConsole("ERROR",text,err);
         if(hasEventListener(LogEvent.LOG))
         {
            _loc3_ = 0;
            while(_loc3_ < rest.length)
            {
               param1 = param1.replace(new RegExp("\\{" + _loc3_ + "\\}","g"),rest[_loc3_]);
               _loc3_++;
            }
            dispatchEvent(new LogEvent(param1,LogEventLevel.ERROR));
         }
      }
      
      public function fatal(param1:String, ... rest) : void
      {
         var text:String = param1;
         var err:Error = null;
         for each(var r in rest)
         {
            if(r is Error)
            {
               err = r;
            }
            text += r;
         }
         logToConsole("FATAL",text,err);
         var _loc3_:int = 0;
         if(hasEventListener(LogEvent.LOG))
         {
            _loc3_ = 0;
            while(_loc3_ < rest.length)
            {
               param1 = param1.replace(new RegExp("\\{" + _loc3_ + "\\}","g"),rest[_loc3_]);
               _loc3_++;
            }
            dispatchEvent(new LogEvent(param1,LogEventLevel.FATAL));
         }
      }
      
      public function info(param1:String, ... rest) : void
      {
         var _loc3_:int = 0;
         var text:String = param1;
         var err:Error = null;
         for each(var r in rest)
         {
            if(r is Error)
            {
               err = r;
            }
            text += r;
         }
         logToConsole("INFO",text,err);
         if(hasEventListener(LogEvent.LOG))
         {
            _loc3_ = 0;
            while(_loc3_ < rest.length)
            {
               param1 = param1.replace(new RegExp("\\{" + _loc3_ + "\\}","g"),rest[_loc3_]);
               _loc3_++;
            }
            dispatchEvent(new LogEvent(param1,LogEventLevel.INFO));
         }
      }
      
      public function warn(param1:String, ... rest) : void
      {
         var _loc3_:int = 0;
         var text:String = param1;
         var err:Error = null;
         for each(var r in rest)
         {
            if(r is Error)
            {
               err = r;
            }
            text += r;
         }
         logToConsole("WARN",text,err);
         if(hasEventListener(LogEvent.LOG))
         {
            _loc3_ = 0;
            while(_loc3_ < rest.length)
            {
               param1 = param1.replace(new RegExp("\\{" + _loc3_ + "\\}","g"),rest[_loc3_]);
               _loc3_++;
            }
            dispatchEvent(new LogEvent(param1,LogEventLevel.WARN));
         }
      }
   }
}

