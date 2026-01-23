package net.bigpoint.services.fileRuntimeLoadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class FileRuntimeLoadService extends EventDispatcher
   {
      
      private var _wrapperLoader:LoaderMax;
      
      private var _replacePathsDict:Dictionary;
      
      private var _instanceDictionary:Dictionary;
      
      private var _loaderDictionary:Dictionary;
      
      public function FileRuntimeLoadService(param1:IEventDispatcher = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super(param1);
            if(_loc2_ || Boolean(param1))
            {
               this._wrapperLoader = new LoaderMax({"integrateProgress":false});
               if(_loc2_ || Boolean(param1))
               {
                  this._instanceDictionary = new Dictionary();
                  if(!(_loc3_ && _loc3_))
                  {
                     addr007d:
                     this._loaderDictionary = new Dictionary();
                  }
                  §§goto(addr0086);
               }
            }
            §§goto(addr007d);
         }
         addr0086:
      }
      
      public function initLoadWithXml(param1:String, param2:Dictionary = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(this);
            if(!(_loc5_ && _loc3_))
            {
               §§pop()._replacePathsDict = param2 == null ? new Dictionary() : param2;
               addr005a:
               var _loc3_:URLLoader = new URLLoader();
               if(!_loc5_)
               {
                  _loc3_.load(new URLRequest(param1));
                  if(_loc4_)
                  {
                     addr007e:
                     _loc3_.addEventListener(Event.COMPLETE,this.onXmlLoaded);
                  }
                  return;
               }
               §§goto(addr007e);
            }
            §§goto(addr003c);
         }
         §§goto(addr005a);
      }
      
      public function initLoad(param1:Dictionary = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || _loc3_)
            {
               §§pop()._replacePathsDict = param1 == null ? new Dictionary() : param1;
               if(_loc2_)
               {
                  this.replaceUrlText();
                  if(_loc2_ || _loc2_)
                  {
                     this._wrapperLoader.load();
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0044);
         }
         addr0075:
      }
      
      private function onXmlLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:String = null;
         var _loc2_:XML = new XML((param1.target as URLLoader).data);
         if(_loc7_ || Boolean(_loc3_))
         {
            XMLLoader.parseLoaders(_loc2_,this._wrapperLoader);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               §§push(this._wrapperLoader);
               if(!_loc6_)
               {
                  §§push(LoaderEvent.COMPLETE);
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     §§pop().addEventListener(§§pop(),this.onComplete);
                     if(_loc7_ || Boolean(this))
                     {
                        §§push(this._wrapperLoader);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           addr009b:
                           §§push(LoaderEvent.CHILD_COMPLETE);
                           if(_loc7_ || Boolean(param1))
                           {
                              §§pop().addEventListener(§§pop(),this.onChildComplete);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 addr00d1:
                                 §§push(this._wrapperLoader);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§push(LoaderEvent.ERROR);
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr0117);
                                 }
                                 §§goto(addr0111);
                              }
                              §§goto(addr010d);
                           }
                           addr00f7:
                           §§pop().addEventListener(§§pop(),this.onError);
                           if(!(_loc6_ && Boolean(_loc2_)))
                           {
                              addr0117:
                              this._wrapperLoader.addEventListener(LoaderEvent.FAIL,this.onFail);
                              addr0111:
                              addr010d:
                           }
                           §§goto(addr011f);
                        }
                        §§goto(addr0111);
                     }
                     addr011f:
                     for(_loc3_ in this._replacePathsDict)
                     {
                        if(_loc7_ || Boolean(param1))
                        {
                           this._wrapperLoader.replaceURLText(_loc3_,this._replacePathsDict[_loc3_],true);
                        }
                     }
                     if(_loc7_)
                     {
                        this._wrapperLoader.load();
                     }
                     return;
                  }
                  §§goto(addr00f7);
               }
               §§goto(addr009b);
            }
            §§goto(addr010d);
         }
         §§goto(addr00d1);
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.FAIL);
         if(!_loc3_)
         {
            _loc2_.text = param1.text;
            if(!_loc3_)
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.ERROR);
         if(_loc3_)
         {
            _loc2_.text = param1.text;
            if(_loc3_)
            {
               addr0035:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function onChildComplete(param1:LoaderEvent) : void
      {
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.COMPLETE);
         if(_loc3_ || Boolean(param1))
         {
            _loc2_.text = param1.text;
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               addr0053:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0053);
      }
      
      public function getLoaderForObjectInstance(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false) : FileRuntimeClassLoader
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:FileRuntimeClassLoader = null;
         if(_loc7_)
         {
            §§push(param4);
            if(_loc7_)
            {
               §§push(§§pop());
               if(!(_loc6_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              addr005b:
                              §§push(this.isLoaderAviable(param1));
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 addr006f:
                                 §§push(§§pop());
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    addr007e:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && Boolean(this)))
                                       {
                                          _loc5_ = this._loaderDictionary[param1] as FileRuntimeClassLoader;
                                       }
                                       else
                                       {
                                          _loc5_ = new FileRuntimeClassLoader(param1,param2,param3,this);
                                          _loc5_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onFileComplete,false,100);
                                          addr00f2:
                                          if(_loc7_ || Boolean(this))
                                          {
                                             this._loaderDictionary[param1] = _loc5_;
                                          }
                                       }
                                       §§goto(addr014d);
                                    }
                                    else
                                    {
                                       §§push(param4);
                                       if(_loc7_)
                                       {
                                          addr00b8:
                                          §§push(§§pop());
                                          if(!(_loc6_ && Boolean(param1)))
                                          {
                                             §§goto(addr00c7);
                                          }
                                          §§goto(addr00ed);
                                       }
                                       addr00c7:
                                       var _temp_11:* = §§pop();
                                       addr00c8:
                                       §§push(_temp_11);
                                       if(_temp_11)
                                       {
                                          if(_loc7_)
                                          {
                                             addr00d2:
                                             §§pop();
                                             if(_loc7_ || Boolean(param2))
                                             {
                                                §§goto(addr00ee);
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr00ed);
                                       }
                                       addr00ee:
                                       §§goto(addr00e1);
                                    }
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00d2);
                           }
                           addr00e1:
                           §§push(this.isLoaderAviable(param1));
                           if(_loc7_)
                           {
                              addr00ed:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              §§goto(addr00f2);
                           }
                           else
                           {
                              _loc5_ = new FileRuntimeClassLoader(param1,param2,param3,this);
                           }
                           addr014d:
                           return _loc5_;
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00ee);
            }
            §§goto(addr006f);
         }
         §§goto(addr005b);
      }
      
      public function getLoaderForImage(param1:String, param2:Boolean = false, param3:Boolean = false) : FileRuntimeImageLoader
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:FileRuntimeImageLoader = null;
         if(_loc5_ || param2)
         {
            §§push(param3);
            if(_loc5_ || param2)
            {
               §§push(§§pop());
               if(!(_loc6_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(this.isLoaderAviable(param1));
                              if(!_loc6_)
                              {
                                 addr0073:
                                 §§push(§§pop());
                                 if(_loc5_)
                                 {
                                    addr007a:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc4_ = this._loaderDictionary[param1] as FileRuntimeImageLoader;
                                          addr0084:
                                       }
                                       else
                                       {
                                          _loc4_ = new FileRuntimeImageLoader(param1,param2,this);
                                          _loc4_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onFileComplete,false,100);
                                          addr00f0:
                                          if(_loc5_)
                                          {
                                             this._loaderDictionary[param1] = _loc4_;
                                          }
                                       }
                                       §§goto(addr013e);
                                    }
                                    else
                                    {
                                       §§push(param3);
                                       if(_loc5_ || param3)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             §§goto(addr00c5);
                                          }
                                          §§goto(addr00eb);
                                       }
                                       addr00c5:
                                       var _temp_9:* = §§pop();
                                       §§goto(addr00c6);
                                    }
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00f0);
                        }
                        §§goto(addr0073);
                     }
                     §§goto(addr007a);
                  }
                  addr00c6:
                  §§push(_temp_9);
                  if(_temp_9)
                  {
                     if(!_loc6_)
                     {
                        addr00d0:
                        §§pop();
                        if(!(_loc6_ && param2))
                        {
                           §§goto(addr00ec);
                        }
                        §§goto(addr00f0);
                     }
                  }
                  addr00ec:
                  §§push(this.isLoaderAviable(param1));
                  if(!_loc6_)
                  {
                     addr00eb:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     §§goto(addr00f0);
                  }
                  else
                  {
                     _loc4_ = new FileRuntimeImageLoader(param1,param2,this);
                  }
                  addr013e:
                  return _loc4_;
               }
               §§goto(addr007a);
            }
            §§goto(addr00eb);
         }
         §§goto(addr0084);
      }
      
      private function onFileComplete(param1:FileRuntimeLoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeClassLoader = param1.target as FileRuntimeClassLoader;
         if(!_loc3_)
         {
            if(_loc2_.uniqueInstance)
            {
               if(_loc4_)
               {
                  this._instanceDictionary[_loc2_.resFileName + "_" + _loc2_.classname] = _loc2_.getInstance();
               }
            }
         }
      }
      
      public function replaceUrlText() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:String = null;
         for(_loc1_ in this._replacePathsDict)
         {
            if(!_loc5_)
            {
               this._wrapperLoader.replaceURLText(_loc1_,this._replacePathsDict[_loc1_],true);
            }
         }
      }
      
      public function isInstanceAviable(param1:String, param2:String) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(this._instanceDictionary.hasOwnProperty(param1 + "_" + param2))
            {
               if(_loc3_)
               {
                  addr0030:
                  §§push(true);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0038:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr0038);
         }
         §§goto(addr0030);
      }
      
      public function isImageInstanceAviable(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._instanceDictionary.hasOwnProperty(param1))
            {
               if(!_loc3_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr002f:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr002f);
      }
      
      public function isLoaderAviable(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._instanceDictionary.hasOwnProperty(param1))
            {
               if(_loc3_)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0031:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr0031);
      }
      
      public function getUniqueInstance(param1:String, param2:String) : *
      {
         return this._instanceDictionary[param1 + "_" + param2];
      }
      
      public function getUniqueImageInstance(param1:String) : *
      {
         return this._instanceDictionary[param1];
      }
      
      public function getLoader(param1:String) : SWFLoader
      {
         return this._wrapperLoader.getLoader(param1) as SWFLoader;
      }
      
      public function getImageLoader(param1:String) : ImageLoader
      {
         return this._wrapperLoader.getLoader(param1) as ImageLoader;
      }
      
      public function addLoaderByXML(param1:XML) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            if(this._wrapperLoader.status != LoaderStatus.READY)
            {
               throw new Error();
            }
            if(_loc3_)
            {
               XMLLoader.parseLoaders(param1,this._wrapperLoader);
               if(_loc2_ && _loc2_)
               {
               }
            }
         }
      }
   }
}

