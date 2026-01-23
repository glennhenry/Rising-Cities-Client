package net.bigpoint.cityrama.view.homeImprovement.improvementStore
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
   
   public class ImprovementStoreMainMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ImprovementStoreMainMediator";
      
      public function ImprovementStoreMainMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function init() : void
      {
         this.setImprovementBoosterData();
         this.setupListener();
      }
      
      public function removeRelevantListener() : void
      {
         this.removeListener();
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_CLOSED);
         super.onRemove();
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
         return [ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT,ApplicationNotificationConstants.IMPROVEMENT_STORE_UPDATE_REWARDS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:String = param1.getName() as String;
         switch(_loc2_)
         {
            case ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT:
               this.cleanContainers();
               break;
            case ApplicationNotificationConstants.IMPROVEMENT_STORE_UPDATE_REWARDS:
               this.showRewardAnimation();
         }
      }
      
      private function showRewardAnimation() : void
      {
         facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_ANIMATION,{"container":this.component});
         this.component.showBackButton = true;
      }
      
      private function handleSlotClick(param1:ItemClickEvent) : void
      {
         var _loc2_:BoosterpackVo = param1.item as BoosterpackVo;
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CONTENT_CHANGED,{
            "container":this.component,
            "content":_loc2_.slotId
         });
         this.component.showBackButton = true;
      }
      
      private function handleBackClick(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CONTENT_CHANGED,{
            "container":this.component,
            "content":null
         });
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.component.showBackButton = false;
      }
      
      private function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      private function setImprovementBoosterData() : void
      {
         facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CONTENT_CHANGED,{
            "container":this.component,
            "content":null
         });
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

