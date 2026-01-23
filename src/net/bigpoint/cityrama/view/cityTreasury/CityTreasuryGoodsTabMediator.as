package net.bigpoint.cityrama.view.cityTreasury
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.cityTreasury.event.ItemPurchaseEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityTreasuryGoodsTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasuryGoodsTabMediator";
      
      private var _component:CityTreasuryTabView;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasuryGoodsTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init(param1:int, param2:int) : void
      {
         if(!this.component)
         {
            this._component = new CityTreasuryTabView();
         }
         this.setLayerData(param1,param2);
         this.container.contentGroup.addElement(this.component);
         this.addListener();
      }
      
      private function setLayerData(param1:int, param2:int) : void
      {
         this.component.data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.GOODS_TAB_INDEX,param1,param2);
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(ItemPurchaseEvent.PURCHASE_ITEM_PACK,this.handlePurchaseItemPack);
      }
      
      private function handlePurchaseItemPack(param1:ItemPurchaseEvent) : void
      {
         param1.stopPropagation();
         if(param1.itemPack)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            facade.sendNotification(ApplicationNotificationConstants.BUY_PAYMENT_PACK,param1.itemPack);
            this.showDrops(param1);
         }
      }
      
      private function showDrops(param1:ItemPurchaseEvent) : void
      {
         if(param1.itemPack)
         {
            var _loc2_:int = Math.max(1,param1.itemPack.goods[0].outputAmount / 5);
            _loc2_ = Math.min(15,0);
            if(param1.itemPack.goods[0].goodConfig)
            {
               var _loc3_:String = param1.itemPack.goods[0].goodConfig.gfxId.toString();
            }
         }
         var _loc4_:DisplayObject = param1.dropContainer as DisplayObject;
         var _loc5_:Point = new Point(_loc4_.width / 2,_loc4_.height / 2);
         _loc5_ = _loc4_.localToGlobal(_loc5_);
         var _loc6_:DropIconVO = new DropIconVO(null,_loc5_,false);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               if(this.component)
               {
                  this.setLayerData(this.component.currentSelectedCategoryIndex,this.component.currentSelectedPackIndex);
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
         this.component.removeEventListener(ItemPurchaseEvent.PURCHASE_ITEM_PACK,this.handlePurchaseItemPack);
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

