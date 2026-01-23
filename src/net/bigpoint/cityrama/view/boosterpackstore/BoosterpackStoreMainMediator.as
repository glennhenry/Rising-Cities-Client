package net.bigpoint.cityrama.view.boosterpackstore
{
   import flash.events.Event;
   import mx.events.ItemClickEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackStoreMainMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "BoosterpackStoreMainMediator";
      
      public function BoosterpackStoreMainMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function init() : void
      {
         this.setBoosterData();
         this.setupListener();
      }
      
      public function removeRelevantListener() : void
      {
         this.removeListener();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_CLOSED);
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(ItemClickEvent.ITEM_CLICK,this.handleSlotClick);
         this.component.addEventListener(PaperPopupWindow.BACK,this.handleBackClick);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(ItemClickEvent.ITEM_CLICK,this.handleSlotClick);
         this.component.removeEventListener(PaperPopupWindow.BACK,this.handleBackClick);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.BOOSTERPACKBOOK_UPDATE_REWARD,ApplicationNotificationConstants.BOOSTERPACKBOOK_CLEAN_CONTENT];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:String = param1.getName() as String;
         switch(_loc2_)
         {
            case ApplicationNotificationConstants.BOOSTERPACKBOOK_UPDATE_REWARD:
               this.showRewardAnimation();
               break;
            case ApplicationNotificationConstants.BOOSTERPACKBOOK_CLEAN_CONTENT:
               this.cleanContainers();
         }
      }
      
      private function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      private function showRewardAnimation() : void
      {
         facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_ANIMATION,{"container":this.component});
         this.component.showBackButton = true;
      }
      
      public function setBoosterData() : void
      {
         facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
            "container":this.component,
            "content":null
         });
         this.component.showBackButton = false;
      }
      
      private function handleSlotClick(param1:ItemClickEvent) : void
      {
         var _loc2_:BoosterpackVo = param1.item as BoosterpackVo;
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
            "container":this.component,
            "content":_loc2_.slotId,
            "type":_loc2_.type
         });
         this.component.showBackButton = true;
      }
      
      private function handleBackClick(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
            "container":this.component,
            "content":null
         });
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.component.showBackButton = false;
      }
      
      private function cleanContainers() : void
      {
         if(this.component.contentGroup)
         {
            this.component.contentGroup.removeAllElements();
         }
      }
   }
}

