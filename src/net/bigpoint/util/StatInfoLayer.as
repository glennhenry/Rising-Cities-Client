package net.bigpoint.util
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.init.SystemManager;
   
   public class StatInfoLayer
   {
      
      public static const STEN_GAMECLIENTLOADS:int = 51300;
      
      public static const STEN_GAMECLIENTLOADED:int = 51500;
      
      public static const STEN_TUTORIAL_STARTED:int = 51530;
      
      public static const STEN_TUTORIAL_FINISHED:int = 51570;
      
      public static const STEN_USER_ENTERED_GAME:int = 51800;
      
      public static const STEN_USER_FIRST_INGAME_ACTIVITY:int = 51900;
      
      public static const STEN_USER_DISCONNECTS:int = 59100;
      
      public static const STEN_USER_RECONNECTS:int = 59200;
      
      public static const LOADER_STARTS:int = 1000000;
      
      public static const LOADER_10:int = 1000010;
      
      public static const LOADER_20:int = 1000020;
      
      public static const LOADER_30:int = 1000030;
      
      public static const LOADER_40:int = 1000040;
      
      public static const LOADER_50:int = 1000050;
      
      public static const LOADER_60:int = 1000060;
      
      public static const LOADER_70:int = 1000070;
      
      public static const LOADER_80:int = 1000080;
      
      public static const LOADER_90:int = 1000090;
      
      public static const LOADER_100:int = 1000100;
      
      public static const WELCOME_SCREEN:int = 1000200;
      
      public static const DAILY_LOGIN:int = 1000250;
      
      public static const TUTORIAL_SKIP_BUT:int = 1000300;
      
      public static const TUTORIAL_CLICK_URBIE:int = 1000350;
      
      public static const TUTORIAL_CLICK_ENERGY:int = 1000400;
      
      public static const TUTORIAL_FIRST_REWARD_SCREEN:int = 1000450;
      
      public static const TUTORIAL_RP_CLICK_MENUE:int = 1000500;
      
      public static const TUTORIAL_RP_CLICK_SUBMENUE:int = 1000550;
      
      public static const TUTORIAL_RP_CLICK_ITEM:int = 1000600;
      
      public static const TUTORIAL_RP_PLACING_ITEM:int = 1000650;
      
      public static const URBIE_HARVEST_VISIBLE1:int = 1000700;
      
      public static const REWARDSCRREN_LEVEL1:int = 1000750;
      
      public static const LEVEL2_SCREEN_OK:int = 1000800;
      
      public static const CAMPING_CLICK_MENUE:int = 1001000;
      
      public static const CAMPING_CLICK_SUBMENUE_LEISURE:int = 1001100;
      
      public static const CAMPING_CLICK_ITEM:int = 1001200;
      
      public static const CAMPING_PLACING_ITEM:int = 1001300;
      
      public static const CAMPING_BOOST_SUCCEEDS:int = 1001400;
      
      public static const GENERATOR_CLICK_INVENTORY_MENUE:int = 1001500;
      
      public static const GENERATOR_PLACING_ITEM:int = 1001600;
      
      public static const GENERATOR_REWARD_SCREEN:int = 1001700;
      
      public static const QUEST_COTTAGE_INFOSCREEN:int = 10002000;
      
      public static const QUEST_COTTAGE_PLACING:int = 10002100;
      
      public static const QUEST_COTTAGE_REWARD_SCREEN:int = 10002200;
      
      public static const QUEST_COTTAGE_HARVEST_REWARD:int = 10002300;
      
      public static const QUEST_COTTAGE_HARVEST_INFOSCREEN:int = 10003000;
      
      public static const QUEST_SMALLFACOTRY_INFOSCREEN:int = 10003050;
      
      public static const QUEST_SMALLFACOTRY_PLACING:int = 10003100;
      
      public static const QUEST_SMALLFACOTRY_OPEN_SCREEN:int = 10003200;
      
      public static const QUEST_SMALLFACOTRY_PRODUCING_FIRSTDUCK:int = 10003300;
      
      public static const QUEST_SMALLFACOTRY_PRODUCING_SECONDDUCK:int = 10003400;
      
      public static const QUEST_SMALLFACOTRY_REWARD_SCREEN:int = 10003500;
      
      public static const QUEST_COMMERCIAL_INFOSCREEN:int = 10004000;
      
      public static const QUEST_COMMERCIAL_PLACING:int = 10004100;
      
      public static const QUEST_COMMERCIAL_SELLING_FIRSTDUCK:int = 10004200;
      
      public static const QUEST_COMMERCIAL_REWARD_SCREEN:int = 10004300;
      
      public static const QUEST_PUMPOIL_INFOSCREEN:int = 10005000;
      
      public static const QUEST_PUMPOIL_PLACING:int = 10005100;
      
      public static const QUEST_PUMPOIL_PLACING_REWARD_SCREEN:int = 10005200;
      
      public static const LEVEL3_SCREEN_OK:int = 10006000;
      
      public static const LEVEL4_SCREEN_OK:int = 10007000;
      
      public static const QUEST_PLAYGROUND_INFOSCREEN:int = 10008000;
      
      public static const QUEST_PLAYGROUND_PLACING:int = 10008100;
      
      public static const QUEST_PLAYGROUND_REWARD_SCREEN:int = 10008200;
      
      public static const QUEST_LAYER_EMPTY_INFO:int = 10009999;
      
      private static var _instance:StatInfoLayer = new StatInfoLayer();
      
      public static const NAME:String = "StatInfoProxy";
      
      private var _stopTracking:Boolean = false;
      
      private var _url_OUT:String = "/?action=internalFlashTracking&behTrackingFunnel=";
      
      private var _url:String = "";
      
      private var _islocal:Boolean = false;
      
      private var _doneDictionary:Dictionary;
      
      public function StatInfoLayer()
      {
         super();
         this._doneDictionary = new Dictionary();
         if(SystemManager.rawStage.loaderInfo.parameters.uid == null && SystemManager.rawStage.loaderInfo.parameters.sid == null)
         {
            this._islocal = true;
         }
         else
         {
            this._url_OUT = "/?action=internalFlashTracking&uId=" + SystemManager.rawStage.loaderInfo.parameters.uid + "&stepId=";
         }
         if(SystemManager.rawStage.loaderInfo.parameters.funnelTracking == null)
         {
            this._stopTracking = true;
         }
      }
      
      public static function get instance() : StatInfoLayer
      {
         return _instance;
      }
      
      public function executeMustHaveStep(param1:int) : void
      {
         this.executeCall(param1);
      }
      
      public function executeStep(param1:int) : void
      {
         if(this._stopTracking)
         {
            return;
         }
         this.executeCall(param1);
      }
      
      private function executeCall(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         if(this._doneDictionary.hasOwnProperty(String(param1)))
         {
            return;
         }
         this._doneDictionary[param1] = param1;
         if(this._islocal)
         {
            CityramaLogger.logger.debug("local StatInfoLayer::executeStep " + this._url_OUT + param1);
         }
         else
         {
            _loc2_ = new Object();
            _loc2_.url = this._url_OUT;
            _loc2_.step = param1;
            _loc3_ = JSON.stringify(_loc2_);
            DebugLayer.instance.track("{\"header\":\"" + "StatInfoLayer::executeStep " + "\",\"message\":" + _loc3_ + "}",3);
            this._url = this._url_OUT + param1;
            this.transmit();
         }
      }
      
      public function openProductionLayer() : void
      {
         if(this._stopTracking)
         {
            return;
         }
         if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_PLACING)))
         {
            this.executeStep(QUEST_SMALLFACOTRY_OPEN_SCREEN);
         }
      }
      
      public function goodRelatedStats(param1:int) : void
      {
         if(this._stopTracking)
         {
            return;
         }
         switch(param1)
         {
            case 100031:
               if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_PLACING)))
               {
                  this.executeStep(QUEST_SMALLFACOTRY_PRODUCING_FIRSTDUCK);
                  return;
               }
               if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_PRODUCING_FIRSTDUCK)))
               {
                  this.executeStep(QUEST_SMALLFACOTRY_PRODUCING_SECONDDUCK);
                  return;
               }
               if(this._doneDictionary.hasOwnProperty(String(QUEST_COMMERCIAL_PLACING)))
               {
                  this.executeStep(QUEST_COMMERCIAL_SELLING_FIRSTDUCK);
                  return;
               }
         }
      }
      
      public function inventarRelatedStats(param1:int) : void
      {
         if(this._stopTracking)
         {
            return;
         }
         switch(param1)
         {
            case 3001:
               if(this._doneDictionary.hasOwnProperty(String(QUEST_SMALLFACOTRY_INFOSCREEN)))
               {
                  this.executeStep(QUEST_SMALLFACOTRY_PLACING);
               }
               break;
            case 2003:
               if(this._doneDictionary.hasOwnProperty(String(QUEST_COMMERCIAL_INFOSCREEN)))
               {
                  this.executeStep(QUEST_COMMERCIAL_PLACING);
               }
               break;
            case 6013:
               this.executeStep(QUEST_PUMPOIL_PLACING);
               break;
            case 6011:
               this.executeStep(GENERATOR_PLACING_ITEM);
         }
      }
      
      public function buildingRelatedStats(param1:int) : void
      {
         if(this._stopTracking)
         {
            return;
         }
         switch(param1)
         {
            case 1002:
               if(this._doneDictionary.hasOwnProperty(String(QUEST_COTTAGE_INFOSCREEN)))
               {
                  this.executeStep(QUEST_COTTAGE_PLACING);
               }
               break;
            case 4022:
               if(this._doneDictionary.hasOwnProperty(String(QUEST_PLAYGROUND_INFOSCREEN)))
               {
                  this.executeStep(QUEST_PLAYGROUND_PLACING);
               }
         }
      }
      
      private function transmit() : void
      {
         var loader:URLLoader;
         var request:URLRequest;
         if(this._stopTracking)
         {
            return;
         }
         loader = new URLLoader();
         request = new URLRequest(this._url);
         try
         {
            loader.load(request);
         }
         catch(error:Error)
         {
            CityramaLogger.logger.debug("StatInfoLayer::executeStep " + _url);
         }
      }
      
      public function get stopTracking() : Boolean
      {
         return this._stopTracking;
      }
      
      public function set stopTracking(param1:Boolean) : void
      {
         this._stopTracking = param1;
      }
   }
}

