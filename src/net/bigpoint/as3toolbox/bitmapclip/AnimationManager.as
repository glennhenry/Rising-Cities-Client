package net.bigpoint.as3toolbox.bitmapclip
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   internal class AnimationManager
   {
      
      private static var clipList:Vector.<BitmapClip>;
      
      private static var stage:Stage;
      
      private static var enterFrameHandlerAdded:Boolean;
      
      private static var deltaTime:int = 0;
      
      private static var oldDeltaTime:int = -1;
      
      public function AnimationManager()
      {
         super();
      }
      
      public static function initStage(param1:Stage) : void
      {
         if(stage == null)
         {
            stage = param1;
         }
      }
      
      private static function handleEnterFrame(param1:Event) : void
      {
         var _loc5_:BitmapClip = null;
         var _loc2_:int = int(clipList.length - 1);
         if(_loc2_ == -1)
         {
            stage.removeEventListener(Event.ENTER_FRAME,handleEnterFrame);
            enterFrameHandlerAdded = false;
            return;
         }
         var _loc3_:uint = uint(getTimer());
         deltaTime = _loc3_ - oldDeltaTime;
         oldDeltaTime = _loc3_;
         var _loc4_:int = _loc2_;
         while(_loc4_ > -1)
         {
            _loc5_ = clipList[_loc4_];
            if(_loc5_.remove || _loc5_.parent == null)
            {
               clipList.splice(_loc4_,1);
               if(_loc5_.parent == null && _loc5_._autoDeleteCache)
               {
                  _loc5_.unregisterCacheID();
               }
            }
            else
            {
               _loc5_.update(deltaTime);
            }
            _loc4_--;
         }
      }
      
      internal static function addClip(param1:BitmapClip) : void
      {
         var _loc2_:BitmapClip = null;
         if(clipList == null)
         {
            clipList = new Vector.<BitmapClip>();
         }
         for each(_loc2_ in clipList)
         {
            if(_loc2_ == param1)
            {
               return;
            }
         }
         clipList.push(param1);
      }
      
      internal static function addEnterFrameHandler() : void
      {
         if(!enterFrameHandlerAdded)
         {
            oldDeltaTime = getTimer();
            stage.addEventListener(Event.ENTER_FRAME,handleEnterFrame);
            enterFrameHandlerAdded = true;
         }
      }
   }
}

