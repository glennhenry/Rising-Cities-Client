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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "ImprovementStoreMainMediator";
      }
      
      public function ImprovementStoreMainMediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
         }
      }
      
      public function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.setImprovementBoosterData();
            if(!(_loc1_ && _loc1_))
            {
               this.setupListener();
            }
         }
      }
      
      public function removeRelevantListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.removeListener();
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.removeListener();
            if(_loc2_ || Boolean(this))
            {
               sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_CLOSED);
               if(_loc2_ || _loc2_)
               {
                  super.onRemove();
               }
            }
         }
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().addEventListener(ItemClickEvent.ITEM_CLICK,this.handleSlotClick);
               if(!_loc2_)
               {
                  addr0047:
                  this.component.addEventListener(PaperPopupWindow.BACK,this.handleBackClick);
                  addr0043:
               }
               return;
            }
            §§goto(addr0047);
         }
         §§goto(addr0043);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && Boolean(this)))
            {
               §§pop().removeEventListener(ItemClickEvent.ITEM_CLICK,this.handleSlotClick);
               if(_loc1_)
               {
                  addr0047:
                  this.component.removeEventListener(PaperPopupWindow.BACK,this.handleBackClick);
               }
               §§goto(addr0054);
            }
            §§goto(addr0047);
         }
         addr0054:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT,ApplicationNotificationConstants.IMPROVEMENT_STORE_UPDATE_REWARDS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.getName());
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() as String);
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = _loc2_;
         if(!_loc5_)
         {
            §§push(ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00be:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr00d6);
                  }
                  else
                  {
                     §§goto(addr00ba);
                  }
               }
               addr00ba:
               §§goto(addr00b9);
            }
            addr00b9:
            if(ApplicationNotificationConstants.IMPROVEMENT_STORE_UPDATE_REWARDS === _loc3_)
            {
               §§goto(addr00be);
            }
            else
            {
               §§push(2);
            }
            addr00d6:
            switch(§§pop())
            {
               case 0:
                  this.cleanContainers();
                  if(_loc4_ || Boolean(param1))
                  {
                  }
                  break;
               case 1:
                  this.showRewardAnimation();
                  if(_loc5_ && Boolean(this))
                  {
                  }
            }
            return;
         }
         §§goto(addr00be);
      }
      
      private function showRewardAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_ANIMATION,{"container":this.component});
            if(!(_loc2_ && Boolean(this)))
            {
               this.component.showBackButton = true;
            }
         }
      }
      
      private function handleSlotClick(param1:ItemClickEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:BoosterpackVo = param1.item as BoosterpackVo;
         if(_loc4_ || Boolean(_loc2_))
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            if(!_loc3_)
            {
               facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CONTENT_CHANGED,{
                  "container":this.component,
                  "content":_loc2_.slotId
               });
               if(!(_loc3_ && _loc3_))
               {
                  addr007c:
                  this.component.showBackButton = true;
               }
            }
            return;
         }
         §§goto(addr007c);
      }
      
      private function handleBackClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CONTENT_CHANGED,{
               "container":this.component,
               "content":null
            });
            if(_loc3_)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(_loc3_ || Boolean(this))
               {
                  addr0070:
                  this.component.showBackButton = false;
               }
            }
            return;
         }
         §§goto(addr0070);
      }
      
      private function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      private function setImprovementBoosterData() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CONTENT_CHANGED,{
               "container":this.component,
               "content":null
            });
            if(!_loc1_)
            {
               this.component.showBackButton = false;
            }
         }
      }
      
      private function cleanContainers() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               if(§§pop().contentGroup)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr0041:
                     this.component.contentGroup.removeAllElements();
                  }
               }
               §§goto(addr0048);
            }
            §§goto(addr0041);
         }
         addr0048:
      }
   }
}

