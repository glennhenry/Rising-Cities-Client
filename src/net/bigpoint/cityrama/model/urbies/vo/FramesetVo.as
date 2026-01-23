package net.bigpoint.cityrama.model.urbies.vo
{
   public class FramesetVo
   {
      
      private var _endFrame:int;
      
      private var _startFrame:int;
      
      private var _playbackMode:int;
      
      public function FramesetVo(param1:int, param2:int, param3:int)
      {
         super();
         this._startFrame = param1;
         this._endFrame = param2;
         this._playbackMode = param3;
      }
      
      public function get startFrame() : int
      {
         return this._startFrame;
      }
      
      public function set startFrame(param1:int) : void
      {
         this._startFrame = param1;
      }
      
      public function get endFrame() : int
      {
         return this._endFrame;
      }
      
      public function set endFrame(param1:int) : void
      {
         this._endFrame = param1;
      }
      
      public function get playbackMode() : int
      {
         return this._playbackMode;
      }
      
      public function set playbackMode(param1:int) : void
      {
         this._playbackMode = param1;
      }
   }
}

