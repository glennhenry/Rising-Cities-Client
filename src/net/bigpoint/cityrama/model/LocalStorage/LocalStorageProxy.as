package net.bigpoint.cityrama.model.LocalStorage
{
   import flash.net.SharedObject;
   import net.bigpoint.cityrama.model.LocalStorage.vo.LocalUserDataVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.util.CityramaLogger;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class LocalStorageProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "LocalStorageProxy";
      
      private static const ADDITIONAL_OPTIONS_STORAGE:String = "OptionsMenuPopupProxy";
      
      private const RISINGCITIES:String = "RCLocalData";
      
      private var _playerProxy:PlayerProxy;
      
      private var _userdata:LocalUserDataVo;
      
      private var _storageAdditionalOptionsMenu:SharedObject;
      
      private var _errorAdditionalOptionsMenu:Boolean;
      
      private var _storageMainOptionsMenu:SharedObject;
      
      private var _errorMainOptionsMenu:Boolean;
      
      private var _storageUserData:SharedObject;
      
      private var _errorStorageUserData:Boolean;
      
      public function LocalStorageProxy(param1:String = null, param2:Object = null)
      {
         var proxyName:String = param1;
         var $data:Object = param2;
         super(proxyName,$data);
         try
         {
            this._storageMainOptionsMenu = SharedObject.getLocal(OptionsMenuProxy.NAME);
            this._storageMainOptionsMenu.data[OptionsMenuNavigationConstants.TOGGLE_ZOOM] = false;
            this._storageMainOptionsMenu.data[OptionsMenuNavigationConstants.TOGGLE_BASES] = false;
         }
         catch(e:Error)
         {
            this._errorMainOptionsMenu = true;
            CityramaLogger.logger.fatal("Unable to allocate sharedObject: " + e.message);
         }
         try
         {
            this._storageAdditionalOptionsMenu = SharedObject.getLocal(ADDITIONAL_OPTIONS_STORAGE);
            this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION] = false;
            this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE] = false;
            this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION] = false;
            this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS] = true;
            this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS] = true;
            this._storageAdditionalOptionsMenu.data[OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS] = false;
         }
         catch(e:Error)
         {
            this._errorAdditionalOptionsMenu = true;
            CityramaLogger.logger.fatal("Unable to allocate shared object : " + e.message);
         }
         try
         {
            this._storageUserData = SharedObject.getLocal(this.RISINGCITIES + this.playerProxy.player.id);
         }
         catch(e:Error)
         {
            this._errorStorageUserData = true;
            CityramaLogger.logger.fatal("Unable to allocate shared object : " + e.message);
         }
      }
      
      override public function onRegister() : void
      {
      }
      
      override public function onRemove() : void
      {
      }
      
      private function set localData(param1:LocalUserDataVo) : void
      {
         var $data:LocalUserDataVo = param1;
         try
         {
            this.cookie.data.userdata = $data;
            this.cookie.flush();
         }
         catch(e:Error)
         {
            CityramaLogger.logger.fatal("LocalStorageProxy: Unable to flush userdata: " + e.message);
         }
      }
      
      public function get userdata() : LocalUserDataVo
      {
         if(this._userdata == null)
         {
            this._userdata = this.localData;
         }
         return this._userdata;
      }
      
      public function flush() : void
      {
         this.localData = this._userdata;
      }
      
      private function get localData() : LocalUserDataVo
      {
         var _loc1_:LocalUserDataVo = null;
         if(this.cookie != null)
         {
            if(this.cookie.data.userdata == null)
            {
               this.cookie.data.userdata = new LocalUserDataVo();
            }
            _loc1_ = new LocalUserDataVo(this.cookie.data.userdata);
         }
         return _loc1_;
      }
      
      private function get cookie() : SharedObject
      {
         try
         {
            return SharedObject.getLocal(this.RISINGCITIES + this.playerProxy.player.id);
         }
         catch(e:Error)
         {
         }
         return null;
      }
      
      private function get playerProxy() : PlayerProxy
      {
         if(this._playerProxy == null)
         {
            this._playerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         }
         return this._playerProxy;
      }
      
      public function get additionalOptionsCookie() : SharedObject
      {
         if(!this._errorAdditionalOptionsMenu)
         {
            return this._storageAdditionalOptionsMenu;
         }
         return null;
      }
      
      public function get mainOptionsMenuCookie() : SharedObject
      {
         if(this._errorMainOptionsMenu)
         {
            return this._storageMainOptionsMenu;
         }
         return null;
      }
      
      public function isAdditionalOptionSelected(param1:String) : Boolean
      {
         if(!this._errorAdditionalOptionsMenu && this._storageAdditionalOptionsMenu != null && this._storageAdditionalOptionsMenu.data[param1] != null)
         {
            return this._storageAdditionalOptionsMenu.data[param1];
         }
         return true;
      }
      
      public function isMainOptionSelected(param1:String) : Boolean
      {
         var item:String = param1;
         if(!this._errorMainOptionsMenu && this._storageMainOptionsMenu != null && this._storageMainOptionsMenu.data[item] == null)
         {
            this._storageMainOptionsMenu.data[item] = true;
            try
            {
               this._storageMainOptionsMenu.flush();
            }
            catch(e:Error)
            {
               CityramaLogger.logger.fatal("Unable to flush storage: " + e.message);
            }
         }
         else if(!this._errorMainOptionsMenu && this._storageMainOptionsMenu != null && this._storageMainOptionsMenu.data[item] != null)
         {
            return this._storageMainOptionsMenu.data[item];
         }
         return true;
      }
      
      public function flushMainOptions(param1:String, param2:Boolean) : void
      {
         var item:String = param1;
         var value:Boolean = param2;
         if(this._storageMainOptionsMenu != null)
         {
            this._storageMainOptionsMenu.data[item] = value;
         }
         try
         {
            this._storageMainOptionsMenu.flush();
         }
         catch(e:Error)
         {
            CityramaLogger.logger.fatal("Unable to flush storage: " + e.message);
         }
      }
      
      public function get viewedPlayfieldItems() : Vector.<Number>
      {
         if(this.userdata)
         {
            return this.userdata.viewedPlayfieldItemConfigIds;
         }
         return this.cookie.data.userdata.viewedPlayfieldItemConfigIds;
      }
      
      public function get viewedQuest() : Vector.<Number>
      {
         if(this.userdata)
         {
            return this.userdata.viewedQuests;
         }
         return this.cookie.data.userdata.viewedQuests;
      }
      
      public function resetCookies() : void
      {
         this.localData = new LocalUserDataVo();
         this.cookie.data.userdata = this.localData;
      }
   }
}

