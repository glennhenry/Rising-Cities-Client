package net.bigpoint.cityrama.view.application
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.preloader.ApplicationSettingsProxy;
   import net.bigpoint.cityrama.view.preloader.PreloaderMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ApplicationMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ApplicationMediator";
      
      private var _configProxy:ApplicationSettingsProxy;
      
      private var _layoutProxy:LayoutProxy;
      
      public function ApplicationMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this.component.addEventListener(FlexEvent.CREATION_COMPLETE,this.mainApplication_creationCompleteHandler);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ENERGY_PUSH_FIELD_EFFECT,ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED,ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE:
               facade.removeMediator(PreloaderMediator.NAME);
               this.component.finishInitializing();
               break;
            case ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED:
               if(this._layoutProxy.displayState != this.component.stage.displayState)
               {
               }
               break;
            case ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS:
               this.component.mainView.width = this._layoutProxy.width;
               this.component.mainView.height = this._layoutProxy.height;
               this.component.mainView.confirmationGroup.removeAllElements();
         }
      }
      
      private function mainApplication_creationCompleteHandler(param1:FlexEvent) : void
      {
         this.component.createDeferredContent();
         sendNotification(ApplicationNotificationConstants.APPLICATION_INITIALIZED,this.component);
         this._configProxy = ApplicationSettingsProxy(facade.retrieveProxy(ApplicationSettingsProxy.NAME));
         this._layoutProxy = LayoutProxy(facade.retrieveProxy(LayoutProxy.NAME));
         this.component.addEventListener(Event.RESIZE,this.onResize);
         this._layoutProxy.setDimensions(this.component.width,this.component.height);
      }
      
      private function onResize(param1:Event) : void
      {
         this._layoutProxy.setDimensions(this.component.width,this.component.height);
      }
      
      public function get component() : MainApplication
      {
         return super.viewComponent as MainApplication;
      }
   }
}

