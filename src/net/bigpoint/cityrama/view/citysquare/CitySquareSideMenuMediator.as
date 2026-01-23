package net.bigpoint.cityrama.view.citysquare
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareSideMenu;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareSideMenuTooltip;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CitySquareSideMenuMediator";
      
      private var _sideMenuTooltip:CitySquareSideMenuTooltip;
      
      private var _evP:EventProxy;
      
      public function CitySquareSideMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListener();
         this.setVisibility();
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(CitySquareSideMenu.CLICK_INFO,this.handleClick);
         this.component.addEventListener(CitySquareSideMenu.SHOW_INFO,this.handleShow);
         this.component.addEventListener(CitySquareSideMenu.HIDE_INFO,this.handleHide);
      }
      
      private function handleHide(param1:Event) : void
      {
         param1.stopPropagation();
         this.component.menuContainer.removeAllElements();
      }
      
      private function handleShow(param1:Event) : void
      {
         param1.stopPropagation();
         if(!this._sideMenuTooltip)
         {
            this._sideMenuTooltip = new CitySquareSideMenuTooltip();
         }
         this.component.menuContainer.addElement(this._sideMenuTooltip);
      }
      
      private function handleClick(param1:Event) : void
      {
         param1.stopPropagation();
         this.component.menuContainer.removeAllElements();
         sendNotification(ApplicationNotificationConstants.CITYSQUARE_CLICKED);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.EVENTS_CHANGED:
               this.setVisibility();
         }
      }
      
      private function setVisibility() : void
      {
         this.component.includeInLayout = this.component.visible = this.showSideMenu();
      }
      
      private function showSideMenu() : Boolean
      {
         if(this.eventProxy.currentRunningEventID != 0)
         {
            return true;
         }
         return false;
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(CitySquareSideMenu.CLICK_INFO,this.handleClick);
         this.component.removeEventListener(CitySquareSideMenu.SHOW_INFO,this.handleShow);
         this.component.removeEventListener(CitySquareSideMenu.HIDE_INFO,this.handleHide);
      }
      
      public function get component() : CitySquareSideMenu
      {
         return super.viewComponent as CitySquareSideMenu;
      }
      
      private function get eventProxy() : EventProxy
      {
         if(!this._evP)
         {
            this._evP = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         }
         return this._evP;
      }
   }
}

