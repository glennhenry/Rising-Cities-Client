package net.bigpoint.cityrama.model.preloader
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.data.XMLLoaderVars;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class CvTagProxy extends Proxy
   {
      
      public static const NAME:String = "CvTagProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "CvTagProxy";
      }
      
      private const LOCA_FILE_TYPE:String = "locale";
      
      private var _myLoader:DataLoader;
      
      private var _flashVarProxy:FlashVarsProxy;
      
      private var _resourceProxy:ResourceManagerPreloadProxy;
      
      private var _loaderQueue:LoaderMax;
      
      private var _myXML:XML;
      
      private var _cvTagDict:Dictionary;
      
      private var _cvLOCATagDict:Dictionary;
      
      public function CvTagProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this._loaderQueue = new LoaderMax();
            if(!_loc4_)
            {
               super(param1,param2);
            }
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._flashVarProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
            if(_loc3_)
            {
               this._cvTagDict = new Dictionary();
            }
         }
         var _loc1_:XMLLoaderVars = new XMLLoaderVars({
            "name":this._flashVarProxy.cvXmlPath,
            "noCache":false,
            "integrateProgress":false
         });
         if(!_loc2_)
         {
            this._myLoader = new DataLoader(this._flashVarProxy.cvXmlPath,_loc1_);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._loaderQueue);
               if(_loc3_)
               {
                  §§pop().append(this._myLoader);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00b4:
                     this.configureListener();
                     if(_loc3_)
                     {
                        addr00c3:
                        this._loaderQueue.load();
                     }
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr00c3);
            }
            addr00c7:
            return;
         }
         §§goto(addr00b4);
      }
      
      private function configureListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._loaderQueue);
            if(!_loc2_)
            {
               §§push(LoaderEvent.COMPLETE);
               if(!(_loc2_ && _loc1_))
               {
                  §§pop().addEventListener(§§pop(),this.onComplete);
                  if(!_loc2_)
                  {
                     addr0052:
                     §§push(this._loaderQueue);
                     if(_loc1_)
                     {
                        addr005b:
                        §§push(LoaderEvent.IO_ERROR);
                        if(_loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.onError);
                           if(!_loc2_)
                           {
                              addr007c:
                              this._loaderQueue.addEventListener(LoaderEvent.SECURITY_ERROR,this.onError);
                              addr0076:
                              addr0072:
                           }
                           return;
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007c);
            }
            §§goto(addr005b);
         }
         §§goto(addr0052);
      }
      
      private function onError(param1:*) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(§§findproperty(sendNotification));
            §§push(ApplicationNotificationConstants.ERROR);
            §§push("CvTagProxy:onError(");
            if(_loc3_)
            {
               §§push(§§pop() + param1);
               if(!(_loc2_ && _loc3_))
               {
                  addr0041:
                  §§push(§§pop() + ")");
               }
               §§pop().sendNotification(§§pop(),§§pop());
               §§goto(addr0048);
            }
            §§goto(addr0041);
         }
         addr0048:
      }
      
      private function get cvLOCATagDict() : Dictionary
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(this._cvLOCATagDict == null)
            {
               if(_loc1_ || Boolean(this))
               {
                  this._cvLOCATagDict = new Dictionary();
               }
            }
         }
         return this._cvLOCATagDict;
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:XML = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_loc9_ || Boolean(this))
         {
            this._myXML = new XML(this._myLoader.content);
         }
         for each(_loc2_ in this._myXML..item)
         {
            if(_loc9_ || Boolean(_loc2_))
            {
               §§push(_loc2_.@name.toString());
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  _loc3_ = §§pop();
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     addr009a:
                     §§push(_loc2_.@type.toString());
                     if(_loc9_ || Boolean(_loc2_))
                     {
                        _loc4_ = §§pop();
                        if(_loc10_ && Boolean(_loc3_))
                        {
                           continue;
                        }
                        addr00ce:
                        §§push(_loc2_.text().toString());
                        if(_loc9_)
                        {
                           addr00df:
                           _loc5_ = §§pop();
                           if(!_loc10_)
                           {
                              this._cvTagDict[_loc3_] = _loc5_;
                              if(!_loc9_)
                              {
                                 continue;
                              }
                           }
                           §§push(_loc4_);
                        }
                     }
                     var _loc8_:* = §§pop();
                     if(_loc9_ || Boolean(param1))
                     {
                        if(this.LOCA_FILE_TYPE === _loc8_)
                        {
                           addr0133:
                           §§push(0);
                           if(_loc10_)
                           {
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        switch(§§pop())
                        {
                           case 0:
                              this.cvLOCATagDict[_loc3_] = _loc5_;
                              if(_loc9_)
                              {
                              }
                        }
                     }
                     §§goto(addr0133);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00df);
            }
            §§goto(addr009a);
         }
         if(_loc9_ || Boolean(_loc3_))
         {
            §§push(this._resourceProxy);
            if(_loc9_)
            {
               if(§§pop() == null)
               {
                  if(_loc9_ || Boolean(_loc2_))
                  {
                     addr019a:
                     this._resourceProxy = facade.retrieveProxy(ResourceManagerPreloadProxy.NAME) as ResourceManagerPreloadProxy;
                     if(!_loc10_)
                     {
                        addr01b6:
                        this._resourceProxy.buildLoadingQueqe(this.cvLOCATagDict);
                        addr01b2:
                     }
                  }
                  return;
               }
               §§goto(addr01b2);
            }
            §§goto(addr01b6);
         }
         §§goto(addr019a);
      }
      
      private function mapKey(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:RegExp = new RegExp("/","g");
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop().replace(_loc3_,"#"));
               if(_loc5_ || Boolean(_loc2_))
               {
                  param1 = §§pop();
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     addr007f:
                     §§push(param1);
                     if(_loc5_)
                     {
                        §§goto(addr0086);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr0099);
               }
            }
            addr0086:
            §§push(§§pop().replace(".","?"));
            if(!_loc4_)
            {
               addr0098:
               _loc2_ = §§pop();
               addr0099:
               return _loc2_;
            }
         }
         §§goto(addr007f);
      }
      
      public function getCvTagPath(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(this.mapKey(param1));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(this._cvTagDict[_loc2_])
            {
               if(_loc4_)
               {
                  return this._cvTagDict[_loc2_];
               }
            }
         }
         return param1;
      }
   }
}

