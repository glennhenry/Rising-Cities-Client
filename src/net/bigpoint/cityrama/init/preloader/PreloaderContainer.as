package net.bigpoint.cityrama.init.preloader
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.utils.getTimer;
   import mx.events.RSLEvent;
   
   public class PreloaderContainer extends AbstractPreloader
   {
      
      private var _displayStartCount:uint = 0;
      
      private var _initProgressCount:int = 0;
      
      private var _downloadComplete:Boolean = false;
      
      private var _showingDisplay:Boolean = false;
      
      private var _startTime:int;
      
      private var rslBaseText:String = "Loading app: ";
      
      private var numberRslTotal:Number = 1;
      
      private var numberRslCurrent:Number = 1;
      
      public var preloaderDisplay:PreloaderView;
      
      public function PreloaderContainer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function initCompleteHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      override protected function progressHandler(param1:ProgressEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         if(_loc4_)
         {
            super.progressHandler(param1);
            if(_loc4_ || Boolean(this))
            {
               §§push(this.preloaderDisplay);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        _loc2_ = Math.round(param1.bytesLoaded / param1.bytesTotal * 100);
                        addr0056:
                        if(_loc4_ || _loc3_)
                        {
                           addr0085:
                           this.preloaderDisplay.setProgress(_loc2_);
                           addr0082:
                           if(_loc3_ && Boolean(this))
                           {
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr0082);
                  }
                  else
                  {
                     this.show();
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0085);
            }
            §§goto(addr0056);
         }
         addr00a0:
      }
      
      override protected function rslProgressHandler(param1:RSLEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Number = NaN;
         if(!_loc4_)
         {
            §§push(param1.rslIndex);
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  if(_temp_1)
                  {
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        addr003e:
                        §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0051);
                        }
                        §§goto(addr0115);
                     }
                  }
                  addr0051:
                  §§goto(addr0050);
               }
               §§goto(addr003e);
            }
            addr0050:
            if(Boolean(param1.rslTotal))
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr0063:
                  this.numberRslTotal = param1.rslTotal;
                  if(!_loc4_)
                  {
                     this.numberRslCurrent = param1.rslIndex;
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this);
                        §§push("loading RSLs (");
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(param1.rslIndex);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(" of ");
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       addr00d0:
                                       addr00d4:
                                       §§push(§§pop() + param1.rslTotal);
                                       if(!_loc4_)
                                       {
                                          addr00db:
                                          addr00de:
                                          §§push(§§pop() + ") ");
                                       }
                                       §§pop().rslBaseText = §§pop();
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          _loc2_ = Math.round(param1.bytesLoaded / param1.bytesTotal * 100);
                                          if(!_loc4_)
                                          {
                                             addr0115:
                                             this.preloaderDisplay.setProgress(_loc2_);
                                          }
                                          §§goto(addr011d);
                                       }
                                       §§goto(addr0115);
                                    }
                                    §§goto(addr00db);
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr011d);
               }
               §§goto(addr0115);
            }
            addr011d:
            return;
         }
         §§goto(addr0063);
      }
      
      override protected function setDownloadProgress(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            if(!this.preloaderDisplay)
            {
            }
         }
      }
      
      override protected function setInitProgress(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.preloaderDisplay);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0041:
                     this.preloaderDisplay.setProgress(Math.round(param1 / param2 * 100));
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr0041);
         }
         addr0051:
      }
      
      override protected function initProgressHandler(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:int = getTimer() - this._startTime;
         if(!_loc6_)
         {
            var _loc3_:* = this;
            §§push(_loc3_._initProgressCount);
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               _loc3_._initProgressCount = _loc4_;
            }
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(this._initProgressCount);
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(1);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(PreloaderProgressSingleton.instance);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              §§push(PreloaderProgressSingleton.STATE_POINTER_SWFLOADING_PROGRESS);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 §§pop().setProgress(§§pop());
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr0155);
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00d9);
                        }
                     }
                     addr00c3:
                     §§goto(addr00c9);
                  }
                  addr00c9:
                  §§goto(addr00c7);
               }
               addr00c7:
               if(this._initProgressCount == 8)
               {
                  if(!_loc6_)
                  {
                     addr00df:
                     PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SWFLOADING_COMPLETE);
                     addr00d9:
                     if(_loc5_)
                     {
                        §§goto(addr00e9);
                     }
                     §§goto(addr01f5);
                  }
                  §§goto(addr01b0);
               }
               addr00e9:
               §§push(this._showingDisplay);
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(!§§pop());
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     var _temp_11:* = §§pop();
                     §§push(_temp_11);
                     if(_temp_11)
                     {
                        if(_loc5_ || Boolean(this))
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(showDisplayForInit(_loc2_,this._initProgressCount));
                              if(!_loc6_)
                              {
                                 addr0143:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr0155:
                                       this._displayStartCount = this._initProgressCount;
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          this.show();
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             addr017e:
                                             this.setDownloadProgress(100,100);
                                             if(!_loc6_)
                                             {
                                                addr018c:
                                                §§push(this._showingDisplay);
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§goto(addr019e);
                                                }
                                                §§goto(addr01dd);
                                             }
                                             §§goto(addr01d9);
                                          }
                                       }
                                       §§goto(addr01b0);
                                    }
                                    §§goto(addr01d9);
                                 }
                                 §§goto(addr018c);
                              }
                              §§goto(addr019e);
                           }
                           §§goto(addr017e);
                        }
                        §§goto(addr01dd);
                     }
                     §§goto(addr0143);
                  }
               }
               addr019e:
               if(§§pop())
               {
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     addr01b0:
                     this.preloaderDisplay.setProgressCount(this._initProgressCount,initProgressTotal);
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        addr01dd:
                        addr01d9:
                        if(!this._downloadComplete)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr01e7);
                           }
                        }
                     }
                     §§goto(addr01f5);
                  }
                  addr01e7:
                  this.setDownloadProgress(100,100);
                  if(_loc5_)
                  {
                     addr01f5:
                     this.setInitProgress(this._initProgressCount,initProgressTotal);
                  }
                  §§goto(addr0201);
               }
               addr0201:
               return;
            }
         }
         §§goto(addr01b0);
      }
      
      private function show() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(stageWidth == 0);
            if(_loc3_ || _loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        addr004d:
                        if(stageHeight == 0)
                        {
                           try
                           {
                              §§goto(addr0051);
                           }
                           catch(e:Error)
                           {
                              if(!_loc4_)
                              {
                                 stageWidth = loaderInfo.width;
                                 if(!_loc4_)
                                 {
                                    stageHeight = loaderInfo.height;
                                 }
                              }
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00fd);
                     }
                     §§goto(addr0051);
                  }
               }
            }
            §§goto(addr004d);
         }
         addr0051:
         stageWidth = stage.stageWidth;
         if(_loc3_)
         {
            stageHeight = stage.stageHeight;
            if(!(_loc4_ && _loc2_))
            {
               addr00b0:
               §§push(stageWidth == 0);
               if(_loc3_ || _loc1_)
               {
                  var _temp_6:* = §§pop();
                  §§push(_temp_6);
                  if(_temp_6)
                  {
                     if(!_loc4_)
                     {
                        addr00cd:
                        §§pop();
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr00ed);
                        }
                        §§goto(addr00fd);
                     }
                  }
                  addr00ed:
                  §§goto(addr00e8);
               }
               §§goto(addr00cd);
            }
            §§goto(addr0107);
         }
         addr00e8:
         if(stageHeight == 0)
         {
            if(!_loc4_)
            {
               return;
            }
         }
         else
         {
            addr00fd:
            this._showingDisplay = true;
            if(_loc3_)
            {
               addr0107:
               createChildren();
            }
         }
      }
   }
}

