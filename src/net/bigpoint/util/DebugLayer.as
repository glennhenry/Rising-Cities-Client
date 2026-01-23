package net.bigpoint.util
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import net.bigpoint.cityrama.init.SystemManager;
   
   public class DebugLayer
   {
      
      private static var _instance:DebugLayer;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         _instance = new DebugLayer();
      }
      
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               this._debugLevel = ["SEND","RECEIVE","TRACE","ERROR","FATAL"];
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(SystemManager.rawStage.loaderInfo.parameters.uid == null);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc2_ || _loc1_)
                     {
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        if(_temp_6)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr008c:
                              §§pop();
                              if(!_loc1_)
                              {
                                 addr00a6:
                                 §§push(SystemManager.rawStage.loaderInfo.parameters.debugLayerUrl == null);
                                 if(!_loc1_)
                                 {
                                    addr00a5:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§goto(addr00b7);
                                    }
                                    §§goto(addr0109);
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00cc);
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr00a5);
               }
               addr00b7:
               this._userID = SystemManager.rawStage.loaderInfo.parameters.uid;
               if(_loc2_)
               {
                  this._debugLayerUrl = SystemManager.rawStage.loaderInfo.parameters.debugLayerUrl;
                  addr00cc:
                  if(_loc2_)
                  {
                     addr00eb:
                     if(SystemManager.rawStage.loaderInfo.parameters.debugMode != null)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr0109:
                           this._debugMode = true;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0109);
         }
         §§goto(addr00eb);
      }
      
      public static function get instance() : DebugLayer
      {
         return _instance;
      }
      
      public function track(param1:String = "", param2:int = 2) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(this._debugMode == false)
            {
               if(_loc4_ || Boolean(this))
               {
                  return;
               }
            }
            else
            {
               this._urlRequest = new URLRequest(this._debugLayerUrl);
               if(_loc4_ || Boolean(param2))
               {
                  this._urlRequest.method = URLRequestMethod.POST;
                  if(!_loc3_)
                  {
                     addr006b:
                     this._urlVariables = new URLVariables();
                     if(_loc4_ || Boolean(this))
                     {
                        addr008f:
                        this._urlVariables.playerId = this._userID;
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr00a7:
                           this._urlLoader = new URLLoader(this._urlRequest);
                           if(_loc4_)
                           {
                              if(this._urlLoader)
                              {
                                 if(!(_loc3_ && Boolean(param2)))
                                 {
                                    addr00d1:
                                    this._urlVariables.message = param1;
                                    if(_loc4_ || Boolean(this))
                                    {
                                       addr00e7:
                                       this._urlVariables.logLevel = this._debugLevel[param2];
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          §§goto(addr010f);
                                       }
                                       §§goto(addr0127);
                                    }
                                    addr010f:
                                    this._urlRequest.data = this._urlVariables;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr0127:
                                       this._urlLoader.load(this._urlRequest);
                                    }
                                    §§goto(addr0132);
                                 }
                                 §§goto(addr00e7);
                              }
                              addr0132:
                              return;
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr010f);
                     }
                     §§goto(addr00e7);
                  }
                  §§goto(addr008f);
               }
            }
            §§goto(addr00a7);
         }
         §§goto(addr006b);
      }
   }
}

