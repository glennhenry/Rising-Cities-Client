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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(_loc4_ || Boolean(param2))
            {
               this._config = param2;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr005d:
                  this._container = param1;
                  if(!_loc3_)
                  {
                     this._framesets = new Dictionary(true);
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
      
      public function setSheet(param1:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._sheet = param1;
            if(_loc3_ || _loc3_)
            {
               if(this._currentFrameset)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     this.playCurrentFrameset();
                  }
               }
            }
         }
      }
      
      public function playFrameset(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._currentFrameset != param1)
            {
               if(_loc2_)
               {
                  addr0031:
                  this._currentFrameset = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     this.playCurrentFrameset();
                  }
               }
            }
            return;
         }
         §§goto(addr0031);
      }
      
      private function playCurrentFrameset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(this._container.numChildren)
            {
               continue;
            }
            if(_loc2_ || Boolean(this))
            {
               if(!this._framesets[this._currentFrameset])
               {
                  if(_loc2_)
                  {
                     this.createFrameset(this._currentFrameset);
                     if(_loc2_ || Boolean(this))
                     {
                        addr0081:
                        if(this._framesets[this._currentFrameset])
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           addr00b7:
                           this._framesets[this._currentFrameset].play();
                        }
                     }
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr0081);
            }
            §§goto(addr00c7);
         }
         while(RandomUtilities.cleanRemoveChild(this._container.getChildAt(0)), !(_loc1_ && _loc1_));
         
         this._container.addChild(this._framesets[this._currentFrameset]);
         if(!_loc1_)
         {
            §§goto(addr00b7);
         }
         addr00c7:
      }
      
      private function createFrameset(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Vector.<Rectangle> = null;
         var _loc3_:SpriteSheetClip = null;
         if(_loc5_ || Boolean(this))
         {
            if(this._sheet)
            {
               addr0036:
               _loc2_ = new Vector.<Rectangle>();
               if(_loc5_ || Boolean(this))
               {
                  _loc2_.push(new Rectangle(0,0,this._sheet.width / this._config.columns,this._sheet.height / this._config.rows));
               }
               _loc3_ = new SpriteSheetClip(this._sheet,this._config.animationClass + param1 + this._config.id + "_" + this._config.iteration,_loc2_,this._config.frameset[param1].endFrame,this._config.fps,this._config.frameset[param1].startFrame);
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc3_.playbackMode = FramesetVo(this._config.frameset[param1]).playbackMode;
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     _loc3_.x = this._config.offset.x;
                     if(!_loc4_)
                     {
                        addr0131:
                        _loc3_.y = this._config.offset.y;
                        if(_loc5_)
                        {
                           addr0143:
                           this._framesets[param1] = _loc3_;
                        }
                        §§goto(addr014c);
                     }
                     §§goto(addr0143);
                  }
                  §§goto(addr014c);
               }
               §§goto(addr0131);
            }
            addr014c:
            return;
         }
         §§goto(addr0036);
      }
      
      public function pauseCurrentFrameset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            if(this._framesets[this._currentFrameset])
            {
               if(!_loc1_)
               {
                  SpriteSheetClip(this._framesets[this._currentFrameset]).stop();
               }
            }
         }
      }
      
      public function resumeCurrentFrameset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._framesets[this._currentFrameset])
            {
               if(!(_loc2_ && _loc1_))
               {
                  SpriteSheetClip(this._framesets[this._currentFrameset]).play();
               }
            }
         }
      }
      
      public function destroy() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:String = null;
         if(_loc4_)
         {
            this._framesets;
         }
         var _loc2_:int = 0;
         for(_loc1_ in this._framesets)
         {
            if(!_loc5_)
            {
               RandomUtilities.cleanRemoveChild(this._framesets[_loc1_]);
               if(!(_loc4_ || Boolean(_loc2_)))
               {
                  continue;
               }
            }
            this._framesets[_loc1_] = null;
            if(!_loc5_)
            {
               delete this._framesets[_loc1_];
            }
         }
         if(_loc4_)
         {
            this._framesets;
         }
      }
   }
}

