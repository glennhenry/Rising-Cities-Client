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
      
      private const LOCA_FILE_TYPE:String = "locale";
      
      private var _myLoader:DataLoader;
      
      private var _flashVarProxy:FlashVarsProxy;
      
      private var _resourceProxy:ResourceManagerPreloadProxy;
      
      private var _loaderQueue:LoaderMax = new LoaderMax();
      
      private var _myXML:XML;
      
      private var _cvTagDict:Dictionary;
      
      private var _cvLOCATagDict:Dictionary;
      
      public function CvTagProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._flashVarProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this._cvTagDict = new Dictionary();
         var _loc1_:XMLLoaderVars = new XMLLoaderVars({
            "name":this._flashVarProxy.cvXmlPath,
            "noCache":false,
            "integrateProgress":false
         });
         this._myLoader = new DataLoader(this._flashVarProxy.cvXmlPath,_loc1_);
         this._loaderQueue.append(this._myLoader);
         this.configureListener();
         this._loaderQueue.load();
      }
      
      private function configureListener() : void
      {
         this._loaderQueue.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
         this._loaderQueue.addEventListener(LoaderEvent.IO_ERROR,this.onError);
         this._loaderQueue.addEventListener(LoaderEvent.SECURITY_ERROR,this.onError);
      }
      
      private function onError(param1:*) : void
      {
         sendNotification(ApplicationNotificationConstants.ERROR,"CvTagProxy:onError(" + param1 + ")");
      }
      
      private function get cvLOCATagDict() : Dictionary
      {
         if(this._cvLOCATagDict == null)
         {
            this._cvLOCATagDict = new Dictionary();
         }
         return this._cvLOCATagDict;
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         this._myXML = new XML(this._myLoader.content);
         for each(_loc2_ in this._myXML..item)
         {
            _loc3_ = _loc2_.@name.toString();
            _loc4_ = _loc2_.@type.toString();
            _loc5_ = _loc2_.text().toString();
            this._cvTagDict[_loc3_] = _loc5_;
            switch(_loc4_)
            {
               case this.LOCA_FILE_TYPE:
                  this.cvLOCATagDict[_loc3_] = _loc5_;
            }
         }
         if(this._resourceProxy == null)
         {
            this._resourceProxy = facade.retrieveProxy(ResourceManagerPreloadProxy.NAME) as ResourceManagerPreloadProxy;
         }
         this._resourceProxy.buildLoadingQueqe(this.cvLOCATagDict);
      }
      
      private function mapKey(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc3_:RegExp = new RegExp("/","g");
         param1 = param1.replace(_loc3_,"#");
         return param1.replace(".","?");
      }
      
      public function getCvTagPath(param1:String) : String
      {
         var _loc2_:String = this.mapKey(param1);
         if(this._cvTagDict[_loc2_])
         {
            return this._cvTagDict[_loc2_];
         }
         return param1;
      }
   }
}

