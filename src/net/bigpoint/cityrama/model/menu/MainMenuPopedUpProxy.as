package net.bigpoint.cityrama.model.menu
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MainMenuPopedUpProxy extends Proxy
   {
      
      public static const NAME:String = "MainMenuPopedUpProxy";
      
      private var _activePoppupConnectedWithMainMenu:String;
      
      private var _popupProxy:PopupProxy;
      
      public function MainMenuPopedUpProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._popupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
      }
      
      public function get activePoppupConnectedWithMainMenu() : String
      {
         return this._activePoppupConnectedWithMainMenu;
      }
      
      public function set activePoppupConnectedWithMainMenu(param1:String) : void
      {
         this._activePoppupConnectedWithMainMenu = param1;
      }
      
      public function removeCurrentOpenPopup() : void
      {
         var _loc1_:PopupSettingsVo = null;
         if(this._activePoppupConnectedWithMainMenu)
         {
            if(!this._popupProxy)
            {
               this._popupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
            }
            _loc1_ = this._popupProxy.getPopupSettings(this._activePoppupConnectedWithMainMenu);
            if(_loc1_)
            {
               sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this._activePoppupConnectedWithMainMenu);
            }
            this._activePoppupConnectedWithMainMenu = null;
         }
      }
   }
}

