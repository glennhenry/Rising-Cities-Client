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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || FlashUpgradePromotionMiniLayerMediator)
      {
         NAME = "FlashUpgradePromotionMiniLayerMediator";
      }
      
      public function FlashUpgradePromotionMiniLayerMediator(param1:String, param2:UIComponent)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().closeButton.addEventListener(MouseEvent.CLICK,this.closeHandler);
               if(_loc2_)
               {
                  addr0046:
                  §§push(this.component);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§pop().acceptButton.addEventListener(MouseEvent.CLICK,this.closeHandler);
                     if(_loc2_ || Boolean(this))
                     {
                        addr0082:
                        this.component.linkLabel.addEventListener(MouseEvent.CLICK,this.openExternalHandler);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0082);
               }
               addr0092:
               return;
            }
            §§goto(addr0082);
         }
         §§goto(addr0046);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRemove();
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      private function openExternalHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_LINK,"https://get.adobe.com/flashplayer/");
         }
      }
   }
}

