package net.bigpoint.cityrama.view.common.components
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class BriskImageDynaLib extends UIComponent
   {
      
      private var _preloadingDisplayDummy:DisplayObject = null;
      
      private var _displayDummyChanged:Boolean = false;
      
      private var _preloadDoneNotification:String;
      
      private var _bitmapSource:Bitmap;
      
      private var _maintainAspectRation:Boolean = false;
      
      private var _smoothing:Boolean = false;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpSourceName:String;
      
      private var _dynaLibChanged:Boolean;
      
      private var _dynaBmpChanged:Boolean;
      
      private var _aspectRatioIsDirty:Boolean = true;
      
      private var _bitmapSourceIsDirty:Boolean = false;
      
      private var _dynaSwfFilename:String;
      
      private var _hasListenerForInit:Boolean;
      
      private var _traceableBMPid:String;
      
      public function BriskImageDynaLib()
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
         if(_loc2_ || _loc1_)
         {
            if(this._preloadingDisplayDummy == null)
            {
               if(_loc2_)
               {
                  this._preloadingDisplayDummy = new ImagePreloaderSmall();
                  if(!(_loc1_ && _loc1_))
                  {
                     addr004e:
                     this._preloadingDisplayDummy.x = width / 2 - this._preloadingDisplayDummy.width / 2;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this._preloadingDisplayDummy.y = height / 2 - this._preloadingDisplayDummy.height / 2;
                        if(!_loc1_)
                        {
                           addChild(this._preloadingDisplayDummy);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr004e);
      }
      
      public function onLoadComplete(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(param1 == null);
            if(_loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        addr0055:
                        if(param1.type == this._preloadDoneNotification)
                        {
                           if(!_loc4_)
                           {
                              if(this._dynaBmpSourceName == this._traceableBMPid)
                              {
                                 if(_loc3_)
                                 {
                                    addr0070:
                                    this._smoothing = OptionsGlobalVariables.getInstance().highQuality;
                                    if(_loc3_ || _loc3_)
                                    {
                                       this._bitmapSource = _loc2_.getBitmap(this._dynaLibName,this._dynaBmpSourceName,this._smoothing);
                                       if(!_loc4_)
                                       {
                                          if(this._preloadingDisplayDummy)
                                          {
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                addr00bb:
                                                if(this._preloadingDisplayDummy.parent)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr00de:
                                                      removeChild(this._preloadingDisplayDummy);
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr00f6:
                                                         _loc2_.removeEventListener(this._preloadDoneNotification,this.onLoadComplete);
                                                      }
                                                      do
                                                      {
                                                         if(this.numChildren)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                         {
                                                            addChild(this._bitmapSource);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr014b:
                                                               this._bitmapSourceIsDirty = true;
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               invalidateSize();
                                                               if(_loc3_)
                                                               {
                                                                  invalidateDisplayList();
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                            }
                                                            dispatchEvent(new BriskImageDynaLibEvent(BriskImageDynaLibEvent.LOAD_COMPLETE));
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr014b);
                                                      }
                                                      while(removeChildAt(0), _loc3_ || _loc3_);
                                                      
                                                      addr01b2:
                                                      return;
                                                      addr011d:
                                                   }
                                                }
                                                §§goto(addr00f6);
                                             }
                                             §§goto(addr00de);
                                          }
                                          §§goto(addr011d);
                                       }
                                       §§goto(addr00bb);
                                    }
                                 }
                                 §§goto(addr00f6);
                              }
                              §§goto(addr0070);
                           }
                           §§goto(addr00bb);
                        }
                        else
                        {
                           _loc2_.removeEventListener(param1.type,this.onLoadComplete);
                        }
                        §§goto(addr01b2);
                     }
                     §§goto(addr0070);
                  }
               }
            }
            §§goto(addr0055);
         }
         §§goto(addr00f6);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = false;
         if(_loc4_ || _loc2_)
         {
            super.commitProperties();
         }
         var _loc1_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!_loc3_)
         {
            §§push(_loc1_.isReady);
            if(_loc4_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(this._dynaBmpChanged);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(_loc4_ || Boolean(this))
                           {
                              if(!§§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(this._dynaLibChanged);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_)
                                          {
                                             addr009d:
                                             if(§§pop())
                                             {
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§push(this._dynaBmpSourceName);
                                                   if(_loc4_)
                                                   {
                                                      var _temp_8:* = §§pop();
                                                      §§push(_temp_8);
                                                      §§push(_temp_8);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr00c9:
                                                               §§pop();
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(this._dynaLibName);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr00e1:
                                                                     §§push(§§pop());
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        var _temp_11:* = §§pop();
                                                                        §§push(_temp_11);
                                                                        §§push(_temp_11);
                                                                        if(!(_loc3_ && Boolean(_loc1_)))
                                                                        {
                                                                           addr00fe:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0107:
                                                                                 §§pop();
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(this._dynaBmpSourceName);
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop().length);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr0129:
                                                                                          var _temp_14:* = §§pop();
                                                                                          addr012a:
                                                                                          §§push(_temp_14);
                                                                                          if(_temp_14)
                                                                                          {
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(this._dynaLibName);
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop().length));
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr015d:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc4_ || Boolean(_loc1_))
                                                                                                            {
                                                                                                               §§push(this._dynaBmpSourceName);
                                                                                                               if(!(_loc3_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr018d:
                                                                                                                  addr0191:
                                                                                                                  if(§§pop() == this._traceableBMPid)
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr01a3);
                                                                                                                     }
                                                                                                                     §§goto(addr026c);
                                                                                                                  }
                                                                                                                  addr01a3:
                                                                                                                  this._dynaBmpChanged = false;
                                                                                                                  if(_loc4_ || Boolean(this))
                                                                                                                  {
                                                                                                                     addr01b6:
                                                                                                                     this._dynaLibChanged = false;
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        this._preloadDoneNotification = this._dynaLibName + this._dynaBmpSourceName + "_complete";
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr01df:
                                                                                                                           §§push(false);
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              addr01e6:
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr01f1:
                                                                                                                                 if(this._dynaSwfFilename != null)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || Boolean(_loc1_))
                                                                                                                                    {
                                                                                                                                       addr0204:
                                                                                                                                       §§push(_loc1_.checkSWFArrayLoaded([this._dynaSwfFilename],this._preloadDoneNotification));
                                                                                                                                       if(!(_loc3_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr0220:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc4_ || Boolean(_loc1_))
                                                                                                                                          {
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             if(_loc4_ || Boolean(this))
                                                                                                                                             {
                                                                                                                                                addr026c:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr0272:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr0284:
                                                                                                                                                         _loc1_.addEventListener(this._preloadDoneNotification,this.onLoadComplete);
                                                                                                                                                         if(_loc4_ || Boolean(_loc1_))
                                                                                                                                                         {
                                                                                                                                                            addr029e:
                                                                                                                                                            this.createDummy();
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr02a9:
                                                                                                                                                               this._displayDummyChanged = true;
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr0306:
                                                                                                                                                                  invalidateDisplayList();
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr030d);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0306);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      this.onLoadComplete(null);
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0306);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr030d);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr02d7:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr02e1);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0306);
                                                                                                                                             }
                                                                                                                                             §§goto(addr029e);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0266:
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr026c);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0306);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02d7);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0284);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc1_.checkSWFArrayLoaded([this._dynaLibName],this._preloadDoneNotification));
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       addr0257:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc4_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0266);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0272);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0266);
                                                                                                                              }
                                                                                                                              §§goto(addr026c);
                                                                                                                           }
                                                                                                                           §§goto(addr0272);
                                                                                                                        }
                                                                                                                        §§goto(addr0306);
                                                                                                                     }
                                                                                                                     §§goto(addr02a9);
                                                                                                                  }
                                                                                                                  §§goto(addr02e1);
                                                                                                               }
                                                                                                               §§goto(addr01f1);
                                                                                                            }
                                                                                                            §§goto(addr02e1);
                                                                                                         }
                                                                                                         §§goto(addr0306);
                                                                                                      }
                                                                                                      §§goto(addr01e6);
                                                                                                   }
                                                                                                   §§goto(addr018d);
                                                                                                }
                                                                                                §§goto(addr0204);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr015d);
                                                                                       }
                                                                                       §§goto(addr0257);
                                                                                    }
                                                                                    §§goto(addr018d);
                                                                                 }
                                                                                 §§goto(addr0284);
                                                                              }
                                                                              §§goto(addr0220);
                                                                           }
                                                                           §§goto(addr0129);
                                                                        }
                                                                        §§goto(addr012a);
                                                                     }
                                                                     §§goto(addr01e6);
                                                                  }
                                                                  §§goto(addr01f1);
                                                               }
                                                               §§goto(addr01a3);
                                                            }
                                                            §§goto(addr018d);
                                                         }
                                                         §§goto(addr00e1);
                                                      }
                                                      §§goto(addr0191);
                                                   }
                                                   §§goto(addr00c9);
                                                }
                                                §§goto(addr01df);
                                             }
                                             §§goto(addr0306);
                                          }
                                          §§goto(addr0129);
                                       }
                                       §§goto(addr0107);
                                    }
                                    §§goto(addr01b6);
                                 }
                                 §§goto(addr0272);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr00fe);
                        }
                        §§goto(addr0272);
                     }
                     §§goto(addr0220);
                  }
                  addr02e1:
                  _loc1_.addEventListener(Event.INIT,this.handleFRLSInit);
                  if(!_loc3_)
                  {
                     this._hasListenerForInit = true;
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr0306);
                     }
                  }
                  §§goto(addr030d);
               }
               else
               {
                  §§push(this._hasListenerForInit);
               }
               §§goto(addr02d7);
            }
            §§goto(addr0220);
         }
         addr030d:
      }
      
      private function handleFRLSInit(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.removeEventListener(Event.INIT,this.handleFRLSInit);
            if(!_loc3_)
            {
               this._dynaBmpChanged = true;
               if(_loc4_ || Boolean(param1))
               {
                  addr006c:
                  this._dynaLibChanged = true;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr007e:
                     invalidateProperties();
                  }
               }
               return;
            }
            §§goto(addr006c);
         }
         §§goto(addr007e);
      }
      
      public function set preloadingDisplayDummy(param1:DisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1 != this._preloadingDisplayDummy)
            {
               if(_loc3_)
               {
                  addr0034:
                  this._preloadingDisplayDummy = param1;
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr0046);
                  }
                  §§goto(addr0051);
               }
               addr0046:
               this._displayDummyChanged = true;
               if(_loc3_)
               {
                  addr0051:
                  invalidateProperties();
               }
               §§goto(addr0056);
            }
            addr0056:
            return;
         }
         §§goto(addr0034);
      }
      
      public function set briskDynaVo(param1:BriskDynaVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.dynaSWFFileName = param1.dynaSwfName;
            if(_loc2_ || Boolean(param1))
            {
               this.dynaLibName = param1.dynaLibName;
               if(!_loc3_)
               {
                  addr0046:
                  this.dynaBmpSourceName = param1.dynaBmpName;
               }
               return;
            }
         }
         §§goto(addr0046);
      }
      
      public function set dynaSWFFileName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._dynaSwfFilename = param1;
         }
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
               if(_loc2_ || Boolean(param1))
               {
                  this._dynaLibChanged = true;
                  if(!_loc3_)
                  {
                     this._dynaLibName = param1;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0055:
                        invalidateProperties();
                     }
                     §§goto(addr005a);
                  }
               }
               §§goto(addr0055);
            }
            addr005a:
            return;
         }
         §§goto(addr0055);
      }
      
      public function get dynaBmpSourceName() : String
      {
         return this._dynaBmpSourceName;
      }
      
      public function set dynaBmpSourceName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != this._dynaBmpSourceName)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._dynaBmpChanged = true;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0058:
                     this._dynaBmpSourceName = param1;
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        addr006a:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0058);
            }
            addr006f:
            return;
         }
         §§goto(addr006a);
      }
      
      public function get maintainAspectRation() : Boolean
      {
         return this._maintainAspectRation;
      }
      
      public function set maintainAspectRation(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            if(this._maintainAspectRation != param1)
            {
               if(_loc3_ || param1)
               {
                  this._maintainAspectRation = param1;
                  if(_loc3_ || _loc2_)
                  {
                     this._aspectRatioIsDirty = true;
                     if(!(_loc2_ && param1))
                     {
                        addr0074:
                        invalidateDisplayList();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0074);
      }
      
      public function get smoothing() : Boolean
      {
         return this._smoothing;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._smoothing = param1;
         }
      }
      
      public function get traceableBMPid() : String
      {
         return this._traceableBMPid;
      }
      
      public function set traceableBMPid(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._traceableBMPid = param1;
         }
      }
      
      override protected function measure() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.measure();
            if(!_loc1_)
            {
               if(this._bitmapSource)
               {
                  if(_loc2_ || _loc1_)
                  {
                     if(this.measuredWidth == 0)
                     {
                        if(_loc2_)
                        {
                           this.measuredWidth = this._bitmapSource.width;
                           if(_loc2_ || Boolean(this))
                           {
                              addr0070:
                              if(this.measuredHeight == 0)
                              {
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr0087:
                                    this.measuredHeight = this._bitmapSource.height;
                                 }
                              }
                           }
                           §§goto(addr0091);
                        }
                        §§goto(addr0087);
                     }
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0091);
            }
            §§goto(addr0070);
         }
         addr0091:
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super.updateDisplayList(param1,param2);
            if(_loc3_ || Boolean(param2))
            {
               if(this._bitmapSource)
               {
                  if(_loc3_)
                  {
                     if(this._maintainAspectRation)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this._bitmapSource.width = param1;
                           if(_loc3_ || Boolean(param2))
                           {
                              addr006b:
                              this._bitmapSource.scaleY = this._bitmapSource.scaleX;
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr0094:
                                 if(this._bitmapSource.height > param2)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00a4:
                                       this._bitmapSource.height = param2;
                                       if(!_loc4_)
                                       {
                                          this._bitmapSource.scaleX = this._bitmapSource.scaleY;
                                          if(_loc3_)
                                          {
                                             addr00c4:
                                             this._bitmapSource.x = 0.5 * (param1 - this._bitmapSource.width);
                                             if(!_loc4_)
                                             {
                                                addr00db:
                                                this._bitmapSource.y = 0.5 * (param2 - this._bitmapSource.height);
                                                if(!_loc4_)
                                                {
                                                   addr012a:
                                                   dispatchEvent(new BriskImageDynaLibEvent(BriskImageDynaLibEvent.SIZE_CHANGED,false,true));
                                                }
                                             }
                                             §§goto(addr013e);
                                          }
                                          §§goto(addr00db);
                                       }
                                       §§goto(addr012a);
                                    }
                                    else
                                    {
                                       addr0115:
                                       this._bitmapSource.height = param2;
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr012a);
                                       }
                                    }
                                    §§goto(addr013e);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr012a);
                        }
                        §§goto(addr0094);
                     }
                     else
                     {
                        this._bitmapSource.width = param1;
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr0115);
                        }
                     }
                     §§goto(addr013e);
                  }
                  §§goto(addr00c4);
               }
               addr013e:
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr0094);
      }
   }
}

