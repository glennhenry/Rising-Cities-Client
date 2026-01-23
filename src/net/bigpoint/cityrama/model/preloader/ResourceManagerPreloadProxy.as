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
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._loaderQueue = new LoaderMax();
         this._loadVector = new Vector.<String>();
      }
      
      public function buildLoadingQueqe(param1:Dictionary) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         this._cvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         this._flashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         this._langToLoad = this._flashVarsProxy.lang;
         var _loc2_:String = this._flashVarsProxy.path;
         for(_loc3_ in param1)
         {
            if(_loc3_.indexOf(this._langToLoad) == 0)
            {
               if(this._langToLoad != "en" || this._langToLoad == "en" && _loc3_.indexOf("en_US") != 0)
               {
                  this._loadVector.push(_loc2_ + this._cvTagProxy.getCvTagPath(_loc3_));
               }
            }
         }
         for each(_loc4_ in this._loadVector)
         {
            this._myLoader = new DataLoader(_loc4_,new XMLLoaderVars().name(_loc4_).noCache(false));
            this._loaderQueue.append(this._myLoader);
         }
         this.configureListener();
         this._loaderQueue.load();
      }
      
      private function configureListener() : void
      {
         this._loaderQueue.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
         this._loaderQueue.addEventListener(LoaderEvent.IO_ERROR,this.onError);
         this._loaderQueue.addEventListener(LoaderEvent.SECURITY_ERROR,this.onError);
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.ERROR,"RessourceManagerPreloadProxy:onError(" + param1 + ")");
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var _loc2_:ResourceBundle = null;
         var _loc3_:String = null;
         var _loc4_:XMLList = null;
         var _loc5_:XML = null;
         var _loc6_:XMLList = null;
         var _loc7_:XML = null;
         for each(_loc3_ in this._loadVector)
         {
            this._myXML = new XML(LoaderMax.getContent(_loc3_));
            _loc4_ = this._myXML.children();
            for each(_loc5_ in _loc4_)
            {
               _loc2_ = new ResourceBundle(this._langToLoad,_loc5_.@name.toString());
               _loc6_ = _loc5_.children();
               for each(_loc7_ in _loc6_)
               {
                  _loc2_.content[_loc7_.@name.toString()] = _loc7_.text().toString();
               }
               ResourceManager.getInstance().addResourceBundle(_loc2_);
            }
         }
         ResourceManager.getInstance().update();
         ResourceManager.getInstance().localeChain = [this._langToLoad];
         facade.sendNotification(ApplicationNotificationConstants.LOCALE_LOADED);
         this._languageFilesLoaded = true;
         PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_LOCALE_FILES_LOADED);
      }
      
      public function get languageFilesLoaded() : Boolean
      {
         return this._languageFilesLoaded;
      }
   }
}

