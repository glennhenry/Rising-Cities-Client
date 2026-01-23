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
   
   public class FileRuntimeClassLoader extends EventDispatcher
   {
      
      public var resFileName:String;
      
      public var classname:String;
      
      public var uniqueInstance:Boolean;
      
      public var service:FileRuntimeLoadService;
      
      private var _instance:*;
      
      private var _swfLoader:SWFLoader;
      
      private var _hasInit:Boolean = false;
      
      private var _hasComplete:Boolean = false;
      
      public function FileRuntimeClassLoader(param1:String, param2:String, param3:Boolean, param4:FileRuntimeLoadService)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(param1)))
         {
            super();
            if(_loc5_ || Boolean(param2))
            {
               this.resFileName = param1;
               if(_loc5_ || Boolean(param1))
               {
                  this.classname = param2;
                  if(_loc5_ || Boolean(param2))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00c6);
            }
            addr0065:
            this.uniqueInstance = param3;
            if(!_loc6_)
            {
               addr0070:
               this.service = param4;
               if(_loc5_)
               {
                  LoaderMax.activate([ImageLoader]);
                  if(_loc5_)
                  {
                     §§goto(addr009a);
                  }
                  §§goto(addr00ac);
               }
               §§goto(addr00c6);
            }
            addr009a:
            LoaderMax.activate([CSSLoader]);
            if(_loc5_)
            {
               addr00ac:
               LoaderMax.activate([SWFLoader]);
               if(_loc5_ || Boolean(param1))
               {
                  addr00c6:
                  LoaderMax.activate([XMLLoader]);
               }
            }
            return;
         }
         §§goto(addr00c6);
      }
      
      public function load() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:FileRuntimeLoaderEvent = null;
         var _loc2_:FileRuntimeLoaderEvent = null;
         if(!_loc3_)
         {
            this._swfLoader = this.service.getLoader(this.resFileName);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(this._swfLoader);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(§§pop() == null)
                  {
                     if(!_loc3_)
                     {
                        _loc1_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.ERROR);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(_loc1_);
                           §§push("Der SWF-Loader mit dem Namen ");
                           if(_loc4_)
                           {
                              §§push(§§pop() + this.resFileName);
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§push(§§pop() + " wurde nicht gefunden.");
                              }
                           }
                           §§pop().text = §§pop();
                           if(!_loc3_)
                           {
                              addr00a1:
                              dispatchEvent(_loc1_);
                           }
                           §§goto(addr03a6);
                        }
                        §§goto(addr00a1);
                     }
                     else
                     {
                        addr037b:
                        §§push(this._swfLoader);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0392:
                           §§pop().addEventListener(LoaderEvent.PROGRESS,this.onProgress);
                           addr038c:
                           if(!_loc3_)
                           {
                              addr03a2:
                              this._swfLoader.load();
                              addr039e:
                           }
                           §§goto(addr03a6);
                        }
                        §§goto(addr03a2);
                     }
                  }
                  else
                  {
                     §§push(this._swfLoader);
                     if(!_loc3_)
                     {
                        if(§§pop().status == LoaderStatus.COMPLETED)
                        {
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc2_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
                              if(_loc4_ || Boolean(_loc1_))
                              {
                                 this.generateInstance();
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    _loc2_.instance = this._instance;
                                    if(!_loc3_)
                                    {
                                       dispatchEvent(_loc2_);
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(this._swfLoader);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(§§pop().status == LoaderStatus.LOADING)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr0142:
                                    §§push(this._swfLoader);
                                    if(_loc4_)
                                    {
                                       §§push(LoaderEvent.INIT);
                                       if(!_loc3_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.onInit);
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§push(this._swfLoader);
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                addr017e:
                                                §§push(LoaderEvent.COMPLETE);
                                                if(!_loc3_)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.onComplete);
                                                   if(!(_loc3_ && Boolean(_loc1_)))
                                                   {
                                                      §§push(this._swfLoader);
                                                      if(!_loc3_)
                                                      {
                                                         addr01a6:
                                                         §§push(LoaderEvent.CANCEL);
                                                         if(!_loc3_)
                                                         {
                                                            §§pop().addEventListener(§§pop(),this.onCancel);
                                                            if(!_loc3_)
                                                            {
                                                               addr01bd:
                                                               §§push(this._swfLoader);
                                                               if(_loc4_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(LoaderEvent.FAIL);
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     §§pop().addEventListener(§§pop(),this.onFail);
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        addr0201:
                                                                        §§push(this._swfLoader);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr020a:
                                                                           §§push(LoaderEvent.ERROR);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr0215);
                                                                           }
                                                                           §§goto(addr0302);
                                                                        }
                                                                        §§goto(addr0349);
                                                                     }
                                                                     §§goto(addr0316);
                                                                  }
                                                                  §§goto(addr0302);
                                                               }
                                                               §§goto(addr02ef);
                                                            }
                                                            else
                                                            {
                                                               addr0282:
                                                               §§push(this._swfLoader);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr0293:
                                                                  §§push(LoaderEvent.INIT);
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     §§pop().addEventListener(§§pop(),this.onInit);
                                                                     if(_loc4_ || Boolean(_loc1_))
                                                                     {
                                                                        §§push(this._swfLoader);
                                                                        if(!(_loc3_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§goto(addr02cd);
                                                                        }
                                                                        §§goto(addr03a2);
                                                                     }
                                                                     §§goto(addr039e);
                                                                  }
                                                                  §§goto(addr032c);
                                                               }
                                                            }
                                                            §§goto(addr02cd);
                                                         }
                                                         §§goto(addr035c);
                                                      }
                                                      §§goto(addr020a);
                                                   }
                                                   §§goto(addr0316);
                                                }
                                                §§goto(addr032c);
                                             }
                                             §§goto(addr038c);
                                          }
                                          §§goto(addr0201);
                                       }
                                       addr0215:
                                       §§pop().addEventListener(§§pop(),this.onError);
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          §§push(this._swfLoader);
                                          if(!(_loc3_ && Boolean(_loc2_)))
                                          {
                                             addr023a:
                                             §§push(LoaderEvent.PROGRESS);
                                             if(_loc4_ || Boolean(this))
                                             {
                                                §§pop().addEventListener(§§pop(),this.onProgress);
                                                if(_loc3_)
                                                {
                                                   §§goto(addr039e);
                                                }
                                             }
                                             else
                                             {
                                                addr02d9:
                                                §§pop().addEventListener(§§pop(),this.onComplete);
                                                if(!_loc3_)
                                                {
                                                   §§push(this._swfLoader);
                                                   if(_loc4_)
                                                   {
                                                      addr02ef:
                                                      §§push(LoaderEvent.CANCEL);
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         addr0302:
                                                         §§pop().addEventListener(§§pop(),this.onCancel);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr0316:
                                                            §§push(this._swfLoader);
                                                            if(_loc4_)
                                                            {
                                                               §§push(LoaderEvent.FAIL);
                                                               if(_loc4_)
                                                               {
                                                                  addr032c:
                                                                  §§pop().addEventListener(§§pop(),this.onFail);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0338:
                                                                     §§push(this._swfLoader);
                                                                     if(!(_loc3_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr0349:
                                                                        §§push(LoaderEvent.ERROR);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           addr035c:
                                                                           §§pop().addEventListener(§§pop(),this.onError);
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              §§goto(addr037b);
                                                                           }
                                                                           §§goto(addr039e);
                                                                        }
                                                                        §§goto(addr0392);
                                                                     }
                                                                     §§goto(addr038c);
                                                                  }
                                                                  §§goto(addr037b);
                                                               }
                                                               §§goto(addr035c);
                                                            }
                                                            §§goto(addr038c);
                                                         }
                                                         §§goto(addr039e);
                                                      }
                                                      §§goto(addr035c);
                                                   }
                                                   §§goto(addr038c);
                                                }
                                                §§goto(addr0338);
                                             }
                                             §§goto(addr03a6);
                                          }
                                          else
                                          {
                                             addr02cd:
                                             §§push(LoaderEvent.COMPLETE);
                                             if(_loc4_)
                                             {
                                                §§goto(addr02d9);
                                             }
                                          }
                                          §§goto(addr035c);
                                       }
                                       §§goto(addr03a6);
                                    }
                                    §§goto(addr0293);
                                 }
                                 §§goto(addr01bd);
                              }
                              else
                              {
                                 §§push(this._swfLoader);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    if(§§pop().status == LoaderStatus.READY)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr0282);
                                       }
                                       §§goto(addr039e);
                                    }
                                    §§goto(addr03a6);
                                 }
                              }
                              §§goto(addr02ef);
                           }
                           §§goto(addr023a);
                        }
                        addr03a6:
                        return;
                     }
                     §§goto(addr017e);
                  }
                  §§goto(addr037b);
               }
               §§goto(addr01a6);
            }
            §§goto(addr039e);
         }
         §§goto(addr0142);
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
         if(_loc4_)
         {
            _loc2_.text = param1.text;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0059:
               §§push(CityramaLogger.logger);
               §§push(LogEventLevel.FATAL);
               §§push("FileRuntimeClassLoader:onError(), loader for Object ");
               if(!_loc3_)
               {
                  §§push(§§pop() + param1.text);
               }
               §§pop().log(§§pop(),§§pop());
               if(!_loc3_)
               {
                  dispatchEvent(_loc2_);
               }
            }
            return;
         }
         §§goto(addr0059);
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.FAIL);
         if(!_loc4_)
         {
            _loc2_.text = param1.text;
            if(_loc3_)
            {
               §§push(CityramaLogger.logger);
               §§push(LogEventLevel.FATAL);
               §§push("FileRuntimeClassLoader:onFail(), loader for Object ");
               if(!(_loc4_ && Boolean(this)))
               {
                  §§push(§§pop() + param1.text);
               }
               §§pop().log(§§pop(),§§pop());
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0081:
                  dispatchEvent(_loc2_);
               }
               §§goto(addr0087);
            }
            §§goto(addr0081);
         }
         addr0087:
      }
      
      private function onCancel(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(CityramaLogger.logger);
            §§push(LogEventLevel.FATAL);
            §§push("FileRuntimeClassLoader:onCancel(), loader for Object ");
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(§§pop() + param1.text);
            }
            §§pop().log(§§pop(),§§pop());
         }
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.CANCEL);
         if(_loc3_ || Boolean(this))
         {
            _loc2_.text = param1.text;
            if(_loc3_ || Boolean(param1))
            {
               addr008d:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr008d);
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
            if(!_loc3_)
            {
               _loc2_.instance = this._instance;
               if(_loc4_)
               {
                  _loc2_.text = this.resFileName;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0075:
                     dispatchEvent(_loc2_);
                  }
               }
               return;
            }
         }
         §§goto(addr0075);
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._hasComplete = true;
            if(_loc3_)
            {
               §§push(this._hasComplete);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc3_ || Boolean(param1))
                           {
                              addr0073:
                              §§push(this._hasInit);
                              if(_loc3_)
                              {
                                 addr0072:
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!(_loc2_ && Boolean(param1)))
                                 {
                                    addr0084:
                                    this.onFullComplete(param1);
                                 }
                              }
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr0072);
                     }
                  }
               }
               §§goto(addr0073);
            }
            §§goto(addr0084);
         }
         addr008a:
      }
      
      private function onInit(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._hasInit = true;
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._hasComplete);
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && Boolean(this)))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0057);
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               addr0057:
               §§pop();
               if(_loc3_)
               {
                  addr007b:
                  §§push(this._hasInit);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        this.onFullComplete(param1);
                     }
                  }
               }
               §§goto(addr0092);
            }
         }
         addr0092:
      }
      
      private function generateInstance() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Class = null;
         if(_loc3_)
         {
            §§push(this.uniqueInstance);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr004e:
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr008a);
                        }
                        §§goto(addr0093);
                     }
                  }
                  addr008a:
                  §§push(this.service.isInstanceAviable(this.resFileName,this.classname));
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0089:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this._instance = this.service.getUniqueInstance(this.resFileName,this.classname);
                        addr0093:
                     }
                  }
                  else
                  {
                     _loc1_ = this._swfLoader.getClass(this.classname);
                     if(!(_loc2_ && _loc3_))
                     {
                        this._instance = new _loc1_();
                     }
                  }
                  return;
               }
               §§goto(addr0089);
            }
            §§goto(addr004e);
         }
         §§goto(addr0093);
      }
      
      public function getInstance() : *
      {
         return this._instance;
      }
      
      public function dispose() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._swfLoader);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this._swfLoader);
                     if(_loc1_)
                     {
                        §§push(LoaderEvent.COMPLETE);
                        if(!_loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.onComplete);
                           if(_loc1_)
                           {
                              §§push(this._swfLoader);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(LoaderEvent.CANCEL);
                                 if(_loc1_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.onCancel);
                                    if(_loc1_ || _loc1_)
                                    {
                                       addr0092:
                                       §§push(this._swfLoader);
                                       if(_loc1_)
                                       {
                                          §§push(LoaderEvent.FAIL);
                                          if(_loc1_)
                                          {
                                             addr00a6:
                                             §§pop().removeEventListener(§§pop(),this.onFail);
                                             if(_loc1_)
                                             {
                                                §§push(this._swfLoader);
                                                if(_loc1_)
                                                {
                                                   addr00bb:
                                                   §§push(LoaderEvent.ERROR);
                                                   if(!_loc2_)
                                                   {
                                                      addr00c6:
                                                      §§pop().removeEventListener(§§pop(),this.onError);
                                                      if(_loc1_)
                                                      {
                                                         §§goto(addr00e6);
                                                      }
                                                      §§goto(addr010a);
                                                   }
                                                   addr00e6:
                                                   this._swfLoader.removeEventListener(LoaderEvent.PROGRESS,this.onProgress);
                                                }
                                                §§goto(addr00e0);
                                             }
                                             §§goto(addr00fc);
                                          }
                                          §§goto(addr00c6);
                                       }
                                       §§goto(addr00bb);
                                    }
                                    §§goto(addr00fc);
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr010a);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr00fc);
            }
            addr00e0:
            if(_loc1_)
            {
               this._swfLoader = null;
               if(!_loc2_)
               {
                  addr00fc:
                  if(this._instance != null)
                  {
                     if(_loc1_)
                     {
                        addr010a:
                        this._instance = null;
                     }
                  }
                  §§goto(addr010f);
               }
               §§goto(addr010a);
            }
            addr010f:
            return;
         }
         §§goto(addr010a);
      }
   }
}

