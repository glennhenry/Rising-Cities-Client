package net.bigpoint.services.filePreloadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.CSSLoader;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import net.bigpoint.util.CityramaLogger;
   
   public class FilePreloadService extends EventDispatcher
   {
      
      private var _initialLoader:LoaderMax;
      
      private var _dictionary:Dictionary;
      
      private var _replacePathsDict:Dictionary;
      
      public function FilePreloadService()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               addr001d:
               LoaderMax.activate([ImageLoader]);
               if(_loc1_)
               {
                  LoaderMax.activate([CSSLoader]);
                  if(!(_loc2_ && _loc2_))
                  {
                     LoaderMax.activate([SWFLoader]);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006a:
                        LoaderMax.activate([XMLLoader]);
                        if(_loc1_ || _loc1_)
                        {
                           this._dictionary = new Dictionary();
                           if(_loc1_)
                           {
                              this._initialLoader = new LoaderMax();
                              if(_loc1_ || _loc1_)
                              {
                                 addr00b3:
                                 this.configureListener();
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr006a);
               }
               §§goto(addr00b3);
            }
            §§goto(addr006a);
         }
         §§goto(addr001d);
      }
      
      private function configureListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._initialLoader);
            if(_loc1_ || _loc2_)
            {
               §§push(LoaderEvent.COMPLETE);
               if(!_loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.onComplete);
                  if(_loc1_)
                  {
                     §§push(this._initialLoader);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr004f:
                        §§push(LoaderEvent.ERROR);
                        if(!_loc2_)
                        {
                           addr005a:
                           §§pop().addEventListener(§§pop(),this.onError);
                           if(!_loc2_)
                           {
                              §§push(this._initialLoader);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(LoaderEvent.FAIL);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§pop().addEventListener(§§pop(),this.onFail);
                                    if(_loc1_ || Boolean(this))
                                    {
                                       addr00aa:
                                       §§push(this._initialLoader);
                                       if(!_loc2_)
                                       {
                                          §§push(LoaderEvent.CHILD_CANCEL);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§pop().addEventListener(§§pop(),this.onChildCancel);
                                             if(!_loc2_)
                                             {
                                                §§push(this._initialLoader);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   §§push(LoaderEvent.CHILD_COMPLETE);
                                                   if(_loc1_)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.onChildComplete);
                                                      if(_loc1_)
                                                      {
                                                         addr00fc:
                                                         §§push(this._initialLoader);
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            addr0117:
                                                            §§push(LoaderEvent.CHILD_FAIL);
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               addr012a:
                                                               §§pop().addEventListener(§§pop(),this.onChildFail);
                                                               if(_loc1_)
                                                               {
                                                                  addr0141:
                                                                  this._initialLoader.addEventListener(LoaderEvent.PROGRESS,this.onProgress);
                                                                  addr013b:
                                                                  addr0137:
                                                               }
                                                               §§goto(addr0149);
                                                            }
                                                            §§goto(addr0141);
                                                         }
                                                         §§goto(addr013b);
                                                      }
                                                      §§goto(addr0149);
                                                   }
                                                   §§goto(addr012a);
                                                }
                                                §§goto(addr0117);
                                             }
                                             §§goto(addr00fc);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr013b);
                                    }
                                    §§goto(addr0137);
                                 }
                                 §§goto(addr0141);
                              }
                              §§goto(addr0117);
                           }
                           §§goto(addr0149);
                        }
                        §§goto(addr0141);
                     }
                     §§goto(addr0117);
                  }
                  addr0149:
                  return;
               }
               §§goto(addr005a);
            }
            §§goto(addr004f);
         }
         §§goto(addr00aa);
      }
      
      public function initLoadWithXml(param1:String, param2:Dictionary = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this);
            if(_loc4_)
            {
               §§pop()._replacePathsDict = param2 == null ? new Dictionary() : param2;
               var _loc3_:URLLoader = new URLLoader();
               addr0044:
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  _loc3_.load(new URLRequest(param1));
                  if(!_loc5_)
                  {
                     addr007d:
                     _loc3_.addEventListener(Event.COMPLETE,this.onXmlLoaded);
                  }
                  return;
               }
               §§goto(addr007d);
            }
            §§goto(addr0026);
         }
         §§goto(addr0044);
      }
      
      public function initLoad(param1:Dictionary = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(this);
            if(!(_loc2_ && _loc3_))
            {
               §§pop()._replacePathsDict = param1 == null ? new Dictionary() : param1;
               if(_loc3_ || _loc3_)
               {
                  this.replaceUrlText();
                  if(_loc3_)
                  {
                     addr0079:
                     this._initialLoader.load();
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0079);
            }
            §§goto(addr0050);
         }
         addr0081:
      }
      
      private function onXmlLoaded(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:XML = new XML((param1.target as URLLoader).data);
         if(!(_loc4_ && Boolean(param1)))
         {
            XMLLoader.parseLoaders(_loc2_,this._initialLoader);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr0067);
            }
            §§goto(addr0072);
         }
         addr0067:
         this.replaceUrlText();
         if(_loc3_)
         {
            addr0072:
            this._initialLoader.load();
         }
      }
      
      private function replaceUrlText() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:String = null;
         var _loc3_:* = this._replacePathsDict;
         for(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               this._initialLoader.replaceURLText(_loc1_,this._replacePathsDict[_loc1_],true);
            }
         }
      }
      
      private function onChildComplete(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.CHILD_COMPLETE);
         if(_loc3_ || Boolean(param1))
         {
            _loc2_.text = param1.target.toString();
            if(!_loc4_)
            {
               addr0050:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr0050);
      }
      
      private function onProgress(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.PROGRESS);
         if(!_loc4_)
         {
            _loc2_.progress = this._initialLoader.progress;
            if(!_loc4_)
            {
               addr003a:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function onChildFail(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.FAIL);
         if(_loc4_)
         {
            _loc2_.text = param1.text;
            if(!(_loc3_ && Boolean(this)))
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private function onChildCancel(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.CHILD_CANCEL);
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.text = param1.text;
            if(_loc4_ || Boolean(this))
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.FAIL);
         if(_loc4_ || Boolean(param1))
         {
            _loc2_.text = param1.text;
            if(!_loc3_)
            {
               addr004a:
               dispatchEvent(_loc2_);
            }
            return;
         }
         §§goto(addr004a);
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.ERROR);
         if(_loc3_ || Boolean(_loc2_))
         {
            _loc2_.text = param1.text;
            if(!_loc4_)
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            dispatchEvent(new FilePreloadServiceEvent(FilePreloadServiceEvent.COMPLETE));
         }
      }
      
      public function get percentLoaded() : Number
      {
         return this._initialLoader.progress;
      }
      
      public function isLoaded(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(LoaderMax.getContent(param1).rawContent != null)
            {
               if(_loc3_ || Boolean(this))
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0046:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr0046);
      }
      
      public function hasObjectDefinition(param1:String, param2:String) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:SWFLoader = null;
         var _loc4_:LoaderInfo = null;
         if(!_loc6_)
         {
            if(this._dictionary.hasOwnProperty(param1 + "_" + param2))
            {
               if(_loc5_ || Boolean(param2))
               {
                  §§goto(addr0060);
               }
            }
            _loc3_ = LoaderMax.getLoader(param1) as SWFLoader;
            _loc4_ = _loc3_.rawContent.loaderInfo as LoaderInfo;
            return _loc4_.applicationDomain.hasDefinition(param2);
         }
         addr0060:
         return true;
      }
      
      public function getObjectInstance(param1:String, param2:String, param3:Boolean = false) : Object
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:* = undefined;
         var _loc6_:Class = null;
         var _loc7_:SWFLoader = null;
         if(_loc10_)
         {
            §§push(param3);
            if(_loc10_ || Boolean(param2))
            {
               §§push(§§pop());
               if(_loc10_ || param3)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc9_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc10_)
                           {
                              §§push(Boolean(this._dictionary.hasOwnProperty(param1 + "_" + param2)));
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 addr0088:
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && param3))
                                    {
                                       addr009a:
                                       _loc5_ = this._dictionary[param1 + "_" + param2];
                                    }
                                    else
                                    {
                                       addr010f:
                                       _loc7_ = LoaderMax.getLoader(param1) as SWFLoader;
                                       _loc6_ = _loc7_.getClass(param2);
                                       _loc5_ = this._dictionary[param1 + "_" + param2] = new _loc6_();
                                    }
                                    §§goto(addr0235);
                                 }
                                 else
                                 {
                                    §§push(param3);
                                    if(_loc10_ || param3)
                                    {
                                       §§push(§§pop());
                                       if(_loc10_ || Boolean(param2))
                                       {
                                          var _temp_12:* = §§pop();
                                          addr00ce:
                                          §§push(_temp_12);
                                          if(_temp_12)
                                          {
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                addr00e0:
                                                §§pop();
                                                if(!(_loc9_ && Boolean(param2)))
                                                {
                                                   §§goto(addr010b);
                                                }
                                                §§goto(addr010f);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr010b);
                                 }
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr0088);
            }
            addr010b:
            if(!this._dictionary.hasOwnProperty(param1 + "_" + param2))
            {
               §§goto(addr010f);
            }
            else
            {
               _loc7_ = LoaderMax.getLoader(param1) as SWFLoader;
               if(_loc7_ == null)
               {
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     §§push(CityramaLogger.logger);
                     §§push("unvalid resFileName: ");
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        §§push(§§pop() + param1);
                        if(_loc10_)
                        {
                           §§push(§§pop() + ", with arguments: ");
                           if(!_loc9_)
                           {
                              §§push(§§pop() + arguments);
                           }
                        }
                     }
                     §§pop().error(§§pop());
                     if(_loc9_)
                     {
                        §§goto(addr01aa);
                     }
                  }
                  return null;
               }
               addr01aa:
               _loc6_ = _loc7_.getClass(param2);
               if(!_loc9_)
               {
                  if(_loc7_ == null)
                  {
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        §§push(CityramaLogger.logger);
                        §§push("unvalid defName: ");
                        if(!(_loc9_ && param3))
                        {
                           §§push(§§pop() + param2);
                           if(_loc10_ || Boolean(param1))
                           {
                              §§push(§§pop() + ", with arguments: ");
                              if(!(_loc9_ && Boolean(param2)))
                              {
                                 addr0217:
                                 §§push(§§pop() + arguments);
                              }
                              §§pop().error(§§pop());
                              if(_loc10_ || Boolean(param1))
                              {
                                 return null;
                              }
                              §§goto(addr022e);
                           }
                        }
                        §§goto(addr0217);
                     }
                  }
               }
               addr022e:
               _loc5_ = new _loc6_();
               §§goto(addr0235);
            }
            return _loc5_;
         }
         §§goto(addr009a);
      }
      
      public function getXML(param1:String) : Object
      {
         return LoaderMax.getContent(param1);
      }
      
      public function getCss(param1:String) : StyleSheet
      {
         return LoaderMax.getContent(param1) as StyleSheet;
      }
      
      public function getImage(param1:String, param2:Boolean = false) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(param2)
            {
               if(_loc4_)
               {
                  return new Bitmap(LoaderMax.getLoader(param1).rawContent.bitmapData);
               }
            }
         }
         return LoaderMax.getContent(param1) as DisplayObject;
      }
      
      public function getMovieClip(param1:String) : MovieClip
      {
         return LoaderMax.getContent(param1) as MovieClip;
      }
      
      public function getContentAsArray(param1:String) : Array
      {
         return LoaderMax.getContent(param1);
      }
      
      public function addLoaderByXML(param1:XML) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._initialLoader.status == LoaderStatus.READY)
            {
               if(!_loc3_)
               {
                  XMLLoader.parseLoaders(param1,this._initialLoader);
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
            }
            else
            {
               CityramaLogger.logger.error("Loader is still not ready");
            }
         }
      }
   }
}

