package net.bigpoint.cityrama.init.preloader
{
   public class PreloaderProgressSingleton
   {
      
      private static var _instance:PreloaderProgressSingleton;
      
      public static const STATE_POINTER_SWFLOADING_PROGRESS:uint = 0;
      
      public static const STATE_POINTER_SWFLOADING_COMPLETE:uint = 1;
      
      public static const STATE_POINTER_LOCALE_FILES_LOADED:uint = 2;
      
      public static const STATE_POINTER_SOCKET_CONNECTED:uint = 4;
      
      public static const STATE_POINTER_SERVER_LOGIN_SUCESS:uint = 6;
      
      public static const STATE_POINTER_FIELD_BUILD_STARTED:uint = 7;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && PreloaderProgressSingleton))
      {
         STATE_POINTER_SWFLOADING_PROGRESS = 0;
         if(!_loc2_)
         {
            STATE_POINTER_SWFLOADING_COMPLETE = 1;
            if(_loc1_ || PreloaderProgressSingleton)
            {
               STATE_POINTER_LOCALE_FILES_LOADED = 2;
               if(!(_loc2_ && PreloaderProgressSingleton))
               {
                  §§goto(addr005e);
               }
               §§goto(addr00b4);
            }
            §§goto(addr0073);
         }
         §§goto(addr00b4);
      }
      addr005e:
      
      public static const STATE_POINTER_CONNECT_PHP:uint = 3;
      
      if(_loc1_ || _loc1_)
      {
         addr0073:
         STATE_POINTER_SOCKET_CONNECTED = 4;
         if(!(_loc2_ && PreloaderProgressSingleton))
         {
            §§goto(addr0092);
         }
         §§goto(addr00a7);
      }
      addr0092:
      
      public static const STATE_POINTER_SOCKET_ERROR:uint = 5;
      
      if(_loc1_ || PreloaderProgressSingleton)
      {
         addr00a7:
         STATE_POINTER_SERVER_LOGIN_SUCESS = 6;
         if(_loc1_)
         {
            addr00b4:
            STATE_POINTER_FIELD_BUILD_STARTED = 7;
         }
      }
      
      private var _states:Vector.<Boolean>;
      
      public function PreloaderProgressSingleton()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr001d:
               this._states = new Vector.<Boolean>(8,true);
            }
            return;
         }
         §§goto(addr001d);
      }
      
      public static function get instance() : PreloaderProgressSingleton
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(_instance);
            if(_loc2_ || PreloaderProgressSingleton)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr0042:
                     _instance = new PreloaderProgressSingleton();
                  }
               }
               return _instance;
            }
         }
         §§goto(addr0042);
      }
      
      public static function kill() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            _instance = null;
         }
      }
      
      public function setProgress(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._states[param1] = true;
         }
      }
      
      public function get state() : int
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = false;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = this._states;
         for each(_loc3_ in _loc4_)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(this))
            {
               _loc2_ = §§pop();
               if(_loc6_)
               {
                  continue;
               }
               §§push(_loc2_);
            }
            if(!§§pop())
            {
               return _loc1_;
            }
            if(!(_loc6_ && Boolean(_loc1_)))
            {
               _loc1_++;
               if(_loc6_ && Boolean(this))
               {
               }
            }
         }
         return _loc1_;
      }
   }
}

