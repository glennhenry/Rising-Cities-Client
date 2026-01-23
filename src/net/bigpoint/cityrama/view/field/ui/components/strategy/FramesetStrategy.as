package net.bigpoint.cityrama.view.field.ui.components.strategy
{
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import net.bigpoint.as3toolbox.bitmapclip.SpriteSheetClip;
   import net.bigpoint.cityrama.model.urbies.vo.FramesetVo;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeConfigVo;
   import net.bigpoint.util.RandomUtilities;
   
   public class FramesetStrategy
   {
      
      private var _config:UrbieLifeConfigVo;
      
      private var _container:DisplayObjectContainer;
      
      private var _framesets:Dictionary;
      
      private var _sheet:BitmapData;
      
      private var _currentFrameset:String;
      
      public function FramesetStrategy(param1:DisplayObjectContainer, param2:UrbieLifeConfigVo)
      {
         super();
         this._config = param2;
         this._container = param1;
         this._framesets = new Dictionary(true);
      }
      
      public function setSheet(param1:BitmapData) : void
      {
         this._sheet = param1;
         if(this._currentFrameset)
         {
            this.playCurrentFrameset();
         }
      }
      
      public function playFrameset(param1:String) : void
      {
         if(this._currentFrameset != param1)
         {
            this._currentFrameset = param1;
            this.playCurrentFrameset();
         }
      }
      
      private function playCurrentFrameset() : void
      {
         while(this._container.numChildren)
         {
            RandomUtilities.cleanRemoveChild(this._container.getChildAt(0));
         }
         if(!this._framesets[this._currentFrameset])
         {
            this.createFrameset(this._currentFrameset);
         }
         if(this._framesets[this._currentFrameset])
         {
            this._container.addChild(this._framesets[this._currentFrameset]);
            this._framesets[this._currentFrameset].play();
         }
      }
      
      private function createFrameset(param1:String) : void
      {
         var _loc2_:Vector.<Rectangle> = null;
         var _loc3_:SpriteSheetClip = null;
         if(this._sheet)
         {
            _loc2_ = new Vector.<Rectangle>();
            _loc2_.push(new Rectangle(0,0,this._sheet.width / this._config.columns,this._sheet.height / this._config.rows));
            _loc3_ = new SpriteSheetClip(this._sheet,this._config.animationClass + param1 + this._config.id + "_" + this._config.iteration,_loc2_,this._config.frameset[param1].endFrame,this._config.fps,this._config.frameset[param1].startFrame);
            _loc3_.playbackMode = FramesetVo(this._config.frameset[param1]).playbackMode;
            _loc3_.x = this._config.offset.x;
            _loc3_.y = this._config.offset.y;
            this._framesets[param1] = _loc3_;
         }
      }
      
      public function pauseCurrentFrameset() : void
      {
         if(this._framesets[this._currentFrameset])
         {
            SpriteSheetClip(this._framesets[this._currentFrameset]).stop();
         }
      }
      
      public function resumeCurrentFrameset() : void
      {
         if(this._framesets[this._currentFrameset])
         {
            SpriteSheetClip(this._framesets[this._currentFrameset]).play();
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:String = null;
         this._framesets;
         for(_loc1_ in this._framesets)
         {
            RandomUtilities.cleanRemoveChild(this._framesets[_loc1_]);
            this._framesets[_loc1_] = null;
            delete this._framesets[_loc1_];
         }
         this._framesets;
      }
   }
}

