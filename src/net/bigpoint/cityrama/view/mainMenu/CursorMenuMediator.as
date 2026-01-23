package net.bigpoint.cityrama.view.mainMenu
{
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.CursorGroupComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CursorMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CursorMenuMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "CursorMenuMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      public function CursorMenuMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
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
            if(!(_loc1_ && Boolean(this)))
            {
               addr0032:
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.setupListeners();
               }
            }
            return;
         }
         §§goto(addr0032);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.onRemove();
            if(!_loc1_)
            {
               this.removeListeners();
            }
         }
      }
      
      override public function getMediatorName() : String
      {
         return CursorMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.APPLICATION_MODE_NORMAL_INITIALIZE,ApplicationNotificationConstants.APPLICATION_MODE_BUILD_INITIALIZE,ApplicationNotificationConstants.APPLICATION_MODE_DESTROY_INITIALIZE,ApplicationNotificationConstants.APPLICATION_MODE_MOVE_INITIALIZE,ApplicationNotificationConstants.POPUP_REMOVE,ApplicationNotificationConstants.POPUP_REMOVE_ALL];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
         §§push(this.component);
         if(_loc4_ || Boolean(_loc2_))
         {
            §§pop().tools.selection = null;
            if(_loc4_ || Boolean(param1))
            {
               §§push(this.component);
               if(_loc4_ || Boolean(this))
               {
                  §§push(false);
                  if(!_loc3_)
                  {
                     §§pop().visible = §§pop();
                     if(_loc4_)
                     {
                        addr007d:
                        this.component.includeInLayout = false;
                        addr007c:
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr007c);
            }
            addr00a8:
            return;
         }
         §§goto(addr007c);
      }
      
      public function get component() : CursorGroupComponent
      {
         return super.viewComponent as CursorGroupComponent;
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(_loc2_ || _loc2_)
            {
               §§pop().hipButton.addEventListener(MouseEvent.CLICK,this.handleHIPClick);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(_loc2_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0074);
            }
            addr005f:
            §§pop().moveButton.addEventListener(MouseEvent.CLICK,this.handleMoveClick);
            if(!_loc1_)
            {
               addr0077:
               this.component.removeButton.addEventListener(MouseEvent.CLICK,this.handleRemoveClick);
               addr0074:
            }
            return;
         }
         §§goto(addr0074);
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || _loc2_)
            {
               §§pop().hipButton.removeEventListener(MouseEvent.CLICK,this.handleHIPClick);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.component);
                  if(!_loc2_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr007b);
            }
            addr005e:
            §§pop().moveButton.removeEventListener(MouseEvent.CLICK,this.handleMoveClick);
            if(_loc1_ || Boolean(this))
            {
               addr007e:
               this.component.removeButton.removeEventListener(MouseEvent.CLICK,this.handleRemoveClick);
               addr007b:
            }
            §§goto(addr008e);
         }
         addr008e:
      }
      
      private function handleHIPClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(!_loc4_)
         {
            _loc2_.mode = ApplicationModeProxy.MODE_IMPROVEMENT;
         }
      }
      
      private function handleMoveClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.mode = ApplicationModeProxy.MODE_MOVE;
         }
      }
      
      private function handleRemoveClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(_loc3_)
         {
            _loc2_.mode = ApplicationModeProxy.MODE_DESTROY;
         }
      }
   }
}

