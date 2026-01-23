package net.bigpoint.cityrama.view.cityTreasury
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryTabVo;
   import net.bigpoint.cityrama.view.cityTreasury.event.BonusCodeEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityTreasurySpecialTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasurySpecialTabMediator";
      
      private var _component:CityTreasuryTabView;
      
      private var _data:CityTreasuryTabVo;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasurySpecialTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init(param1:int) : void
      {
         if(!this.component)
         {
            this._component = new CityTreasuryTabView();
         }
         this.setLayerData(param1);
         this.container.contentGroup.addElement(this.component);
         this.addListener();
      }
      
      private function setLayerData(param1:int, param2:String = "") : void
      {
         this._data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.SPECIALS_TAB_INDEX,param1,0,param2);
         this.component.data = this._data;
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleButtonClicked);
         this.component.addEventListener(BonusCodeEvent.BONUS_CODE_SEND,this.handleSendBonusCode);
      }
      
      private function handleSendBonusCode(param1:BonusCodeEvent) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.PAYMENT_SEND_BONUSCODE,{
            "bonus":param1.bonusCode,
            "popup":false
         });
      }
      
      private function handleButtonClicked(param1:CityTreasuryEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         param1.stopPropagation();
         if(param1.contentType == CityTreasuryContentComponent.TYPE_CASH_FOR_ACTION)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_BYJSCOMMAND,CityTreasuryProxy.PAYMENT_CATEGORY_CASH_FOR_ACTION);
         }
         else if(param1.contentType == CityTreasuryContentComponent.TYPE_RENTCOLLECTOR)
         {
            _loc2_ = "";
            _loc3_ = false;
            if(param1.selectedPack)
            {
               _loc2_ = param1.selectedPack.key;
               sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
                  "category":CityTreasuryProxy.PAYMENT_CATEGORY_EXTERNAL,
                  "itemKey":_loc2_,
                  "deeplink":_loc3_
               });
            }
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.BONUS_CODE_FAIL];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.BONUS_CODE_FAIL:
               if(this.component)
               {
                  if(this._data.categories[this.component.currentSelectedCategoryIndex].skinStyle == CityTreasuryContentComponent.TYPE_BONUS_CODE)
                  {
                     this.setLayerData(this.component.currentSelectedCategoryIndex,param1.getBody() as String);
                  }
               }
         }
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleButtonClicked);
      }
      
      private function get container() : CityTreasuryLayer
      {
         return super.viewComponent as CityTreasuryLayer;
      }
      
      private function get component() : CityTreasuryTabView
      {
         return this._component as CityTreasuryTabView;
      }
      
      private function get treasuryProxy() : CityTreasuryProxy
      {
         if(!this._cTP)
         {
            this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         }
         return this._cTP;
      }
   }
}

