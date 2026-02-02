package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.model.developertools.DeveloperSettingsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FlashVarsProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FlashVarsProxy";
      
      private var _developerSettingsProxy:DeveloperSettingsProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function FlashVarsProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function get policyPort() : int
      {
         if(SystemManager.rawStage.loaderInfo.parameters.policyPort == null)
         {
            return 7777;
         }
         return parseInt(SystemManager.rawStage.loaderInfo.parameters.policyPort);
      }
      
      public function get marketMaintenance() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.marketMaintenance == null)
         {
            return false;
         }
         return true;
      }
      
      public function get pmsMaintenance() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.pmsMaintenance == null)
         {
            return false;
         }
         return true;
      }
      
      public function get newsscreenGfxId() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.newsscreenGfxId != null)
         {
            return SystemManager.rawStage.loaderInfo.parameters.newsscreenGfxId;
         }
         return "0";
      }
      
      public function get newsscreenLocaleId() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.newsscreenLocaId != null)
         {
            return SystemManager.rawStage.loaderInfo.parameters.newsscreenLocaId;
         }
         return "0";
      }
      
      public function get isChrome() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.isChrome != null)
         {
            return SystemManager.rawStage.loaderInfo.parameters.isChrome;
         }
         return false;
      }
      
      public function get keepAliveUrl() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.keepAliveUrl == null)
         {
            return null;
         }
         return SystemManager.rawStage.loaderInfo.parameters.keepAliveUrl;
      }
      
      public function get connectionUrl() : String
      {
         return SystemManager.rawStage.loaderInfo.parameters.connectionUrl;
      }
      
      public function get path() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.path == null)
         {
            return "";
         }
         return SystemManager.rawStage.loaderInfo.parameters.path;
      }
      
      public function get userId() : uint
      {
         if(SystemManager.rawStage.loaderInfo.parameters.uid == null)
         {
            return this.developerSettingsProxy.devUserId;
         }
         return SystemManager.rawStage.loaderInfo.parameters.uid;
      }
      
      public function get lang() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.lang == null)
         {
            return this.developerSettingsProxy.language;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.lang == "" || SystemManager.rawStage.loaderInfo.parameters.lang == " ")
         {
            return "en";
         }
         return SystemManager.rawStage.loaderInfo.parameters.lang;
      }
      
      public function get sid() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.sid == null)
         {
            return "";
         }
         return SystemManager.rawStage.loaderInfo.parameters.sid;
      }
      
      public function get supportURL() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.supportUrl == null)
         {
            return "";
         }
         return SystemManager.rawStage.loaderInfo.parameters.supportUrl;
      }
      
      public function get logOutURL() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.logoutUrl == null)
         {
            return "";
         }
         return SystemManager.rawStage.loaderInfo.parameters.logoutUrl;
      }
      
      public function get profileUri() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.profileUrl == null)
         {
            return "";
         }
         return SystemManager.rawStage.loaderInfo.parameters.profileUrl;
      }
      
      public function get forumURL() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.forumUrl == null)
         {
            return "";
         }
         return SystemManager.rawStage.loaderInfo.parameters.forumUrl;
      }
      
      public function get paymentURL() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.paymentUrl == null)
         {
            return "/?action=internalPayment";
         }
         return SystemManager.rawStage.loaderInfo.parameters.paymentUrl;
      }
      
      public function getPaymentURLSubcat(param1:String) : String
      {
         return param1;
      }
      
      public function get cvXmlPath() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.cvtagfilepath == null || SystemManager.rawStage.loaderInfo.parameters.cvtagfilepath == "")
         {
            return "xml/cvFileLinks.xml";
         }
         return SystemManager.rawStage.loaderInfo.parameters.cvtagfilepath;
      }
      
      public function get debugMode() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.debugMode == null || SystemManager.rawStage.loaderInfo.parameters.debugMode == "")
         {
            return true;
         }
         return SystemManager.rawStage.loaderInfo.parameters.debugMode == "true";
      }
      
      public function get debugLayerUrl() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.debugLayerUrl == null || SystemManager.rawStage.loaderInfo.parameters.debugLayerUrl == "")
         {
            return "xml/cvFileLinks.xml";
         }
         return SystemManager.rawStage.loaderInfo.parameters.debugLayerUrl;
      }
      
      public function get cvXmlRuntimePath() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.cvtagruntimepath == null || SystemManager.rawStage.loaderInfo.parameters.cvtagruntimepath == "")
         {
            return "xml/cvRuntimeLinks.xml";
         }
         return SystemManager.rawStage.loaderInfo.parameters.cvtagruntimepath;
      }
      
      public function get isIE() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.isIE == null)
         {
            return false;
         }
         switch(SystemManager.rawStage.loaderInfo.parameters.isIE)
         {
            case "true":
               return true;
            case "false":
               return false;
            default:
               return SystemManager.rawStage.loaderInfo.parameters.isIE as Boolean;
         }
      }
      
      public function get isSsoUser() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.isSsoUser == null)
         {
            return false;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.isSsoUser == "true")
         {
            return true;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.isSsoUser == "false")
         {
            return false;
         }
         return false;
      }
      
      private function get developerSettingsProxy() : DeveloperSettingsProxy
      {
         if(this._developerSettingsProxy == null)
         {
            this._developerSettingsProxy = DeveloperSettingsProxy(facade.retrieveProxy(DeveloperSettingsProxy.NAME));
         }
         return this._developerSettingsProxy;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._configProxy == null)
         {
            this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._configProxy;
      }
      
      public function get evoucherUrl() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.evoucherUrl == null)
         {
            if(this.developerSettingsProxy != null && this.developerSettingsProxy.devPort == 7777)
            {
               return "http://127.0.0.1:8080/evoucher";
            }
            return "/service/evoucher/redeemCode.php";
         }
         return SystemManager.rawStage.loaderInfo.parameters.evoucherUrl;
      }
      
      public function get unreadMessages() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.unreadMessages == null)
         {
            return false;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.unreadMessages == "true")
         {
            return true;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.unreadMessages == "false")
         {
            return false;
         }
         return false;
      }
      
      public function get offerSold() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.soldOffers == null)
         {
            return false;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.soldOffers == "true")
         {
            return true;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.soldOffers == "false")
         {
            return false;
         }
         return false;
      }
      
      public function get buffLevel() : int
      {
         if(SystemManager.rawStage.loaderInfo.parameters.buffLevel != null)
         {
            return int(SystemManager.rawStage.loaderInfo.parameters.buffLevel);
         }
         return 6;
      }
      
      public function get marketLevel() : int
      {
         if(SystemManager.rawStage.loaderInfo.parameters.marketLevel != null)
         {
            return int(SystemManager.rawStage.loaderInfo.parameters.marketLevel);
         }
         return 5;
      }
      
      public function get newsscreenLinkType() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.newsscreenLinkType != null)
         {
            return SystemManager.rawStage.loaderInfo.parameters.newsscreenLinkType;
         }
         return "";
      }
      
      public function get newsscreenLinkValue() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.newsscreenLinkValue != null)
         {
            return SystemManager.rawStage.loaderInfo.parameters.newsscreenLinkValue;
         }
         return "";
      }
      
      public function get improvementLevel() : int
      {
         if(SystemManager.rawStage.loaderInfo.parameters.improvmentLevel != null)
         {
            return int(SystemManager.rawStage.loaderInfo.parameters.improvementLevel);
         }
         return 7;
      }
      
      public function get boosterPackLevel() : int
      {
         if(SystemManager.rawStage.loaderInfo.parameters.boosterStoreLevel != null)
         {
            return int(SystemManager.rawStage.loaderInfo.parameters.boosterStoreLevel);
         }
         return 7;
      }
      
      public function get cinemaInMaintenance() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.cinemaMaintenance == null)
         {
            return false;
         }
         return true;
      }
      
      public function get cinemaDisabled() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.cinemaDisabled == null)
         {
            return false;
         }
         return true;
      }
      
      public function get upsellingEnabled() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.upsell == null)
         {
            return false;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.upsell == "true")
         {
            return true;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.upsell == "false")
         {
            return false;
         }
         return false;
      }
      
      public function get friendInviteDisabled() : Boolean
      {
         if(SystemManager.rawStage.loaderInfo.parameters.inviteDisabled == null)
         {
            return false;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.inviteDisabled == "true")
         {
            return true;
         }
         if(SystemManager.rawStage.loaderInfo.parameters.inviteDisabled == "false")
         {
            return false;
         }
         return false;
      }
      
      public function get pid() : int
      {
         if(SystemManager.rawStage.loaderInfo.parameters.projectId == null)
         {
            return 865;
         }
         return SystemManager.rawStage.loaderInfo.parameters.projectId;
      }
      
      public function get eventStreamContext() : String
      {
         if(SystemManager.rawStage.loaderInfo.parameters.eventStream == null)
         {
            return "eyJ1aWQiOjF9";
         }
         return SystemManager.rawStage.loaderInfo.parameters.eventStream;
      }
   }
}

