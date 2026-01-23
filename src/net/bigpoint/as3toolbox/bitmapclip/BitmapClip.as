package net.bigpoint.as3toolbox.bitmapclip
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class BitmapClip extends Sprite
   {
      
      public static const PLAYBACK_FORWARD:uint = 0;
      
      public static const PLAYBACK_YOYO:uint = 1;
      
      public static const PLAYBACK_BACKWARD:uint = 2;
      
      protected static var cache:Array;
      
      private static var cacheIDCounter:Array;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         PLAYBACK_FORWARD = 0;
         if(!(_loc1_ && _loc1_))
         {
            PLAYBACK_YOYO = 1;
            if(!(_loc1_ && BitmapClip))
            {
               addr0054:
               PLAYBACK_BACKWARD = 2;
               if(_loc2_ || _loc2_)
               {
                  cache = [];
                  if(_loc2_ || _loc2_)
                  {
                     cacheIDCounter = [];
                  }
               }
            }
         }
         return;
      }
      §§goto(addr0054);
      
      protected var bitmapDataPlayList:Vector.<BCBitmapData>;
      
      protected var _frame:int;
      
      protected var _fps:int = 25;
      
      protected var _cacheID:String;
      
      private var _movieClip:MovieClip;
      
      protected var _mcBounds:Rectangle;
      
      protected var _removeAfterPlay:Boolean;
      
      protected var posX:int;
      
      protected var posY:int;
      
      protected var currentTime:int;
      
      protected var _bitmap:Bitmap;
      
      private var frameTime:int;
      
      protected var _startFrame:int;
      
      protected var _endFrame:int;
      
      internal var _autoDeleteCache:Boolean;
      
      internal var remove:Boolean;
      
      protected var frames:int = 1;
      
      protected var _colorTransform:ColorTransform;
      
      protected var maxFrames:int;
      
      private var playNotation:Boolean;
      
      private var _forward:Boolean = true;
      
      private var _playbackMode:uint = 0;
      
      private var _playOnce:Boolean;
      
      public function BitmapClip(param1:MovieClip, param2:String, param3:int = 25, param4:Boolean = false, param5:Boolean = false, param6:int = 1, param7:int = -1, param8:ColorTransform = null)
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(_loc9_ || Boolean(param2))
         {
            this._bitmap = new Bitmap();
            if(_loc9_)
            {
               super();
               if(!_loc10_)
               {
                  this._movieClip = param1;
                  if(_loc9_)
                  {
                     this._cacheID = param2;
                     if(_loc9_)
                     {
                        this.fps = param3;
                        if(_loc9_ || Boolean(param2))
                        {
                           this._removeAfterPlay = param4;
                           if(!_loc10_)
                           {
                              this._autoDeleteCache = param5;
                              if(!(_loc10_ && Boolean(param3)))
                              {
                                 this._startFrame = param6;
                                 if(!(_loc10_ && Boolean(param1)))
                                 {
                                    this._endFrame = param7;
                                    if(!_loc10_)
                                    {
                                       addr00a5:
                                       this._colorTransform = param8;
                                       if(_loc9_)
                                       {
                                          addr00b1:
                                          this.addChild(this._bitmap);
                                          if(_loc9_)
                                          {
                                             addr00cc:
                                             this.mouseEnabled = false;
                                             if(_loc9_)
                                             {
                                                addr00d7:
                                                this.mouseChildren = false;
                                                if(_loc9_)
                                                {
                                                   addr00e2:
                                                   if(this._movieClip != null)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr00f1:
                                                         this.maxFrames = this._movieClip.framesLoaded;
                                                         if(!_loc10_)
                                                         {
                                                            addr0103:
                                                            §§push(param7);
                                                            if(_loc9_ || Boolean(param3))
                                                            {
                                                               §§push(-1);
                                                               if(!(_loc10_ && Boolean(param3)))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc10_ && Boolean(param2)))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!(_loc10_ && Boolean(param3)))
                                                                     {
                                                                        var _temp_9:* = §§pop();
                                                                        §§push(_temp_9);
                                                                        if(_temp_9)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc10_ && Boolean(this)))
                                                                              {
                                                                                 §§goto(addr016f);
                                                                              }
                                                                              §§goto(addr0179);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr016f:
                                                                  §§goto(addr016e);
                                                               }
                                                               addr016e:
                                                               §§goto(addr015d);
                                                            }
                                                            addr015d:
                                                            §§goto(addr015b);
                                                         }
                                                         addr015b:
                                                         if(param7 > this.maxFrames)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr0179);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr018b:
                                                            this.init();
                                                            if(_loc9_)
                                                            {
                                                               addr0197:
                                                               this.addEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStage,false,0,true);
                                                            }
                                                         }
                                                         §§goto(addr01a9);
                                                      }
                                                      §§goto(addr0103);
                                                   }
                                                   §§goto(addr0197);
                                                }
                                                §§goto(addr01a9);
                                             }
                                          }
                                          §§goto(addr00f1);
                                       }
                                       §§goto(addr01a9);
                                    }
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr00e2);
                              }
                              §§goto(addr018b);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr015b);
                     }
                     §§goto(addr00d7);
                  }
                  addr01a9:
                  return;
               }
               addr0179:
               throw new Error("endFrame is greater than the number of frames contained in the MovieClip");
            }
            §§goto(addr00a5);
         }
         §§goto(addr00e2);
      }
      
      protected static function addBitmapData(param1:String, param2:BCBitmapData) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            cache[param1] = param2;
         }
      }
      
      protected static function search(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(cache[param1] != null)
            {
               if(_loc3_ || BitmapClip)
               {
                  addr003f:
                  §§push(true);
                  if(_loc3_ || Boolean(param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004e:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr004e);
         }
         §§goto(addr003f);
      }
      
      public static function clearCache() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            cache = [];
         }
      }
      
      public function get playbackMode() : uint
      {
         return this._playbackMode;
      }
      
      public function set playbackMode(param1:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this._playbackMode = param1;
         }
         var _loc2_:* = this._playbackMode;
         if(!_loc4_)
         {
            §§push(PLAYBACK_FORWARD);
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr00c6:
                        §§push(1);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                        }
                     }
                     §§goto(addr00f3);
                  }
                  else
                  {
                     §§goto(addr00c2);
                  }
               }
               addr00c2:
               §§goto(addr00c1);
            }
            addr00c1:
            if(PLAYBACK_BACKWARD === _loc2_)
            {
               §§goto(addr00c6);
            }
            else
            {
               §§push(2);
            }
            addr00f3:
            switch(§§pop())
            {
               case 0:
                  this._forward = true;
                  if(!_loc3_)
                  {
                     addr004a:
                     this._frame = this.bitmapDataPlayList.length - 1;
                     if(!(_loc3_ || Boolean(this)))
                     {
                        break;
                     }
                  }
                  addr0110:
                  this.updateFrame();
                  break;
               case 1:
                  this._forward = false;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr004a);
                  }
                  §§goto(addr0110);
               default:
                  §§goto(addr0110);
            }
            return;
         }
         §§goto(addr00c6);
      }
      
      private function handleAddedToStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            AnimationManager.initStage(this.stage);
            if(_loc2_ || Boolean(param1))
            {
               addr0044:
               this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStage);
               if(!_loc3_)
               {
                  if(this.playNotation)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this.playNotation = false;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr008a:
                           this.play();
                        }
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr008a);
            }
            addr008f:
            return;
         }
         §§goto(addr0044);
      }
      
      private function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._movieClip == null)
            {
               if(_loc1_)
               {
                  throw new Error("BitmapClip needs a valid movieClip Object!");
               }
               addr0063:
               §§push(this._autoDeleteCache);
            }
            else
            {
               §§push(this.conditionsOk());
               if(_loc1_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§goto(addr0063);
                     }
                     addr0082:
                     this.flattenDisplayObject(this._movieClip,this._cacheID);
                  }
                  §§goto(addr0090);
               }
            }
            if(§§pop())
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0078);
               }
            }
            §§goto(addr0082);
         }
         addr0078:
         this.registerCacheID();
         if(!_loc2_)
         {
            §§goto(addr0082);
         }
         addr0090:
      }
      
      public function clone() : Object
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BitmapClip = new BitmapClip(this._movieClip,this._cacheID,this._fps,this._removeAfterPlay,this._autoDeleteCache,this._startFrame,this._endFrame);
         if(_loc2_ || Boolean(this))
         {
            _loc1_.mouseEnabled = this.mouseEnabled;
            if(_loc2_)
            {
               addr0069:
               _loc1_.mouseChildren = this.mouseChildren;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.playbackMode = this.playbackMode;
               }
            }
            return _loc1_;
         }
         §§goto(addr0069);
      }
      
      protected function handleRemovedFromStageListener(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.stop();
         }
      }
      
      private function flattenDisplayObject(param1:MovieClip, param2:String = null) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:BCBitmapData = null;
         var _loc9_:Matrix = null;
         if(_loc10_ || _loc3_)
         {
            if(param1 is MovieClip)
            {
               if(!_loc11_)
               {
                  §§push(this._endFrame);
                  if(!_loc11_)
                  {
                     §§push(-1);
                     if(_loc10_ || _loc3_)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(_loc10_ || Boolean(param1))
                           {
                              addr007b:
                              §§push(this._endFrame);
                              if(!(_loc11_ && Boolean(param1)))
                              {
                                 addr0091:
                                 if(§§pop() < this._startFrame)
                                 {
                                    if(!(_loc11_ && Boolean(param1)))
                                    {
                                       throw new Error("endframe is smaller than starframe!");
                                    }
                                    addr00ed:
                                    MovieClip(param1).gotoAndStop(this._startFrame);
                                    if(_loc10_)
                                    {
                                       addr0103:
                                       this.bitmapDataPlayList = new Vector.<BCBitmapData>();
                                    }
                                 }
                                 else
                                 {
                                    this.frames = this._endFrame;
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§goto(addr00ed);
                                    }
                                 }
                                 §§goto(addr0112);
                              }
                              §§goto(addr011c);
                           }
                           §§goto(addr0103);
                        }
                        else
                        {
                           this.frames = MovieClip(param1).totalFrames;
                           if(!_loc11_)
                           {
                              §§goto(addr00ed);
                           }
                        }
                        addr0112:
                        §§goto(addr011e);
                     }
                     §§goto(addr0091);
                  }
                  addr011e:
                  §§push(this._startFrame);
                  if(!_loc11_)
                  {
                     addr011c:
                     §§push(int(§§pop() - 1));
                  }
                  var _loc3_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc3_);
                     loop1:
                     while(true)
                     {
                        §§push(this.frames);
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc10_)
                              {
                                 addr031f:
                                 this._frame = this._startFrame - 1;
                                 if(_loc10_ || Boolean(param2))
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr033b);
                           }
                           §§push(§§findproperty(search));
                           §§push(param2 + "_");
                           if(!_loc11_)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           if(§§pop().search(§§pop()))
                           {
                              if(_loc11_ && _loc3_)
                              {
                                 continue loop0;
                              }
                              this.bitmapDataPlayList[_loc3_] = cache[param2 + "_" + _loc3_];
                              if(_loc11_ && Boolean(param1))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(!_loc11_)
                              {
                                 §§push(0);
                                 if(_loc11_)
                                 {
                                    continue;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc11_)
                                    {
                                       MovieClip(param1).gotoAndStop(_loc3_ + 1);
                                       if(_loc10_)
                                       {
                                          addr01ae:
                                          this._mcBounds = param1.getBounds(param1);
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             §§push(int(Math.ceil(this._mcBounds.width)));
                                             if(_loc11_)
                                             {
                                                continue loop1;
                                             }
                                             _loc4_ = §§pop();
                                             if(_loc11_ && Boolean(this))
                                             {
                                                break;
                                             }
                                             §§push(int(Math.ceil(this._mcBounds.height)));
                                             if(_loc10_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   continue loop0;
                                                }
                                                addr0204:
                                                §§push(int(Math.ceil(this._mcBounds.x)));
                                                if(!_loc11_)
                                                {
                                                   addr0217:
                                                   _loc6_ = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      §§push(int(Math.ceil(this._mcBounds.y)));
                                                      if(!(_loc10_ || Boolean(param1)))
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr023a:
                                                      _loc7_ = §§pop();
                                                      if(_loc11_ && Boolean(param2))
                                                      {
                                                         §§goto(addr031f);
                                                      }
                                                   }
                                                   addr024a:
                                                   _loc8_ = new BCBitmapData(_loc4_,_loc5_,true,0);
                                                   _loc9_ = new Matrix();
                                                   _loc9_.translate(-_loc6_,-_loc7_);
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      _loc8_.draw(param1,_loc9_,this._colorTransform);
                                                      if(_loc10_ || Boolean(param1))
                                                      {
                                                         _loc8_.offsetX = _loc6_;
                                                         if(_loc10_ || Boolean(this))
                                                         {
                                                            addr02b4:
                                                            _loc8_.offsetY = _loc7_;
                                                            if(_loc10_)
                                                            {
                                                               addr02c1:
                                                               this.bitmapDataPlayList[_loc3_] = _loc8_;
                                                               if(!(_loc11_ && Boolean(this)))
                                                               {
                                                                  if(param2 != null)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        addr02e5:
                                                                        §§push(§§findproperty(addBitmapData));
                                                                        §§push(param2 + "_");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + _loc3_);
                                                                        }
                                                                        §§pop().addBitmapData(§§pop(),_loc8_);
                                                                     }
                                                                  }
                                                                  addr0308:
                                                                  _loc3_++;
                                                                  if(_loc11_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            §§goto(addr02e5);
                                                         }
                                                         §§goto(addr0308);
                                                      }
                                                      §§goto(addr02c1);
                                                   }
                                                   §§goto(addr02b4);
                                                }
                                                §§goto(addr023a);
                                             }
                                             §§goto(addr0217);
                                          }
                                          §§goto(addr024a);
                                       }
                                       §§goto(addr031f);
                                    }
                                    §§goto(addr0204);
                                 }
                                 §§goto(addr01ae);
                              }
                              §§goto(addr0217);
                           }
                           §§goto(addr0308);
                           §§goto(addr031f);
                        }
                        break;
                     }
                     break;
                  }
                  this.updateFrame();
                  addr033b:
                  return;
               }
               §§goto(addr007b);
            }
            §§goto(addr0103);
         }
         §§goto(addr00ed);
      }
      
      public function get framesLoaded() : int
      {
         return this.bitmapDataPlayList.length;
      }
      
      final internal function updateFrame() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BCBitmapData = this.bitmapDataPlayList[int(this._frame)];
         if(!_loc2_)
         {
            if(_loc1_ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._bitmap.x = _loc1_.offsetX;
                  if(!_loc2_)
                  {
                     this._bitmap.y = _loc1_.offsetY;
                     if(_loc3_)
                     {
                        super.x = this.posX;
                        if(!(_loc2_ && _loc3_))
                        {
                           super.y = this.posY;
                           if(_loc3_)
                           {
                              addr0098:
                              this._bitmap.bitmapData = _loc1_;
                           }
                           §§goto(addr00a0);
                        }
                     }
                  }
                  §§goto(addr0098);
               }
            }
            addr00a0:
            return;
         }
         §§goto(addr0098);
      }
      
      public function get currentFrameBitmap() : Bitmap
      {
         return this._bitmap;
      }
      
      override public function get numChildren() : int
      {
         return super.numChildren - 1;
      }
      
      override public function getChildAt(param1:int) : DisplayObject
      {
         return super.getChildAt(param1 + 1);
      }
      
      override public function getChildIndex(param1:DisplayObject) : int
      {
         return super.getChildIndex(param1) - 1;
      }
      
      public function gotoAndStop(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.stop();
            if(_loc2_)
            {
               this._frame = param1 - 1;
               if(!(_loc3_ && Boolean(this)))
               {
                  if(this._frame > this.bitmapDataPlayList.length - 1)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr006b);
                     }
                  }
                  else
                  {
                     this.updateFrame();
                  }
                  §§goto(addr0089);
               }
               §§goto(addr006b);
            }
            addr0089:
            return;
         }
         addr006b:
         throw new Error("frameIndex is not valid! 1");
      }
      
      public function gotoAndPlay(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._frame = param1 - 1;
            if(!(_loc2_ && _loc2_))
            {
               if(this._frame > this.bitmapDataPlayList.length - 1)
               {
                  if(_loc3_)
                  {
                     §§goto(addr005e);
                  }
               }
            }
            this.play();
            return;
         }
         addr005e:
         throw new Error("frameIndex is not valid! 2");
      }
      
      public function set frame(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.gotoAndStop(param1);
         }
      }
      
      public function get frame() : int
      {
         return this._frame + 1;
      }
      
      private function nextFrame() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._forward);
            if(!(_loc1_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this._frame += 1;
                     if(!_loc1_)
                     {
                        §§push(this._frame);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§push(this.bitmapDataPlayList.length - 1);
                           if(_loc2_ || _loc1_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(this._playbackMode);
                                    if(!_loc1_)
                                    {
                                       §§push(PLAYBACK_FORWARD);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             if(_temp_9)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§pop();
                                                   if(_loc2_)
                                                   {
                                                      §§push(this._removeAfterPlay);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr00cc);
                                                         }
                                                      }
                                                      §§goto(addr01f2);
                                                   }
                                                   §§goto(addr0147);
                                                }
                                                §§goto(addr01f2);
                                             }
                                          }
                                          addr00cc:
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                this.stop();
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   if(parent != null)
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         parent.removeChild(this);
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr0109);
                                                         }
                                                         else
                                                         {
                                                            addr020d:
                                                            if(parent != null)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  addr021a:
                                                                  parent.removeChild(this);
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §§goto(addr022f);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0249:
                                                                  this._frame = this._startFrame;
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                     addr025e:
                                                                     this._forward = true;
                                                                     if(_loc1_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr02a1);
                                                            }
                                                            §§goto(addr022f);
                                                         }
                                                      }
                                                      §§goto(addr02a1);
                                                   }
                                                   §§goto(addr0109);
                                                }
                                                §§goto(addr022f);
                                             }
                                             §§goto(addr02a1);
                                          }
                                          else
                                          {
                                             §§push(this._playbackMode);
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr0124:
                                                §§push(PLAYBACK_YOYO);
                                                if(_loc2_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr0147:
                                                         this._frame = this.bitmapDataPlayList.length - 2;
                                                         if(_loc2_)
                                                         {
                                                            this._forward = false;
                                                            if(_loc1_ && _loc1_)
                                                            {
                                                            }
                                                            addr02a1:
                                                            this.updateFrame();
                                                         }
                                                         §§goto(addr02a6);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr021a);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this._playOnce);
                                                      if(!_loc1_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               this.remove = true;
                                                               if(!(_loc2_ || _loc2_))
                                                               {
                                                                  addr01d0:
                                                                  addr01cb:
                                                                  addr01c7:
                                                                  if(this._frame < this._startFrame - 1)
                                                                  {
                                                                     if(!(_loc1_ && Boolean(this)))
                                                                     {
                                                                        §§push(this._removeAfterPlay);
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           addr01f2:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 this.stop();
                                                                                 if(!(_loc1_ && Boolean(this)))
                                                                                 {
                                                                                    §§goto(addr020d);
                                                                                 }
                                                                                 §§goto(addr021a);
                                                                              }
                                                                              §§goto(addr025e);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0240:
                                                                              addr023d:
                                                                              if(this._playbackMode == PLAYBACK_YOYO)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§goto(addr0249);
                                                                                 }
                                                                                 §§goto(addr025e);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr027a:
                                                                                 if(this._playOnce)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr0283:
                                                                                       this.remove = true;
                                                                                       if(_loc2_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr02a1);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this._frame = this.bitmapDataPlayList.length - 1;
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§goto(addr02a1);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr02a6);
                                                                        }
                                                                        §§goto(addr027a);
                                                                     }
                                                                     §§goto(addr0283);
                                                                  }
                                                               }
                                                               §§goto(addr02a1);
                                                            }
                                                            addr022f:
                                                            return;
                                                         }
                                                         this._frame = this._startFrame - 1;
                                                         if(!(_loc1_ && Boolean(this)))
                                                         {
                                                            §§goto(addr02a1);
                                                         }
                                                         §§goto(addr02a6);
                                                      }
                                                      §§goto(addr01f2);
                                                   }
                                                   §§goto(addr02a6);
                                                }
                                                §§goto(addr0240);
                                             }
                                             §§goto(addr023d);
                                          }
                                          return;
                                       }
                                       §§goto(addr0240);
                                    }
                                    §§goto(addr0124);
                                 }
                              }
                              §§goto(addr02a1);
                           }
                           §§goto(addr01d0);
                        }
                        §§goto(addr01cb);
                     }
                  }
                  §§goto(addr0249);
               }
               else
               {
                  --this._frame;
                  if(!_loc1_)
                  {
                     §§goto(addr01c7);
                  }
               }
               §§goto(addr02a1);
            }
            §§goto(addr01f2);
         }
         addr0109:
      }
      
      public function play() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(parent != null)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  addr002b:
                  this.remove = false;
                  if(!_loc1_)
                  {
                     if(this.bitmapDataPlayList.length > 0)
                     {
                        if(!_loc1_)
                        {
                           addr0050:
                           if(!this.hasEventListener(Event.REMOVED_FROM_STAGE))
                           {
                              if(_loc2_)
                              {
                                 this.addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemovedFromStageListener);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr0087:
                                    AnimationManager.addClip(this);
                                    if(!_loc1_)
                                    {
                                       AnimationManager.addEnterFrameHandler();
                                       if(_loc1_)
                                       {
                                       }
                                    }
                                 }
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr0087);
                        }
                     }
                     §§goto(addr00ab);
                  }
               }
               §§goto(addr0050);
            }
            else
            {
               this.playNotation = true;
            }
            addr00ab:
            return;
         }
         §§goto(addr002b);
      }
      
      public function playOnce() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._playOnce = true;
            if(_loc2_ || _loc1_)
            {
               addr003a:
               this.play();
            }
            return;
         }
         §§goto(addr003a);
      }
      
      public function stop() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.removeEventListener(Event.REMOVED_FROM_STAGE,this.handleRemovedFromStageListener);
            if(!_loc2_)
            {
               this.remove = true;
            }
         }
      }
      
      internal function update(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.currentTime += param1;
         }
         while(this.currentTime > this.frameTime)
         {
            this.currentTime -= this.frameTime;
            if(_loc3_)
            {
               this.nextFrame();
               if(!_loc3_)
               {
                  break;
               }
            }
         }
      }
      
      override public function set x(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.posX = param1;
            if(_loc3_ || _loc2_)
            {
               this.updateFrame();
            }
         }
      }
      
      override public function set y(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.posY = param1;
            if(!_loc3_)
            {
               addr0029:
               this.updateFrame();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      override public function get x() : Number
      {
         return this.posX;
      }
      
      override public function get y() : Number
      {
         return this.posY;
      }
      
      public function get cacheID() : String
      {
         return this._cacheID;
      }
      
      internal function unregisterCacheID() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(cacheIDCounter);
            if(_loc4_ || _loc1_)
            {
               §§push(this._cacheID);
               if(!(_loc5_ && Boolean(this)))
               {
                  if(§§pop()[§§pop()])
                  {
                     if(!_loc5_)
                     {
                        §§push(cacheIDCounter);
                        if(_loc4_ || _loc1_)
                        {
                           var _loc1_:* = §§pop();
                           var _loc2_:*;
                           var _loc3_:* = _loc1_[_loc2_ = this._cacheID] - 1;
                           if(_loc4_)
                           {
                              _loc1_[_loc2_] = _loc3_;
                           }
                           if(_loc4_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00b5);
                        }
                        addr009a:
                        addr009e:
                        addr0097:
                        if(cacheIDCounter[this._cacheID] == 0)
                        {
                           if(!(_loc5_ && Boolean(this)))
                           {
                              addr00b5:
                              this.deleteClipCache();
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00b5);
                  }
                  addr00bb:
                  return;
               }
               §§goto(addr009e);
            }
            §§goto(addr009a);
         }
         §§goto(addr0097);
      }
      
      protected function registerCacheID() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc1_)
         {
            §§push(cacheIDCounter);
            if(_loc4_ || Boolean(this))
            {
               §§push(this._cacheID);
               if(_loc4_ || _loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc4_)
                     {
                        §§push(cacheIDCounter);
                        if(_loc4_ || _loc3_)
                        {
                           addr0073:
                           §§pop()[this._cacheID] = 0;
                           addr006f:
                           if(_loc4_)
                           {
                              addr008b:
                              var _loc1_:Array = cacheIDCounter;
                              var _loc2_:*;
                              var _loc3_:* = _loc1_[_loc2_ = this._cacheID] + 1;
                              addr007e:
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 _loc1_[_loc2_] = _loc3_;
                              }
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0073);
            }
            §§goto(addr006f);
         }
         addr00b2:
      }
      
      private function deleteClipCache() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = null;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            delete cacheIDCounter[this._cacheID];
         }
         §§push(this._startFrame);
         if(_loc3_ || Boolean(this))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ < this.frames)
         {
            §§push(this.cacheID);
            if(_loc3_)
            {
               §§push(§§pop() + "_");
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() + _loc1_);
               }
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            if(_loc4_ && Boolean(this))
            {
               continue;
            }
            §§push(cache);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  (§§pop()[§§pop()] as BCBitmapData).dispose();
                  if(!(_loc3_ || _loc1_))
                  {
                     break;
                  }
                  addr00b9:
                  §§push(cache);
                  §§push(_loc2_);
               }
               delete §§pop()[§§pop()];
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               _loc1_++;
               if(_loc4_ && Boolean(this))
               {
                  break;
               }
               continue;
            }
            §§goto(addr00b9);
         }
      }
      
      public function set fps(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._fps = param1;
            if(_loc2_ || _loc2_)
            {
               this.frameTime = 1000 / this._fps;
            }
         }
      }
      
      public function get fps() : int
      {
         return this._fps;
      }
      
      public function set removeAfterPlay(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._removeAfterPlay = param1;
         }
      }
      
      public function get removeAfterPlay() : Boolean
      {
         return this._removeAfterPlay;
      }
      
      protected function conditionsOk() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._endFrame);
            if(_loc1_)
            {
               §§push(this.maxFrames);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        throw new Error("endFrame exceeds total frames of the movieclip!");
                     }
                  }
                  else
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0072);
               }
               addr0057:
               §§goto(addr0055);
            }
            addr0055:
            if(this._startFrame >= 1)
            {
               §§push(this._cacheID);
               if(_loc1_)
               {
                  §§push(§§pop() == null);
                  if(_loc1_ || Boolean(this))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(!_temp_5)
                     {
                        if(_loc1_)
                        {
                           addr00a5:
                           §§pop();
                           if(_loc1_ || Boolean(this))
                           {
                              §§goto(addr00e9);
                           }
                           §§goto(addr00dc);
                        }
                        addr00e9:
                        §§goto(addr00c1);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr00a5);
               }
               addr00c1:
               §§push(this._cacheID.length == 0);
               if(!(_loc2_ && _loc2_))
               {
                  addr00d3:
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§goto(addr00dc);
                     }
                  }
                  return true;
               }
            }
            if(_loc1_ || _loc2_)
            {
               §§goto(addr0072);
            }
            addr00dc:
            throw new Error("BitmapClip needs a valid cacheID");
         }
         addr0072:
         throw new Error("startFrame must be 1 or higher!");
      }
   }
}

