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
      
      private var _soundProxy:SoundProxy;
      
      public function CursorMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.setupListeners();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
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
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
         this.component.tools.selection = null;
         this.component.visible = false;
         this.component.includeInLayout = false;
      }
      
      public function get component() : CursorGroupComponent
      {
         return super.viewComponent as CursorGroupComponent;
      }
      
      private function setupListeners() : void
      {
         this.component.hipButton.addEventListener(MouseEvent.CLICK,this.handleHIPClick);
         this.component.moveButton.addEventListener(MouseEvent.CLICK,this.handleMoveClick);
         this.component.removeButton.addEventListener(MouseEvent.CLICK,this.handleRemoveClick);
      }
      
      private function removeListeners() : void
      {
         this.component.hipButton.removeEventListener(MouseEvent.CLICK,this.handleHIPClick);
         this.component.moveButton.removeEventListener(MouseEvent.CLICK,this.handleMoveClick);
         this.component.removeButton.removeEventListener(MouseEvent.CLICK,this.handleRemoveClick);
      }
      
      private function handleHIPClick(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         _loc2_.mode = ApplicationModeProxy.MODE_IMPROVEMENT;
      }
      
      private function handleMoveClick(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         _loc2_.mode = ApplicationModeProxy.MODE_MOVE;
      }
      
      private function handleRemoveClick(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         _loc2_.mode = ApplicationModeProxy.MODE_DESTROY;
      }
   }
}

