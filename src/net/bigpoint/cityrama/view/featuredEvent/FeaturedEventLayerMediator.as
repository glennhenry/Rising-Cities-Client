package net.bigpoint.cityrama.view.featuredEvent
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.cityWheel.FeaturedEventCityWheelMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.mysteryBuilding.FeaturedEventMysteryMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class FeaturedEventLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "FeaturedEventLayerMediator";
      
      private var _tabProxy:FeaturedLayerTabProxy;
      
      public function FeaturedEventLayerMediator(param1:String, param2:FeaturedEventLayer)
      {
         super(param1,param2);
         this.prepareProxies();
         this.setupListeners();
      }
      
      private function prepareProxies() : void
      {
         this._tabProxy = facade.retrieveProxy(FeaturedLayerTabProxy.NAME) as FeaturedLayerTabProxy;
      }
      
      private function setTabs() : void
      {
         this.component.tabs = this._tabProxy.tabs;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         this._tabProxy.selectedIndex = -1;
         facade.removeMediator(FeaturedEventCityWheelMediator.NAME);
         facade.removeMediator(FeaturedEventMysteryMediator.NAME);
      }
      
      private function removeListener() : void
      {
         sendNotification(VirtualTaskNotificationInterest.FEATURED_EVENT_LAYER_CLOSED);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         if(param1)
         {
            if(param1.newIndex != param1.oldIndex)
            {
               this._tabProxy.selectedIndex = param1.newIndex;
            }
         }
         this.cleanContainer();
         facade.sendNotification(ApplicationNotificationConstants.FEATURED_LAYER_TAB_CHANGE,this.component);
      }
      
      private function cleanContainer() : void
      {
         if(this.component.contentGroup)
         {
            this.component.contentGroup.removeAllElements();
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         this.setTabs();
         if(param1)
         {
            this._tabProxy.selectedIndex = param1 as int;
         }
         else
         {
            this._tabProxy.selectedIndex = FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX;
         }
         this.handleTabIndexChanged();
         if(this._tabProxy.selectedIndex != FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX)
         {
            this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
         }
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         this.component.tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
         this.component.tabBar.selectedIndex = this._tabProxy.selectedIndex;
      }
      
      public function get component() : FeaturedEventLayer
      {
         return super.viewComponent as FeaturedEventLayer;
      }
      
      override public function onRegister() : void
      {
         sendNotification(VirtualTaskNotificationInterest.FEATURED_EVENT_LAYER_OPENED);
      }
   }
}

