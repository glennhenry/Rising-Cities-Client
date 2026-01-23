package net.bigpoint.itemRenderer
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.itemRenderer.interfaces.IClip;
   
   public class RendererList extends Bitmap
   {
      
      private var clipList:Array;
      
      private var isRendering:Boolean = false;
      
      private var rectangle:Rectangle;
      
      public function RendererList(param1:int, param2:int, param3:Boolean = true)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            this.clipList = new Array();
            if(_loc5_)
            {
               super();
               if(!(_loc4_ && Boolean(param1)))
               {
                  bitmapData = new BitmapData(param1,param2,param3,0);
                  if(_loc5_ || Boolean(this))
                  {
                     addr0071:
                     this.rectangle = bitmapData.rect;
                  }
               }
               return;
            }
         }
         §§goto(addr0071);
      }
      
      public function render() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IClip = null;
         if(!_loc4_)
         {
            if(this.hasClipsChanged())
            {
               if(_loc5_)
               {
                  bitmapData.lock();
                  if(_loc5_ || Boolean(this))
                  {
                     bitmapData.fillRect(this.rectangle,0);
                     addr0046:
                  }
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.clipList)
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     _loc1_.renderClip(bitmapData);
                  }
               }
               if(_loc5_ || Boolean(this))
               {
                  bitmapData.unlock();
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      public function resize(param1:int, param2:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(this.bitmapData.width == param1);
            if(_loc5_)
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!_loc4_)
                     {
                        addr0047:
                        §§pop();
                        if(!_loc4_)
                        {
                           addr004e:
                           §§push(this.bitmapData.height == param2);
                           if(!_loc4_)
                           {
                              addr0068:
                              §§push(!§§pop());
                              if(_loc5_ || Boolean(param2))
                              {
                                 addr0077:
                                 if(§§pop())
                                 {
                                    addr007b:
                                    _loc3_ = new BitmapData(param1,param2,this.bitmapData.transparent,0);
                                    if(_loc5_ || Boolean(this))
                                    {
                                       this.bitmapData = _loc3_;
                                       if(_loc5_ || Boolean(param2))
                                       {
                                          this.rectangle = bitmapData.rect;
                                          if(!_loc5_)
                                          {
                                             addr00d1:
                                             return false;
                                             addr00d0:
                                          }
                                       }
                                       return true;
                                    }
                                 }
                                 §§goto(addr00d0);
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr0068);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr00d1);
            }
            §§goto(addr0047);
         }
         §§goto(addr004e);
      }
      
      public function addClip(param1:IClip) : IClip
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.clipList);
            if(_loc3_)
            {
               if(§§pop().indexOf(param1) == -1)
               {
                  if(_loc3_)
                  {
                     addr004a:
                     this.clipList.push(param1);
                  }
               }
               §§goto(addr004e);
            }
            §§goto(addr004a);
         }
         addr004e:
         return param1;
      }
      
      public function hasClip(param1:IClip) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this.clipList.indexOf(param1) == -1);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function removeClip(param1:IClip) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:int = int(this.clipList.indexOf(param1));
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ == -1)
            {
               if(!_loc3_)
               {
                  addr0045:
                  §§push(false);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0053:
                  this.clipList.splice(_loc2_,1);
                  return true;
               }
               return §§pop();
            }
            §§goto(addr0053);
         }
         §§goto(addr0045);
      }
      
      public function removeAllClips() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IClip = null;
         for each(_loc1_ in this.clipList)
         {
            if(!_loc4_)
            {
               this.removeClip(_loc1_);
            }
         }
      }
      
      private function hasClipsChanged() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IClip = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.clipList;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ && Boolean(this))
               {
                  break;
               }
               §§push(_loc1_.hasChanged);
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(!_temp_3)
                     {
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           §§push(_loc1_.forceNewRender);
                           if(_loc4_)
                           {
                              addr0092:
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 addr0099:
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                           }
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr0092);
            }
            return false;
         }
         addr00ac:
         true;
         return §§pop();
      }
      
      public function startRendering() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(!this.isRendering)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addEventListener(Event.ENTER_FRAME,this.onEnter);
                  if(!_loc1_)
                  {
                     addr0048:
                     this.isRendering = true;
                  }
               }
               return;
            }
         }
         §§goto(addr0048);
      }
      
      public function stopRendering() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnter);
            if(_loc2_)
            {
               addr003b:
               this.isRendering = false;
            }
            return;
         }
         §§goto(addr003b);
      }
      
      private function onEnter(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.render();
         }
      }
   }
}

