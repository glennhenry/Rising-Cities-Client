package net.bigpoint.cityrama.view.mainMenu
{
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.*;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class OptionsMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "OptionsMenuMediator";
      
      private var _optionsProxy:OptionsMenuProxy;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _layoutProxy:LayoutProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _basementViewProxy:BasementViewProxy;
      
      public function OptionsMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
         this.prepareProxies();
         this.prepareInitValues();
      }
      
      private function prepareProxies() : void
      {
         this._optionsProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
         this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this._layoutProxy = facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._basementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
      }
      
      override public function getMediatorName() : String
      {
         return OptionsMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FIELD_ZOOMED,ApplicationNotificationConstants.RESET_BASE_MODE,ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.FIELD_ZOOMED:
               this.component.subMenueZoom.selected = this._optionsProxy.getOptionNavigationPointByName(OptionsMenuNavigationConstants.TOGGLE_ZOOM).selected;
               break;
            case ApplicationNotificationConstants.RESET_BASE_MODE:
               this.component.subMenueBasement.selected = false;
               this._optionsProxy.buttonChanged(OptionsMenuNavigationConstants.TOGGLE_BASES,false);
               this.handleBasementClick();
               break;
            case ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED:
               this.component.subMenueFullscreen.selected = this._layoutProxy.displayState == StageDisplayState.FULL_SCREEN;
               this._optionsProxy.buttonChanged(OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN,this._layoutProxy.displayState == StageDisplayState.FULL_SCREEN);
         }
      }
      
      public function get component() : OptionsGroupComponent
      {
         return super.viewComponent as OptionsGroupComponent;
      }
      
      private function setupListeners() : void
      {
         this.component.subMenueBasement.addEventListener(MouseEvent.CLICK,this.handleBasementClick);
         this.component.subMenueFullscreen.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueMoreOptions.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueSound.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueZoom.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueBasement.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
      }
      
      private function handleBasementClick(param1:MouseEvent = null) : void
      {
         if(param1)
         {
            this._soundProxy.playButtonClick();
         }
         if(this._basementViewProxy.isBaseViewEnabled != this.component.subMenueBasement.selected)
         {
            this._basementViewProxy.isBaseViewEnabled = this.component.subMenueBasement.selected;
            if(this._basementViewProxy.isBaseViewEnabled)
            {
               this._basementViewProxy.setByUserAxn = param1 != null;
            }
            this._basementViewProxy.changeBaseViewForAll();
         }
      }
      
      private function removeListeners() : void
      {
         this.component.subMenueBasement.removeEventListener(MouseEvent.CLICK,this.handleBasementClick);
         this.component.subMenueFullscreen.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueMoreOptions.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueSound.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueZoom.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
         this.component.subMenueBasement.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
      }
      
      private function prepareInitValues() : void
      {
         this.component.subMenueSound.selected = this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_SOUND);
         this.component.subMenueZoom.selected = false;
         this.component.subMenueMoreOptions.selected = false;
         this.component.subMenueBasement.selected = false;
         this.component.subMenueFullscreen.name = OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN;
         this.component.subMenueMoreOptions.name = OptionsMenuNavigationConstants.TOGGLE_SETTINGS;
         this.component.subMenueSound.name = OptionsMenuNavigationConstants.TOGGLE_SOUND;
         this.component.subMenueZoom.name = OptionsMenuNavigationConstants.TOGGLE_ZOOM;
         this.component.subMenueBasement.name = OptionsMenuNavigationConstants.TOGGLE_BASES;
      }
      
      private function optionSubButtonClicked(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:String = param1.target.name;
         var _loc3_:Boolean = this._localStorageProxy.isMainOptionSelected(_loc2_);
         if(_loc2_ != OptionsMenuNavigationConstants.TOGGLE_ZOOM)
         {
            this._optionsProxy.buttonChanged(_loc2_,!_loc3_);
         }
         if(_loc2_ == OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN)
         {
            this._layoutProxy.changeDisplayState();
         }
         else if(_loc2_ != OptionsMenuNavigationConstants.TOGGLE_BASES)
         {
            facade.sendNotification(_loc2_,!_loc3_);
         }
      }
   }
}

