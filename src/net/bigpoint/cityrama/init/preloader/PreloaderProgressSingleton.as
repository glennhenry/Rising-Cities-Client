package net.bigpoint.cityrama.init.preloader
{
   public class PreloaderProgressSingleton
   {
      
      private static var _instance:PreloaderProgressSingleton;
      
      public static const STATE_POINTER_SWFLOADING_PROGRESS:uint = 0;
      
      public static const STATE_POINTER_SWFLOADING_COMPLETE:uint = 1;
      
      public static const STATE_POINTER_LOCALE_FILES_LOADED:uint = 2;
      
      public static const STATE_POINTER_CONNECT_PHP:uint = 3;
      
      public static const STATE_POINTER_SOCKET_CONNECTED:uint = 4;
      
      public static const STATE_POINTER_SOCKET_ERROR:uint = 5;
      
      public static const STATE_POINTER_SERVER_LOGIN_SUCESS:uint = 6;
      
      public static const STATE_POINTER_FIELD_BUILD_STARTED:uint = 7;
      
      private var _states:Vector.<Boolean>;
      
      public function PreloaderProgressSingleton()
      {
         super();
         this._states = new Vector.<Boolean>(8,true);
      }
      
      public static function get instance() : PreloaderProgressSingleton
      {
         if(_instance == null)
         {
            _instance = new PreloaderProgressSingleton();
         }
         return _instance;
      }
      
      public static function kill() : void
      {
         _instance = null;
      }
      
      public function setProgress(param1:uint) : void
      {
         this._states[param1] = true;
      }
      
      public function get state() : int
      {
         var _loc2_:Boolean = false;
         var _loc1_:int = 0;
         for each(_loc2_ in this._states)
         {
            if(!_loc2_)
            {
               return _loc1_;
            }
            _loc1_++;
         }
         return _loc1_;
      }
   }
}

