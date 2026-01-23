package net.bigpoint.cityrama.view.cityTreasury
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabContent;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class CityTreasuryMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CityTreasuryMediator";
      
      private var _tP:CityTreasuryTabProxy;
      
      private var _categoryIndex:int = 0;
      
      private var _packIndex:int = 0;
      
      public function CityTreasuryMediator(param1:String, param2:Object)
      {
         super(NAME,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListener();
         sendNotification(VirtualTaskNotificationInterest.CITY_TREASURY_OPENED);
      }
      
      private function setTabs() : void
      {
         this.component.treasuryTabData = this.tabProxy.tabs;
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
         this.component.addEventListener(CityTreasuryEvent.USER_CANT_AFFORD,this.handleUserCantAfford);
      }
      
      private function handleUserCantAfford(param1:CityTreasuryEvent) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         if(param1)
         {
            if(param1.newIndex != param1.oldIndex)
            {
               this.tabProxy.currentTabIndex = param1.newIndex;
               this._categoryIndex = 0;
               this._packIndex = 0;
            }
         }
         this.component.showBackButton = true;
         this.component.showBackButton = false;
         this.cleanContainer();
         facade.sendNotification(ApplicationNotificationConstants.CITY_TREASURY_TAB_CHANGED,{
            "container":this.component,
            "category":this._categoryIndex,
            "pack":this._packIndex
         });
      }
      
      private function cleanContainer() : void
      {
         if(this.component.contentGroup)
         {
            this.component.contentGroup.removeAllElements();
         }
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         this.tabProxy.currentTabIndex = -1;
         this.removeAllChildMediator();
         sendNotification(VirtualTaskNotificationInterest.CITY_TREASURY_CLOSED);
      }
      
      private function removeAllChildMediator() : void
      {
         facade.removeMediator(CityTreasuryCurrencyTabMediator.NAME);
         facade.removeMediator(CityTreasuryGoodsTabMediator.NAME);
         facade.removeMediator(CityTreasurySpecialTabMediator.NAME);
         facade.removeMediator(CityTreasuryPackTabMediator.NAME);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
         this.component.removeEventListener(CityTreasuryEvent.USER_CANT_AFFORD,this.handleUserCantAfford);
      }
      
      private function get component() : CityTreasuryLayer
      {
         return super.viewComponent as CityTreasuryLayer;
      }
      
      public function setData(param1:Object) : void
      {
         this.setTabs();
         this.tabProxy.currentTabIndex = param1.index as int;
         this._categoryIndex = param1.cat as int;
         this._packIndex = param1.pack as int;
         this.handleTabIndexChanged();
         this.component.tabBar.addEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
         this.component.tabBar.selectedIndex = this.tabProxy.currentTabIndex;
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         this.component.tabBar.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.setTabBarSelectedIndex);
         this.component.tabBar.selectedIndex = this.tabProxy.currentTabIndex;
      }
      
      private function get tabProxy() : CityTreasuryTabProxy
      {
         if(!this._tP)
         {
            this._tP = facade.retrieveProxy(CityTreasuryTabProxy.NAME) as CityTreasuryTabProxy;
         }
         return this._tP;
      }
      
      public function updateData(param1:Object) : void
      {
         var _loc2_:CityTreasuryTabContent = null;
         if(param1.index == this.tabProxy.currentTabIndex)
         {
            if(this.component.contentGroup.numElements > 0)
            {
               if(this.component.contentGroup.getElementAt(0) is CityTreasuryTabContent)
               {
                  _loc2_ = this.component.contentGroup.getElementAt(0) as CityTreasuryTabContent;
                  _loc2_.resetIndexes();
               }
            }
         }
         this.setData(param1);
      }
   }
}

