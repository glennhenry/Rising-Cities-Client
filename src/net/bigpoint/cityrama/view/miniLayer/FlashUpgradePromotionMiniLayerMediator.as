package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.MouseEvent;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.FlashUpgradePromotionMiniLayer;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FlashUpgradePromotionMiniLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "FlashUpgradePromotionMiniLayerMediator";
      
      public function FlashUpgradePromotionMiniLayerMediator(param1:String, param2:UIComponent)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this.component.closeButton.addEventListener(MouseEvent.CLICK,this.closeHandler);
         this.component.acceptButton.addEventListener(MouseEvent.CLICK,this.closeHandler);
         this.component.linkLabel.addEventListener(MouseEvent.CLICK,this.openExternalHandler);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
      }
      
      private function get component() : FlashUpgradePromotionMiniLayer
      {
         return getViewComponent() as FlashUpgradePromotionMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
      }
      
      private function closeHandler(param1:MouseEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      private function openExternalHandler(param1:MouseEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_LINK,"https://get.adobe.com/flashplayer/");
      }
   }
}

