package net.bigpoint.as3toolbox.bitmapclip
{
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class SpriteSheetClip extends BitmapClip
   {
      
      private var spritesheet:BitmapData;
      
      private var tileDimensions:Vector.<Rectangle>;
      
      private var rect:Rectangle;
      
      public function SpriteSheetClip(param1:BitmapData, param2:String, param3:Vector.<Rectangle>, param4:int = -1, param5:int = 25, param6:int = 1, param7:Boolean = false, param8:Boolean = false, param9:ColorTransform = null)
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         if(_loc10_)
         {
            super(null,param2,param5,param7,param8,param6,param4,param9);
            if(_loc10_)
            {
               this.spritesheet = param1;
               if(!_loc11_)
               {
                  this.tileDimensions = param3;
                  if(_loc10_)
                  {
                     if(param1 == null)
                     {
                        throw new Error("SpriteSheetClip needs a valid spritesheet Object!");
                     }
                     if(!_loc11_)
                     {
                        if(param3.length > 1)
                        {
                           if(_loc10_ || Boolean(param3))
                           {
                              maxFrames = param3.length;
                              addr006b:
                              if(_loc11_)
                              {
                                 §§goto(addr0098);
                              }
                              §§goto(addr00fc);
                           }
                        }
                        else if(param4 != -1)
                        {
                           if(!_loc11_)
                           {
                              addr0098:
                              maxFrames = param4;
                              if(!(_loc11_ && Boolean(param2)))
                              {
                                 addr00fc:
                                 this.init();
                                 if(_loc10_)
                                 {
                                 }
                              }
                              §§goto(addr0118);
                           }
                           §§goto(addr00fc);
                        }
                        else
                        {
                           §§push(§§findproperty(maxFrames));
                           §§push(param1.width / (param3[0] as Rectangle).width);
                           if(_loc10_)
                           {
                              §§push(§§pop() * (param1.height / (param3[0] as Rectangle).height));
                           }
                           §§pop().maxFrames = §§pop();
                           if(!(_loc11_ && Boolean(this)))
                           {
                              §§goto(addr00fc);
                           }
                        }
                        addr0118:
                        return;
                     }
                     §§goto(addr00fc);
                  }
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr00fc);
      }
      
      private function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(conditionsOk())
            {
               if(_loc1_ || _loc2_)
               {
                  addr0049:
                  if(_autoDeleteCache)
                  {
                     if(_loc1_)
                     {
                        registerCacheID();
                        if(_loc1_ || _loc1_)
                        {
                           addr0069:
                           this.flattenDisplayObject(this.spritesheet,_cacheID);
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0069);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr0049);
      }
      
      public function updateSpriteSheet(param1:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(this.spritesheet.width == param1.width);
            if(!(_loc2_ && _loc2_))
            {
               §§push(!§§pop());
               if(!(_loc2_ && _loc3_))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(!_temp_5)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0082);
                  }
               }
            }
            addr0083:
            §§push(this.spritesheet.height == param1.height);
            if(!_loc2_)
            {
               addr0082:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  §§goto(addr008c);
               }
            }
            this.flattenDisplayObject(param1,_cacheID,true);
            return;
         }
         addr008c:
         throw new Error("Spritesheet must have the same width and height as the current Spritesheet");
      }
      
      private function flattenDisplayObject(param1:BitmapData, param2:String = null, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc7_:Rectangle = null;
         var _loc8_:BCBitmapData = null;
         var _loc4_:Point = new Point();
         if(!_loc10_)
         {
            §§push(param3);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(!(_loc10_ && Boolean(param2)))
               {
                  addr0047:
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc10_)
                     {
                        addr0052:
                        §§pop();
                        if(_loc9_ || Boolean(this))
                        {
                           addr0066:
                           if(param1 is BitmapData)
                           {
                              if(_loc9_)
                              {
                                 if(_endFrame != -1)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_endFrame < _startFrame)
                                       {
                                          if(_loc9_)
                                          {
                                             throw new Error("endframe is smaller than starframe!");
                                          }
                                       }
                                       else
                                       {
                                          addr00a1:
                                          frames = _endFrame;
                                          if(_loc9_ || Boolean(this))
                                          {
                                             addr00cb:
                                             bitmapDataPlayList = new Vector.<BCBitmapData>(frames);
                                          }
                                       }
                                       §§goto(addr00df);
                                    }
                                    §§goto(addr00cb);
                                 }
                                 else
                                 {
                                    frames = maxFrames;
                                    if(_loc9_)
                                    {
                                       §§goto(addr00cb);
                                    }
                                 }
                                 addr00df:
                                 var _loc5_:int = 0;
                                 var _loc6_:int = _startFrame - 1;
                                 while(true)
                                 {
                                    if(_loc6_ >= frames)
                                    {
                                       if(!(_loc10_ && Boolean(this)))
                                       {
                                          addr030f:
                                          if(!param3)
                                          {
                                             if(!(_loc10_ && param3))
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       addr0331:
                                       updateFrame();
                                    }
                                    else
                                    {
                                       §§push(param3);
                                       if(!(_loc10_ && param3))
                                       {
                                          §§push(!§§pop());
                                          if(_loc9_ || Boolean(this))
                                          {
                                             addr010d:
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             if(_temp_9)
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§pop();
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§findproperty(search));
                                                      §§push(param2 + "_");
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() + _loc6_);
                                                      }
                                                      §§push(Boolean(§§pop().search(§§pop())));
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         addr0143:
                                                         if(§§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            bitmapDataPlayList[_loc6_] = cache[param2 + "_" + _loc6_];
                                                            if(_loc10_ && Boolean(param1))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc7_ = null;
                                                            if(_loc9_ || Boolean(param2))
                                                            {
                                                               if(this.tileDimensions.length > 1)
                                                               {
                                                                  addr01a3:
                                                                  _loc7_ = this.tileDimensions[_loc5_++] as Rectangle;
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr01d0:
                                                                     if(!param3)
                                                                     {
                                                                        addr01d5:
                                                                        _loc8_ = new BCBitmapData(_loc7_.width,_loc7_.height,true,0);
                                                                        if(_loc9_ || Boolean(param2))
                                                                        {
                                                                           addr0214:
                                                                           _loc8_.copyPixels(param1,_loc7_,_loc4_);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(_colorTransform != null)
                                                                              {
                                                                                 if(!(_loc10_ && Boolean(param1)))
                                                                                 {
                                                                                    _loc8_.colorTransform(_loc8_.rect,_colorTransform);
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       addr0257:
                                                                                       §§push(param3);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!(_loc10_ && Boolean(param2)))
                                                                                             {
                                                                                                bitmapDataPlayList[_loc6_] = _loc8_;
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr0280:
                                                                                                   §§push(param3);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc9_ || Boolean(param2))
                                                                                                      {
                                                                                                         var _temp_19:* = §§pop();
                                                                                                         §§push(_temp_19);
                                                                                                         if(_temp_19)
                                                                                                         {
                                                                                                            if(_loc9_ || Boolean(this))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr02ba:
                                                                                                                  addr02b0:
                                                                                                                  §§push(param2 == null);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr02b9:
                                                                                                                     §§push(!§§pop());
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        addr02c4:
                                                                                                                        §§push(§§findproperty(addBitmapData));
                                                                                                                        §§push(param2 + "_");
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + _loc6_);
                                                                                                                        }
                                                                                                                        §§pop().addBitmapData(§§pop(),_loc8_);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr02db:
                                                                                                                  _loc6_++;
                                                                                                                  if(!(_loc9_ || Boolean(this)))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr02c4);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02ba);
                                                                                                      }
                                                                                                      §§goto(addr02b9);
                                                                                                   }
                                                                                                   §§goto(addr02ba);
                                                                                                }
                                                                                                §§goto(addr02c4);
                                                                                             }
                                                                                             §§goto(addr02b0);
                                                                                          }
                                                                                          §§goto(addr0280);
                                                                                       }
                                                                                       §§goto(addr02ba);
                                                                                    }
                                                                                    §§goto(addr02db);
                                                                                 }
                                                                                 §§goto(addr02c4);
                                                                              }
                                                                              §§goto(addr0257);
                                                                           }
                                                                           §§goto(addr02c4);
                                                                        }
                                                                        §§goto(addr0280);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc8_ = cache[this.cacheID + "_" + _loc6_];
                                                                     }
                                                                     §§goto(addr0214);
                                                                  }
                                                                  §§goto(addr01d5);
                                                               }
                                                               else
                                                               {
                                                                  _loc7_ = this.getRectangle(_loc6_);
                                                               }
                                                               §§goto(addr01d0);
                                                            }
                                                            §§goto(addr01a3);
                                                         }
                                                         §§goto(addr02db);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr030f);
                                                      }
                                                   }
                                                   §§goto(addr0338);
                                                }
                                             }
                                          }
                                          §§goto(addr0143);
                                       }
                                       §§goto(addr010d);
                                    }
                                    §§goto(addr0338);
                                 }
                                 _frame = _startFrame - 1;
                                 if(!_loc10_)
                                 {
                                    §§goto(addr0331);
                                 }
                                 addr0338:
                                 return;
                              }
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00a1);
                     }
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0052);
            }
            §§goto(addr0047);
         }
         §§goto(addr00cb);
      }
      
      private function getRectangle(param1:int) : Rectangle
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            if(this.rect == null)
            {
               if(_loc4_ || Boolean(this))
               {
                  this.rect = new Rectangle();
               }
            }
         }
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop() * (this.tileDimensions[0] as Rectangle).width));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_)
         {
            §§push(int(§§pop() / this.spritesheet.width));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            this.rect.y = _loc3_ * (this.tileDimensions[0] as Rectangle).height;
            if(!(_loc5_ && Boolean(param1)))
            {
               addr00b6:
               this.rect.x = _loc2_ - _loc3_ * this.spritesheet.width;
               if(_loc4_ || _loc3_)
               {
                  this.rect.width = (this.tileDimensions[0] as Rectangle).width;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     this.rect.height = (this.tileDimensions[0] as Rectangle).height;
                  }
               }
            }
            return this.rect;
         }
         §§goto(addr00b6);
      }
      
      override public function clone() : Object
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteSheetClip = new SpriteSheetClip(this.spritesheet,_cacheID,this.tileDimensions,_endFrame,fps,_startFrame,removeAfterPlay,_autoDeleteCache,_colorTransform);
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.mouseEnabled = this.mouseEnabled;
            if(!_loc2_)
            {
               addr006f:
               _loc1_.mouseChildren = this.mouseChildren;
            }
            return _loc1_;
         }
         §§goto(addr006f);
      }
   }
}

