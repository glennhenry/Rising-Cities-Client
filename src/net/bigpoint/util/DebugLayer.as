package net.bigpoint.util
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import net.bigpoint.cityrama.init.SystemManager;
   
   public class DebugLayer
   {
      
      private static var _instance:DebugLayer = new DebugLayer();
      
      private var _urlLoader:URLLoader;
      
      private var _urlRequest:URLRequest;
      
      private var _urlVariables:URLVariables;
      
      private var _path:String = "";
      
      private var _debugLevel:Array;
      
      private var _debugMode:Boolean = false;
      
      private var _userID:uint = 0;
      
      private var _debugLayerUrl:String = "";
      
      public function DebugLayer()
      {
         super();
         this._debugLevel = ["SEND","RECEIVE","TRACE","ERROR","FATAL"];
         if(SystemManager.rawStage.loaderInfo.parameters.uid != null && SystemManager.rawStage.loaderInfo.parameters.debugLayerUrl != null)
         {
            this._userID = SystemManager.rawStage.loaderInfo.parameters.uid;
            this._debugLayerUrl = SystemManager.rawStage.loaderInfo.parameters.debugLayerUrl;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.debugMode != null)
         {
            this._debugMode = true;
         }
      }
      
      public static function get instance() : DebugLayer
      {
         return _instance;
      }
      
      public function track(param1:String = "", param2:int = 2) : void
      {
         if(this._debugMode == false)
         {
            return;
         }
         this._urlRequest = new URLRequest(this._debugLayerUrl);
         this._urlRequest.method = URLRequestMethod.POST;
         this._urlVariables = new URLVariables();
         this._urlVariables.playerId = this._userID;
         this._urlLoader = new URLLoader(this._urlRequest);
         if(this._urlLoader)
         {
            this._urlVariables.message = param1;
            this._urlVariables.logLevel = this._debugLevel[param2];
            this._urlRequest.data = this._urlVariables;
            this._urlLoader.load(this._urlRequest);
         }
      }
   }
}

