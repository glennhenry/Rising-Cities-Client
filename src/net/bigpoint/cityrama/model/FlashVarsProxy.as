package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.model.developertools.DeveloperSettingsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FlashVarsProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FlashVarsProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "FlashVarsProxy";
      }
      
      private var _developerSettingsProxy:DeveloperSettingsProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function FlashVarsProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1,param2);
         }
      }
      
      public function get policyPort() : int
      {
         return 8080;
      }
      
      public function get marketMaintenance() : Boolean
      {
         return false;
      }
      
      public function get pmsMaintenance() : Boolean
      {
         return false;
      }
      
      public function get newsscreenGfxId() : String
      {
         return "0";
      }
      
      public function get newsscreenLocaleId() : String
      {
         return "0";
      }
      
      public function get isChrome() : Boolean
      {
         return false;
      }
      
      public function get keepAliveUrl() : String
      {
         return null;
      }
      
      public function get connectionUrl() : String
      {
         return "RCApi";
      }
      
      public function get path() : String
      {
         return "";
      }
      
      public function get userId() : uint
      {
         return 10;
      }
      
      public function get lang() : String
      {
         return "en";
      }
      
      public function get sid() : String
      {
         return "test";
      }
      
      public function get supportURL() : String
      {
         return "https://google.com";
      }
      
      public function get logOutURL() : String
      {
         return "https://google.com";
      }
      
      public function get profileUri() : String
      {
         return "https://google.com";
      }
      
      public function get forumURL() : String
      {
         return "https://google.com";
      }
      
      public function get paymentURL() : String
      {
         return "https://google.com";
      }
      
      public function getPaymentURLSubcat(param1:String) : String
      {
         return param1;
      }
      
      public function get cvXmlPath() : String
      {
         return "xml/cvFileLinks.xml";
      }
      
      public function get debugMode() : Boolean
      {
         return false;
      }
      
      public function get debugLayerUrl() : String
      {
         return "";
      }
      
      public function get cvXmlRuntimePath() : String
      {
         return "xml/cvRuntimeLinks.xml";
      }
      
      public function get isIE() : Boolean
      {
         return false;
      }
      
      public function get isSsoUser() : Boolean
      {
         return false;
      }
      
      private function get developerSettingsProxy() : DeveloperSettingsProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._developerSettingsProxy);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr003b:
                     this._developerSettingsProxy = DeveloperSettingsProxy(facade.retrieveProxy(DeveloperSettingsProxy.NAME));
                  }
               }
               return this._developerSettingsProxy;
            }
         }
         §§goto(addr003b);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._configProxy);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0042:
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._configProxy;
            }
         }
         §§goto(addr0042);
      }
      
      public function get evoucherUrl() : String
      {
         return "/service/evoucher/redeemCode.php";
      }
      
      public function get unreadMessages() : Boolean
      {
         return false;
      }
      
      public function get offerSold() : Boolean
      {
         return false;
      }
      
      public function get buffLevel() : int
      {
         return 6;
      }
      
      public function get marketLevel() : int
      {
         return 5;
      }
      
      public function get newsscreenLinkType() : String
      {
         return "";
      }
      
      public function get newsscreenLinkValue() : String
      {
         return "";
      }
      
      public function get improvementLevel() : int
      {
         return 7;
      }
      
      public function get boosterPackLevel() : int
      {
         return 7;
      }
      
      public function get cinemaInMaintenance() : Boolean
      {
         return true;
      }
      
      public function get cinemaDisabled() : Boolean
      {
         return true;
      }
      
      public function get upsellingEnabled() : Boolean
      {
         return false;
      }
      
      public function get friendInviteDisabled() : Boolean
      {
         return false;
      }
      
      public function get pid() : int
      {
         return 865;
      }
      
      public function get eventStreamContext() : String
      {
         return "";
      }
   }
}

