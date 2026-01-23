package net.bigpoint.cityrama.model.urbies.vo
{
   public class FramesetVo
   {
      
      private var _endFrame:int;
      
      private var _startFrame:int;
      
      private var _playbackMode:int;
      
      public function FramesetVo(param1:int, param2:int, param3:int)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               this._startFrame = param1;
               if(_loc5_)
               {
                  addr0039:
                  this._endFrame = param2;
                  if(_loc5_ || Boolean(param2))
                  {
                     addr004c:
                     this._playbackMode = param3;
                  }
               }
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr0039);
      }
      
      public function get startFrame() : int
      {
         return this._startFrame;
      }
      
      public function set startFrame(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._startFrame = param1;
         }
      }
      
      public function get endFrame() : int
      {
         return this._endFrame;
      }
      
      public function set endFrame(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._endFrame = param1;
         }
      }
      
      public function get playbackMode() : int
      {
         return this._playbackMode;
      }
      
      public function set playbackMode(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._playbackMode = param1;
         }
      }
   }
}

