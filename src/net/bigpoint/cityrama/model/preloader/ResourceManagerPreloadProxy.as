package net.bigpoint.cityrama.model.preloader
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.data.XMLLoaderVars;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   import mx.resources.ResourceBundle;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.init.preloader.PreloaderProgressSingleton;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ResourceManagerPreloadProxy extends Proxy
   {
      
      public static const NAME:String = "ResourceManagerPreloadProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "ResourceManagerPreloadProxy";
      }
      
      private var _loaderQueue:LoaderMax;
      
      private var _myLoader:DataLoader;
      
      private var _myXML:XML;
      
      private var _langToLoad:String;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _loadVector:Vector.<String>;
      
      private var _cvTagProxy:CvTagProxy;
      
      private var _languageFilesLoaded:Boolean;
      
      public function ResourceManagerPreloadProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._loaderQueue = new LoaderMax();
            if(_loc1_)
            {
               addr0025:
               this._loadVector = new Vector.<String>();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function buildLoadingQueqe(param1:Dictionary) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:* = null;
         var _loc4_:String = null;
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            this._cvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
            if(!_loc7_)
            {
               addr0041:
               this._flashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
               if(_loc8_ || Boolean(param1))
               {
                  addr0064:
                  this._langToLoad = this._flashVarsProxy.lang;
               }
               §§push(this._flashVarsProxy.path);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  §§push(§§pop());
               }
               var _loc2_:* = §§pop();
               var _loc5_:int = 0;
               var _loc6_:* = param1;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc6_,_loc5_));
                  if(!(_loc8_ || Boolean(param1)))
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              _loc5_ = 0;
                              if(_loc8_)
                              {
                                 addr01f6:
                                 _loc6_ = this._loadVector;
                                 if(_loc8_)
                                 {
                                 }
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    break loop0;
                                 }
                                 addr0268:
                                 addr0261:
                              }
                              if(_loc8_ || Boolean(_loc3_))
                              {
                                 this.configureListener();
                                 if(_loc8_)
                                 {
                                    this._loaderQueue.load();
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr01f6);
                     }
                     §§goto(addr0268);
                  }
                  else
                  {
                     §§push(§§nextname(_loc5_,_loc6_));
                     if(_loc8_ || _loc2_)
                     {
                        _loc3_ = §§pop();
                        if(_loc8_)
                        {
                           §§push(_loc3_);
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              addr00be:
                              if(§§pop().indexOf(this._langToLoad) != 0)
                              {
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 addr00d2:
                                 §§push(this._langToLoad);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push("en");
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc8_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc7_)
                                          {
                                             var _temp_12:* = §§pop();
                                             §§push(_temp_12);
                                             §§push(_temp_12);
                                             if(_loc8_ || _loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§pop();
                                                      if(_loc8_)
                                                      {
                                                         §§push(this._langToLoad);
                                                         if(_loc8_ || Boolean(_loc3_))
                                                         {
                                                            addr0140:
                                                            §§push("en");
                                                            if(!(_loc7_ && Boolean(this)))
                                                            {
                                                               addr0151:
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  addr0158:
                                                                  var _temp_16:* = §§pop();
                                                                  addr0159:
                                                                  §§push(_temp_16);
                                                                  if(_temp_16)
                                                                  {
                                                                     if(_loc8_ || Boolean(this))
                                                                     {
                                                                        addr016b:
                                                                        §§pop();
                                                                        if(_loc8_ || Boolean(this))
                                                                        {
                                                                           addr0194:
                                                                           addr017e:
                                                                           addr017b:
                                                                           §§push(_loc3_.indexOf("en_US") == 0);
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              addr0193:
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc7_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr01a6:
                                                                                 this._loadVector.push(_loc2_ + this._cvTagProxy.getCvTagPath(_loc3_));
                                                                              }
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr0193);
                                                                  }
                                                                  §§goto(addr0194);
                                                               }
                                                               §§goto(addr016b);
                                                            }
                                                            §§goto(addr017e);
                                                         }
                                                         §§goto(addr017b);
                                                      }
                                                      §§goto(addr01a6);
                                                   }
                                                   §§goto(addr016b);
                                                }
                                                §§goto(addr0194);
                                             }
                                             §§goto(addr0159);
                                          }
                                          §§goto(addr0193);
                                       }
                                       §§goto(addr0158);
                                    }
                                    §§goto(addr0151);
                                 }
                                 §§goto(addr017b);
                              }
                              §§goto(addr01a6);
                           }
                           §§goto(addr0140);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr00be);
                  }
               }
               while(§§pop())
               {
                  _loc4_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc8_ || _loc2_)
                  {
                     this._myLoader = new DataLoader(_loc4_,new XMLLoaderVars().name(_loc4_).noCache(false));
                     if(!_loc7_)
                     {
                        addr0254:
                        this._loaderQueue.append(this._myLoader);
                     }
                     §§goto(addr0261);
                  }
                  §§goto(addr0254);
               }
               §§goto(addr0268);
            }
            §§goto(addr0064);
         }
         §§goto(addr0041);
      }
      
      private function configureListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._loaderQueue);
            if(!_loc1_)
            {
               §§push(LoaderEvent.COMPLETE);
               if(_loc2_ || _loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.onComplete);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(this._loaderQueue);
                     if(!_loc1_)
                     {
                        addr006c:
                        §§push(LoaderEvent.IO_ERROR);
                        if(!_loc1_)
                        {
                           addr0077:
                           §§pop().addEventListener(§§pop(),this.onError);
                           if(!_loc1_)
                           {
                              addr008d:
                              this._loaderQueue.addEventListener(LoaderEvent.SECURITY_ERROR,this.onError);
                              addr0087:
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0077);
            }
            §§goto(addr006c);
         }
         addr0094:
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(§§findproperty(sendNotification));
            §§push(ApplicationNotificationConstants.ERROR);
            §§push("RessourceManagerPreloadProxy:onError(");
            if(_loc3_)
            {
               §§push(§§pop() + param1);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop() + ")");
               }
            }
            §§pop().sendNotification(§§pop(),§§pop());
         }
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc2_:ResourceBundle = null;
         var _loc3_:String = null;
         var _loc4_:XMLList = null;
         var _loc5_:XML = null;
         var _loc6_:XMLList = null;
         var _loc7_:XML = null;
         for each(_loc3_ in this._loadVector)
         {
            if(_loc14_ || Boolean(_loc2_))
            {
               this._myXML = new XML(LoaderMax.getContent(_loc3_));
            }
            _loc4_ = this._myXML.children();
            if(_loc14_ || Boolean(_loc2_))
            {
               var _loc10_:int = 0;
               if(_loc14_)
               {
                  for each(_loc5_ in _loc4_)
                  {
                     _loc2_ = new ResourceBundle(this._langToLoad,_loc5_.@name.toString());
                     _loc6_ = _loc5_.children();
                     if(_loc14_)
                     {
                        var _loc12_:int = 0;
                        if(!_loc15_)
                        {
                           for each(_loc7_ in _loc6_)
                           {
                              if(_loc14_ || Boolean(_loc3_))
                              {
                                 _loc2_.content[_loc7_.@name.toString()] = _loc7_.text().toString();
                              }
                           }
                        }
                        if(_loc15_ && Boolean(this))
                        {
                           continue;
                        }
                     }
                     ResourceManager.getInstance().addResourceBundle(_loc2_);
                  }
               }
            }
         }
         if(!_loc15_)
         {
            §§push(ResourceManager.getInstance());
            if(_loc14_)
            {
               §§pop().update();
               if(!_loc15_)
               {
                  addr018a:
                  ResourceManager.getInstance().localeChain = [this._langToLoad];
                  addr0184:
                  if(_loc14_)
                  {
                     facade.sendNotification(ApplicationNotificationConstants.LOCALE_LOADED);
                     if(_loc14_ || Boolean(_loc2_))
                     {
                        §§goto(addr01bd);
                     }
                     §§goto(addr01d0);
                  }
                  addr01bd:
                  this._languageFilesLoaded = true;
                  if(!(_loc15_ && Boolean(this)))
                  {
                     addr01d0:
                     PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_LOCALE_FILES_LOADED);
                  }
                  §§goto(addr01e1);
               }
               addr01e1:
               return;
            }
            §§goto(addr018a);
         }
         §§goto(addr0184);
      }
      
      public function get languageFilesLoaded() : Boolean
      {
         return this._languageFilesLoaded;
      }
   }
}

