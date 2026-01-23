package net.bigpoint.services.fileRuntimeLoadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.CSSLoader;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import flash.events.EventDispatcher;
   import mx.logging.LogEventLevel;
   import net.bigpoint.util.CityramaLogger;
   
   public class FileRuntimeImageLoader extends EventDispatcher
   {
      
      public var uniqueInstance:Boolean;
      
      public var service:FileRuntimeLoadService;
      
      private var _instance:*;
      
      private var _imageLoader:ImageLoader;
      
      private var _hasInit:Boolean = false;
      
      private var _hasComplete:Boolean = false;
      
      private var resFileName:String;
      
      public function FileRuntimeImageLoader(param1:String, param2:Boolean, param3:FileRuntimeLoadService)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            super();
            if(!_loc5_)
            {
               this.resFileName = param1;
               if(_loc4_ || param2)
               {
                  this.uniqueInstance = param2;
                  if(_loc4_ || Boolean(param3))
                  {
                     addr005f:
                     this.service = param3;
                     if(_loc4_ || Boolean(this))
                     {
                        addr0072:
                        LoaderMax.activate([ImageLoader]);
                        if(_loc4_ || param2)
                        {
                           LoaderMax.activate([CSSLoader]);
                           addr008c:
                           if(!(_loc5_ && Boolean(this)))
                           {
                              LoaderMax.activate([SWFLoader]);
                              if(_loc4_ || param2)
                              {
                                 addr00cd:
                                 LoaderMax.activate([XMLLoader]);
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr008c);
                  }
               }
               addr00d9:
               return;
            }
            §§goto(addr0072);
         }
         §§goto(addr005f);
      }
      
      public function load() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:FileRuntimeLoaderEvent = null;
         var _loc2_:FileRuntimeLoaderEvent = null;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            this._imageLoader = this.service.getImageLoader(this.resFileName);
            if(_loc4_ || Boolean(this))
            {
               §§push(this._imageLoader);
               if(_loc4_ || Boolean(_loc1_))
               {
                  if(§§pop() == null)
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        _loc1_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.ERROR);
                        if(_loc4_)
                        {
                           §§push(_loc1_);
                           §§push("Der SWF-Loader mit dem Namen ");
                           if(!_loc3_)
                           {
                              §§push(§§pop() + this.resFileName);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() + " wurde nicht gefunden.");
                              }
                           }
                           §§pop().text = §§pop();
                           if(_loc4_ || Boolean(this))
                           {
                              dispatchEvent(_loc1_);
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(this._imageLoader);
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        if(§§pop().status == LoaderStatus.COMPLETED)
                        {
                           if(!_loc3_)
                           {
                              _loc2_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
                              if(_loc4_)
                              {
                                 this.generateInstance();
                                 if(_loc4_)
                                 {
                                    _loc2_.instance = this._instance;
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr011e:
                                       dispatchEvent(_loc2_);
                                    }
                                    §§goto(addr03c7);
                                 }
                              }
                              §§goto(addr011e);
                           }
                           else
                           {
                              addr0176:
                              §§push(this._imageLoader);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§push(LoaderEvent.COMPLETE);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    §§pop().addEventListener(§§pop(),this.onComplete);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(this._imageLoader);
                                       if(!_loc3_)
                                       {
                                          addr01b9:
                                          §§push(LoaderEvent.CANCEL);
                                          if(_loc4_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.onCancel);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§push(this._imageLoader);
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§push(LoaderEvent.FAIL);
                                                   if(_loc4_ || Boolean(_loc2_))
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.onFail);
                                                      if(_loc4_)
                                                      {
                                                         §§push(this._imageLoader);
                                                         if(_loc4_)
                                                         {
                                                            §§push(LoaderEvent.ERROR);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.onError);
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§push(this._imageLoader);
                                                                  if(!(_loc3_ && Boolean(_loc1_)))
                                                                  {
                                                                     §§push(LoaderEvent.PROGRESS);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0267:
                                                                        §§pop().addEventListener(§§pop(),this.onProgress);
                                                                        if(_loc4_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr02ed:
                                                                        §§pop().addEventListener(§§pop(),this.onComplete);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr02f9:
                                                                           §§push(this._imageLoader);
                                                                           if(_loc4_ || Boolean(_loc1_))
                                                                           {
                                                                              §§push(LoaderEvent.CANCEL);
                                                                              if(!(_loc3_ && Boolean(_loc2_)))
                                                                              {
                                                                                 addr031e:
                                                                                 §§pop().addEventListener(§§pop(),this.onCancel);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr032b:
                                                                                    §§push(this._imageLoader);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0335:
                                                                                       §§push(LoaderEvent.FAIL);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr0348:
                                                                                          §§pop().addEventListener(§§pop(),this.onFail);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr0354:
                                                                                             §§push(this._imageLoader);
                                                                                             if(_loc4_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr0366:
                                                                                                §§push(LoaderEvent.ERROR);
                                                                                                if(_loc4_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   addr037a:
                                                                                                   §§pop().addEventListener(§§pop(),this.onError);
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this._imageLoader);
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr03b3);
                                                                                                      }
                                                                                                      §§goto(addr03c3);
                                                                                                   }
                                                                                                   §§goto(addr03bf);
                                                                                                }
                                                                                                addr03b3:
                                                                                                §§pop().addEventListener(LoaderEvent.PROGRESS,this.onProgress);
                                                                                                §§goto(addr03ad);
                                                                                             }
                                                                                             addr03ad:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr03c3:
                                                                                                this._imageLoader.load();
                                                                                                addr03bf:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr03c7);
                                                                                       }
                                                                                       §§goto(addr03b3);
                                                                                    }
                                                                                    §§goto(addr03ad);
                                                                                 }
                                                                                 §§goto(addr0354);
                                                                              }
                                                                              §§goto(addr037a);
                                                                           }
                                                                           §§goto(addr0366);
                                                                        }
                                                                        §§goto(addr032b);
                                                                     }
                                                                     §§goto(addr03c7);
                                                                  }
                                                                  §§goto(addr0335);
                                                               }
                                                               §§goto(addr032b);
                                                            }
                                                            else
                                                            {
                                                               addr02b9:
                                                               §§pop().addEventListener(§§pop(),this.onInit);
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  addr02cf:
                                                                  §§push(this._imageLoader);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr02d9:
                                                                     §§push(LoaderEvent.COMPLETE);
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§goto(addr02ed);
                                                                     }
                                                                     §§goto(addr031e);
                                                                  }
                                                                  §§goto(addr0335);
                                                               }
                                                            }
                                                            §§goto(addr0354);
                                                         }
                                                         §§goto(addr03c3);
                                                      }
                                                      §§goto(addr02f9);
                                                   }
                                                   §§goto(addr0267);
                                                }
                                                else
                                                {
                                                   addr02ad:
                                                   §§push(LoaderEvent.INIT);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr02b9);
                                                   }
                                                }
                                                §§goto(addr03b3);
                                             }
                                             §§goto(addr03c7);
                                          }
                                          §§goto(addr0348);
                                       }
                                       §§goto(addr02d9);
                                    }
                                    §§goto(addr03c7);
                                 }
                                 §§goto(addr037a);
                              }
                              §§goto(addr0366);
                           }
                        }
                        else
                        {
                           §§push(this._imageLoader);
                           if(!_loc3_)
                           {
                              if(§§pop().status == LoaderStatus.LOADING)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§push(this._imageLoader);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr015c:
                                       §§push(LoaderEvent.INIT);
                                       if(_loc4_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.onInit);
                                          if(_loc4_)
                                          {
                                             §§goto(addr0176);
                                          }
                                          §§goto(addr032b);
                                       }
                                       §§goto(addr037a);
                                    }
                                    §§goto(addr01b9);
                                 }
                                 §§goto(addr0354);
                              }
                              else
                              {
                                 §§push(this._imageLoader);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(§§pop().status == LoaderStatus.READY)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this._imageLoader);
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§goto(addr02ad);
                                          }
                                          §§goto(addr03c3);
                                       }
                                       §§goto(addr02cf);
                                    }
                                    §§goto(addr03c7);
                                 }
                              }
                              §§goto(addr03c3);
                           }
                        }
                        §§goto(addr02d9);
                     }
                     §§goto(addr03ad);
                  }
                  addr03c7:
                  return;
               }
               §§goto(addr015c);
            }
            §§goto(addr02f9);
         }
         §§goto(addr03bf);
      }
      
      private function onProgress(param1:LoaderEvent) : void
      {
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
         if(!(_loc3_ && Boolean(param1)))
         {
            _loc2_.text = param1.text;
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(CityramaLogger.logger);
               §§push(LogEventLevel.WARN);
               §§push("FileRuntimeImageLoader:onError(), loader for Object ");
               if(!_loc3_)
               {
                  §§push(§§pop() + param1.text);
               }
               §§pop().log(§§pop(),§§pop());
               if(!_loc3_)
               {
                  addr007f:
                  dispatchEvent(_loc2_);
               }
            }
            return;
         }
         §§goto(addr007f);
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.FAIL);
         if(_loc4_ || Boolean(this))
         {
            §§push(CityramaLogger.logger);
            §§push(LogEventLevel.WARN);
            §§push("FileRuntimeImageLoader:onComplete(), loader for Object ");
            if(_loc4_)
            {
               §§push(§§pop() + param1.text);
            }
            §§pop().log(§§pop(),§§pop());
            if(_loc4_)
            {
               _loc2_.text = param1.text;
               if(_loc4_)
               {
                  dispatchEvent(_loc2_);
               }
            }
         }
      }
      
      private function onCancel(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.CANCEL);
         if(_loc4_)
         {
            _loc2_.text = param1.text;
            if(_loc4_)
            {
               addr0041:
               §§push(CityramaLogger.logger);
               §§push(LogEventLevel.WARN);
               §§push("FileRuntimeImageLoader:onCancel(), loader for Object ");
               if(_loc4_ || Boolean(this))
               {
                  §§push(§§pop() + param1.text);
               }
               §§pop().log(§§pop(),§§pop());
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  dispatchEvent(_loc2_);
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      private function onFullComplete(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
         if(!(_loc3_ && Boolean(param1)))
         {
            this.generateInstance();
            if(_loc4_ || Boolean(_loc2_))
            {
               addr0060:
               _loc2_.instance = this._instance;
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  _loc2_.text = this.resFileName;
                  if(!_loc3_)
                  {
                     dispatchEvent(_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr0060);
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._hasComplete = true;
            if(!_loc2_)
            {
               §§push(this._hasComplete);
               if(_loc3_ || Boolean(param1))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr004e);
                        }
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0077);
               }
               addr004e:
               §§pop();
               if(!(_loc2_ && _loc3_))
               {
                  addr0078:
                  addr0066:
                  §§push(this._hasInit);
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     addr0077:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0089:
                        this.onFullComplete(param1);
                     }
                  }
               }
               return;
            }
            §§goto(addr0089);
         }
         §§goto(addr0066);
      }
      
      private function onInit(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._hasInit = true;
            if(_loc2_ || Boolean(this))
            {
               §§push(this._hasComplete);
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || _loc3_)
                  {
                     addr0052:
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§pop();
                           if(_loc2_ || Boolean(param1))
                           {
                              addr0087:
                              addr007d:
                              §§push(this._hasInit);
                              if(!_loc3_)
                              {
                                 addr0086:
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    this.onFullComplete(param1);
                                 }
                              }
                           }
                           §§goto(addr009f);
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0052);
            }
            §§goto(addr007d);
         }
         addr009f:
      }
      
      private function generateInstance() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this.uniqueInstance);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  addr003d:
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§pop();
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr008c:
                           §§push(this.service.isImageInstanceAviable(this.resFileName));
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(!_loc1_)
                              {
                                 this._instance = this.service.getUniqueImageInstance(this.resFileName);
                                 if(_loc1_ && _loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              this._instance = this._imageLoader.content;
                           }
                        }
                        §§goto(addr00c2);
                     }
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr003d);
         }
         addr00c2:
      }
      
      public function getInstance() : *
      {
         return this._instance;
      }
      
      public function dispose() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._imageLoader);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§push(this._imageLoader);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(LoaderEvent.COMPLETE);
                        if(_loc2_ || _loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.onComplete);
                           if(_loc2_ || _loc1_)
                           {
                              addr0069:
                              §§push(this._imageLoader);
                              if(_loc2_)
                              {
                                 §§push(LoaderEvent.CANCEL);
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.onCancel);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§push(this._imageLoader);
                                       if(_loc2_)
                                       {
                                          §§push(LoaderEvent.FAIL);
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             §§goto(addr00bf);
                                          }
                                          §§goto(addr00df);
                                       }
                                       §§goto(addr00ef);
                                    }
                                    §§goto(addr010b);
                                 }
                                 §§goto(addr00f5);
                              }
                              §§goto(addr00ef);
                           }
                           §§goto(addr00eb);
                        }
                        addr00bf:
                        §§pop().removeEventListener(§§pop(),this.onFail);
                        if(_loc2_)
                        {
                           §§push(this._imageLoader);
                           if(!_loc1_)
                           {
                              addr00d4:
                              §§push(LoaderEvent.ERROR);
                              if(_loc2_)
                              {
                                 addr00df:
                                 §§pop().removeEventListener(§§pop(),this.onError);
                                 if(!_loc1_)
                                 {
                                    this._imageLoader.removeEventListener(LoaderEvent.PROGRESS,this.onProgress);
                                    addr00f5:
                                    addr00ef:
                                    addr00eb:
                                    if(_loc2_)
                                    {
                                       addr010b:
                                       this._imageLoader = null;
                                       if(_loc2_)
                                       {
                                          addr0115:
                                          if(this._instance != null)
                                          {
                                             if(!(_loc1_ && Boolean(this)))
                                             {
                                                addr012b:
                                                this._instance = null;
                                             }
                                          }
                                          §§goto(addr0130);
                                       }
                                       §§goto(addr012b);
                                    }
                                 }
                                 §§goto(addr0130);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr00ef);
                        }
                        addr0130:
                        return;
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr010b);
               }
               §§goto(addr0115);
            }
            §§goto(addr00ef);
         }
         §§goto(addr0069);
      }
   }
}

