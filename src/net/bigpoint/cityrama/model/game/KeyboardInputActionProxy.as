package net.bigpoint.cityrama.model.game
{
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import mx.core.FlexGlobals;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class KeyboardInputActionProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "KeyboardInputActionProxy";
      
      private var _applicationModeProxy:ApplicationModeProxy;
      
      private var _stage:Stage;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _shiftDown:Boolean;
      
      private var _altDown:Boolean;
      
      private var _isEnabled:Boolean = true;
      
      public function KeyboardInputActionProxy(param1:Object = null)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this._applicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         this._stage = FlexGlobals.topLevelApplication.stage as Stage;
         this.addEventListeners();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
      }
      
      private function addEventListeners() : void
      {
         this._stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDownListener,false,100);
         this._stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUpListener,false,100);
      }
      
      private function keyUpListener(param1:KeyboardEvent) : void
      {
         this._shiftDown = param1.shiftKey;
         this._altDown = param1.altKey;
      }
      
      private function keyDownListener(param1:KeyboardEvent) : void
      {
         this._shiftDown = param1.shiftKey;
         this._altDown = param1.altKey;
         sendNotification(ApplicationNotificationConstants.DEV_KEY_PRESSED,param1.keyCode);
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            param1.stopImmediatePropagation();
            this.resetView();
         }
      }
      
      public function get shiftIsPressed() : Boolean
      {
         return this._shiftDown;
      }
      
      public function get altIsPressed() : Boolean
      {
         return this._altDown;
      }
      
      public function resetView() : void
      {
         var _loc1_:Boolean = false;
         if(this._isEnabled)
         {
            this._applicationModeProxy.mode = ApplicationModeProxy.MODE_NORMAL;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
            facade.sendNotification(ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS);
            _loc1_ = this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_BASES);
            if(_loc1_)
            {
               sendNotification(ApplicationNotificationConstants.RESET_BASE_MODE);
            }
         }
      }
      
      private function removeListeners() : void
      {
         this._stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDownListener);
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this._isEnabled = param1;
      }
   }
}

