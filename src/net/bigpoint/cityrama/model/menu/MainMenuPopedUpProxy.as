package net.bigpoint.cityrama.model.menu
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MainMenuPopedUpProxy extends Proxy
   {
      
      public static const NAME:String = "MainMenuPopedUpProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "MainMenuPopedUpProxy";
      }
      
      private var _activePoppupConnectedWithMainMenu:String;
      
      private var _popupProxy:PopupProxy;
      
      public function MainMenuPopedUpProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(param1)))
            {
               this._popupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
            }
         }
      }
      
      public function get activePoppupConnectedWithMainMenu() : String
      {
         return this._activePoppupConnectedWithMainMenu;
      }
      
      public function set activePoppupConnectedWithMainMenu(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._activePoppupConnectedWithMainMenu = param1;
         }
      }
      
      public function removeCurrentOpenPopup() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PopupSettingsVo = null;
         if(_loc3_ || _loc2_)
         {
            if(this._activePoppupConnectedWithMainMenu)
            {
               if(_loc3_ || _loc2_)
               {
                  addr0039:
                  §§push(this._popupProxy);
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this._popupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
                        }
                     }
                     addr0075:
                     §§push(this._popupProxy);
                  }
                  _loc1_ = §§pop().getPopupSettings(this._activePoppupConnectedWithMainMenu);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(_loc1_)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr00b0:
                           sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this._activePoppupConnectedWithMainMenu);
                           if(_loc3_)
                           {
                              addr00c3:
                              this._activePoppupConnectedWithMainMenu = null;
                           }
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr0075);
            }
            addr00c8:
            return;
         }
         §§goto(addr0039);
      }
   }
}

