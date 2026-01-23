package net.bigpoint.cityrama.view.common.components
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.system.ApplicationDomain;
   import mx.core.UIComponent;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class BriskMCDynaLib extends UIComponent
   {
      
      private var _preloadingDisplayDummy:DisplayObject = null;
      
      private var _displayDummyChanged:Boolean = false;
      
      private var _preloadDoneNotification:String;
      
      private var _movieClip:MovieClip;
      
      private var _bitmapClip:BitmapClip;
      
      private var _bitmapClipFramerate:int = 25;
      
      private var _dynaLibName:String;
      
      private var _dynaMCSourceName:String;
      
      private var _dynaSWFName:String;
      
      private var _dynalibChaged:Boolean;
      
      private var _dynaBMPchanged:Boolean;
      
      private var _createBitmapClip:Boolean;
      
      public function BriskMCDynaLib()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      private function createDummy() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._displayDummyChanged = true;
            if(_loc2_ || Boolean(this))
            {
               if(this._preloadingDisplayDummy == null)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0052);
                  }
               }
               §§goto(addr0062);
            }
            addr0052:
            this._preloadingDisplayDummy = new ImagePreloaderSmall();
            if(!_loc1_)
            {
               addr0062:
               addChild(this._preloadingDisplayDummy);
               if(_loc2_ || Boolean(this))
               {
                  invalidateSize();
               }
            }
            §§goto(addr0081);
         }
         addr0081:
      }
      
      public function onLoadComplete(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition(this.dynaMCSourceName) as Class;
         if(!_loc4_)
         {
            this._movieClip = new _loc3_();
            if(_loc5_ || Boolean(this))
            {
               this._movieClip.name = "movieClip";
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  if(this._preloadingDisplayDummy)
                  {
                     if(!_loc4_)
                     {
                        if(this._preloadingDisplayDummy.parent)
                        {
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              removeChild(this._preloadingDisplayDummy);
                              if(!_loc4_)
                              {
                                 addr00ae:
                                 this._preloadingDisplayDummy = null;
                                 if(!_loc4_)
                                 {
                                    addr00b9:
                                    _loc2_.removeEventListener(this._preloadDoneNotification,this.onLoadComplete);
                                 }
                                 do
                                 {
                                    if(this.numChildren)
                                    {
                                       continue;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    if(!this._createBitmapClip)
                                    {
                                       if(!_loc4_)
                                       {
                                          addChild(this._movieClip);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr015e:
                                             invalidateSize();
                                             if(!_loc4_)
                                             {
                                                dispatchEvent(new BriskMCDynaLibEvent(BriskMCDynaLibEvent.LOAD_COMPLETE));
                                             }
                                          }
                                       }
                                       §§goto(addr017d);
                                    }
                                    this._bitmapClip = new BitmapClip(this._movieClip,_loc3_.toString(),this._bitmapClipFramerate);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       break;
                                    }
                                    §§goto(addr015e);
                                 }
                                 while(removeChildAt(0), !(_loc4_ && Boolean(param1)));
                                 
                                 addChild(this._bitmapClip);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr015e);
                                 }
                                 addr017d:
                                 return;
                                 addr00e1:
                              }
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00ae);
                     }
                  }
               }
               §§goto(addr00e1);
            }
         }
         §§goto(addr00b9);
      }
      
      public function forceExternalCreation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.commitProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:FileRuntimeLoadServiceDynamic = null;
         var _loc2_:* = false;
         if(!_loc4_)
         {
            super.commitProperties();
            if(!_loc4_)
            {
               §§push(this._dynaMCSourceName);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(null);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(_loc3_)
                        {
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    addr0074:
                                    addr0073:
                                    §§push(this._dynaLibName == null);
                                    if(!_loc4_)
                                    {
                                       addr007b:
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             return;
                                          }
                                          §§goto(addr0103);
                                       }
                                       else
                                       {
                                          addr008a:
                                          §§push(this._dynaBMPchanged);
                                          if(!(_loc4_ && Boolean(_loc1_)))
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                var _temp_10:* = §§pop();
                                                addr00a3:
                                                §§push(_temp_10);
                                                if(!_temp_10)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop();
                                                      if(_loc3_)
                                                      {
                                                         §§push(this._dynalibChaged);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr00cb:
                                                            §§push(§§pop());
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               addr00d9:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     this._dynaBMPchanged = false;
                                                                     if(_loc3_)
                                                                     {
                                                                        addr00f9:
                                                                        this._dynalibChaged = false;
                                                                        if(_loc3_)
                                                                        {
                                                                           §§goto(addr0103);
                                                                        }
                                                                        §§goto(addr01de);
                                                                     }
                                                                  }
                                                                  addr0103:
                                                                  this._preloadDoneNotification = this.dynaLibName + this.dynaMCSourceName + "_complete";
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     _loc1_ = FileRuntimeLoadServiceDynamic.getInstance();
                                                                     if(_loc3_)
                                                                     {
                                                                        if(this._dynaSWFName != null)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(_loc1_.checkSWFArrayLoaded([this._dynaSWFName],this._preloadDoneNotification));
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc3_ || Boolean(this))
                                                                                 {
                                                                                    addr0162:
                                                                                    _loc2_ = §§pop();
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       addr0195:
                                                                                       addr0196:
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             _loc1_.addEventListener(this._preloadDoneNotification,this.onLoadComplete);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr01b0:
                                                                                                this.createDummy();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr01d1);
                                                                                          }
                                                                                          §§goto(addr01b0);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.onLoadComplete(null);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr018e:
                                                                                    _loc2_ = §§pop();
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr0195);
                                                                                    }
                                                                                 }
                                                                                 addr01d1:
                                                                                 addr01d5:
                                                                                 if(this._displayDummyChanged)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01de:
                                                                                       this._displayDummyChanged = false;
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          addr01f0:
                                                                                          invalidateSize();
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01f7);
                                                                              }
                                                                              §§goto(addr0162);
                                                                           }
                                                                           §§goto(addr0195);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc1_.checkSWFArrayLoaded([this._dynaLibName],this._preloadDoneNotification));
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§goto(addr018e);
                                                                              }
                                                                              §§goto(addr0196);
                                                                           }
                                                                        }
                                                                        §§goto(addr018e);
                                                                     }
                                                                     §§goto(addr01b0);
                                                                  }
                                                                  addr01f7:
                                                                  return;
                                                               }
                                                               §§goto(addr01d1);
                                                            }
                                                         }
                                                         §§goto(addr01d5);
                                                      }
                                                      §§goto(addr01f0);
                                                   }
                                                   §§goto(addr00cb);
                                                }
                                                §§goto(addr00d9);
                                             }
                                          }
                                          §§goto(addr00cb);
                                       }
                                    }
                                    §§goto(addr01d5);
                                 }
                                 §§goto(addr00f9);
                              }
                              §§goto(addr01d5);
                           }
                           §§goto(addr007b);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr01d5);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0073);
            }
            §§goto(addr008a);
         }
         §§goto(addr01de);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._movieClip = null;
         }
      }
      
      public function set preloadingDisplayDummy(param1:DisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 != this._preloadingDisplayDummy)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._preloadingDisplayDummy = param1;
                  if(_loc3_)
                  {
                     §§goto(addr004d);
                  }
                  §§goto(addr0057);
               }
               addr004d:
               this._displayDummyChanged = true;
               if(!_loc2_)
               {
                  addr0057:
                  invalidateProperties();
               }
               §§goto(addr005c);
            }
            addr005c:
            return;
         }
         §§goto(addr004d);
      }
      
      public function get movieClip() : MovieClip
      {
         return this._movieClip;
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(param1 != this._dynaLibName)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._dynalibChaged = true;
                  if(_loc2_)
                  {
                     this._dynaLibName = param1;
                     if(_loc2_ || _loc3_)
                     {
                        addr0058:
                        invalidateProperties();
                     }
                     §§goto(addr005d);
                  }
                  §§goto(addr0058);
               }
            }
            addr005d:
            return;
         }
         §§goto(addr0058);
      }
      
      public function get dynaMCSourceName() : String
      {
         return this._dynaMCSourceName;
      }
      
      public function set dynaMCSourceName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(param1 != this._dynaMCSourceName)
            {
               if(!_loc3_)
               {
                  addr0038:
                  this._dynaBMPchanged = true;
                  if(_loc2_ || Boolean(this))
                  {
                     this._dynaMCSourceName = param1;
                     if(!_loc3_)
                     {
                        §§goto(addr0060);
                     }
                     §§goto(addr0072);
                  }
               }
               addr0060:
               this._movieClip = null;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0072:
                  invalidateProperties();
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0038);
      }
      
      override protected function measure() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.measure();
            if(_loc2_)
            {
               if(this._preloadingDisplayDummy)
               {
                  if(_loc2_)
                  {
                     if(this.measuredWidth == 0)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr004d:
                           this.measuredWidth = this._preloadingDisplayDummy.width;
                           if(!_loc1_)
                           {
                              addr005c:
                              if(this.measuredHeight == 0)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.measuredHeight = this._preloadingDisplayDummy.height;
                                    if(_loc2_)
                                    {
                                       addr008c:
                                       invalidateDisplayList();
                                       if(!_loc1_)
                                       {
                                          §§goto(addr0098);
                                       }
                                       §§goto(addr00d5);
                                    }
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr008c);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr005c);
                  }
                  §§goto(addr00ec);
               }
               addr0098:
               if(this._movieClip)
               {
                  if(!_loc1_)
                  {
                     if(this.measuredWidth == 0)
                     {
                        if(!_loc1_)
                        {
                           addr00b4:
                           this.measuredWidth = this._movieClip.width;
                           if(!(_loc1_ && _loc1_))
                           {
                              addr00d5:
                              if(this.measuredHeight == 0)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr00ec:
                                    this.measuredHeight = this._movieClip.height;
                                 }
                              }
                              §§goto(addr00f6);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00f6);
                     }
                  }
                  §§goto(addr00d5);
               }
               addr00f6:
               return;
            }
         }
         §§goto(addr004d);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super.updateDisplayList(param1,param2);
            if(_loc4_ || Boolean(param2))
            {
               if(this._preloadingDisplayDummy)
               {
                  if(_loc4_)
                  {
                     addr0041:
                     var _temp_2:* = this._preloadingDisplayDummy;
                     var _loc3_:int;
                     this._preloadingDisplayDummy.scaleY = _loc3_ = 1;
                     _temp_2.scaleX = _loc3_;
                     if(!_loc5_)
                     {
                        this._preloadingDisplayDummy.x = 0.5 * (param1 - this._preloadingDisplayDummy.width);
                        if(!_loc5_)
                        {
                           this._preloadingDisplayDummy.y = 0.5 * (param2 - this._preloadingDisplayDummy.height);
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              addr009d:
                              if(this._movieClip)
                              {
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    this._movieClip.width = param1;
                                    if(!_loc5_)
                                    {
                                       this._movieClip.height = param2;
                                       if(_loc4_)
                                       {
                                          addr00cd:
                                          §§push(this._bitmapClip);
                                          if(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   addr00f6:
                                                   §§push(this._bitmapClip);
                                                   if(!(_loc5_ && Boolean(param2)))
                                                   {
                                                      §§push(param1);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().width = §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            addr011c:
                                                            this._bitmapClip.height = param2;
                                                            addr011b:
                                                            addr0117:
                                                         }
                                                         §§goto(addr011e);
                                                      }
                                                      §§goto(addr011c);
                                                   }
                                                   §§goto(addr011b);
                                                }
                                             }
                                             addr011e:
                                             return;
                                          }
                                          §§goto(addr011b);
                                       }
                                       §§goto(addr0117);
                                    }
                                    §§goto(addr00f6);
                                 }
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr0117);
               }
               §§goto(addr009d);
            }
            §§goto(addr0041);
         }
         §§goto(addr00f6);
      }
      
      public function get bitmapClip() : BitmapClip
      {
         return this._bitmapClip;
      }
      
      public function set createBitmapClip(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this._createBitmapClip = param1;
         }
      }
      
      public function get dynaSWFName() : String
      {
         return this._dynaSWFName;
      }
      
      public function set dynaSWFName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._dynaSWFName = param1;
         }
      }
      
      public function set bitmapClipFramerate(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1 != this._bitmapClipFramerate)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr004d:
                  this._dynalibChaged = true;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     this._bitmapClipFramerate = param1;
                     if(_loc3_ || _loc3_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004d);
      }
   }
}

