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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "KeyboardInputActionProxy";
      }
      
      private var _applicationModeProxy:ApplicationModeProxy;
      
      private var _stage:Stage;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _shiftDown:Boolean;
      
      private var _altDown:Boolean;
      
      private var _isEnabled:Boolean = true;
      
      public function KeyboardInputActionProxy(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(!_loc1_)
            {
               addr0020:
               this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
               if(!(_loc1_ && _loc2_))
               {
                  this._applicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0092);
            }
            addr0073:
            this._stage = FlexGlobals.topLevelApplication.stage as Stage;
            if(!(_loc1_ && _loc1_))
            {
               addr0092:
               this.addEventListeners();
            }
            return;
         }
         §§goto(addr0020);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRemove();
            if(_loc2_ || _loc1_)
            {
               this.removeListeners();
            }
         }
      }
      
      private function addEventListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDownListener,false,100);
            if(!_loc1_)
            {
               addr0042:
               this._stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUpListener,false,100);
            }
            return;
         }
         §§goto(addr0042);
      }
      
      private function keyUpListener(param1:KeyboardEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._shiftDown = param1.shiftKey;
            if(_loc2_ || _loc3_)
            {
               this._altDown = param1.altKey;
            }
         }
      }
      
      private function keyDownListener(param1:KeyboardEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._shiftDown = param1.shiftKey;
            if(!_loc2_)
            {
               this._altDown = param1.altKey;
               if(_loc3_)
               {
                  sendNotification(ApplicationNotificationConstants.DEV_KEY_PRESSED,param1.keyCode);
                  addr004d:
                  if(_loc3_)
                  {
                     if(param1.keyCode == Keyboard.ESCAPE)
                     {
                        if(!_loc2_)
                        {
                           param1.stopImmediatePropagation();
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0096:
                              this.resetView();
                           }
                        }
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0096);
               }
               addr009b:
               return;
            }
         }
         §§goto(addr004d);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = false;
         if(_loc2_)
         {
            §§push(this._isEnabled);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     this._applicationModeProxy.mode = ApplicationModeProxy.MODE_NORMAL;
                     if(!(_loc3_ && _loc2_))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                        if(!(_loc3_ && _loc2_))
                        {
                           facade.sendNotification(ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS);
                           if(!_loc3_)
                           {
                              addr0080:
                              §§push(this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_BASES));
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    addr00ae:
                                    _loc1_ = §§pop();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr00bd);
                                    }
                                    §§goto(addr00ce);
                                 }
                                 addr00bd:
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00ae);
                           }
                        }
                        addr00bc:
                        if(_loc1_)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr00ce:
                              sendNotification(ApplicationNotificationConstants.RESET_BASE_MODE);
                           }
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr00d9);
            }
            §§goto(addr00ae);
         }
         addr00d9:
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDownListener);
         }
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && param1))
         {
            this._isEnabled = param1;
         }
      }
   }
}

