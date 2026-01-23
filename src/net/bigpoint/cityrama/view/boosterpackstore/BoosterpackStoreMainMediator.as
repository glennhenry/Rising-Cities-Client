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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && BoosterpackStoreMainMediator))
      {
         NAME = "BoosterpackStoreMainMediator";
      }
      
      public function BoosterpackStoreMainMediator(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(param1,param2);
         }
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.setBoosterData();
            if(!(_loc2_ && _loc1_))
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
         if(_loc2_)
         {
            this.removeListener();
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.onRemove();
            if(!(_loc1_ && _loc1_))
            {
               this.removeListener();
               if(!_loc1_)
               {
                  sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_CLOSED);
               }
            }
         }
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               §§pop().addEventListener(ItemClickEvent.ITEM_CLICK,this.handleSlotClick);
               if(_loc1_ || _loc1_)
               {
                  addr004f:
                  this.component.addEventListener(PaperPopupWindow.BACK,this.handleBackClick);
               }
               §§goto(addr005d);
            }
            §§goto(addr004f);
         }
         addr005d:
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().removeEventListener(ItemClickEvent.ITEM_CLICK,this.handleSlotClick);
               if(_loc1_)
               {
                  addr004f:
                  this.component.removeEventListener(PaperPopupWindow.BACK,this.handleBackClick);
               }
               §§goto(addr005d);
            }
            §§goto(addr004f);
         }
         addr005d:
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.BOOSTERPACKBOOK_UPDATE_REWARD,ApplicationNotificationConstants.BOOSTERPACKBOOK_CLEAN_CONTENT];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.getName());
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(§§pop() as String);
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = _loc2_;
         if(!_loc4_)
         {
            §§push(ApplicationNotificationConstants.BOOSTERPACKBOOK_UPDATE_REWARD);
            if(_loc5_ || _loc3_)
            {
               §§push(_loc3_);
               if(!(_loc4_ && Boolean(param1)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr00cc:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr00e4);
                  }
                  else
                  {
                     §§goto(addr00c8);
                  }
               }
               addr00c8:
               §§goto(addr00c7);
            }
            addr00c7:
            if(ApplicationNotificationConstants.BOOSTERPACKBOOK_CLEAN_CONTENT === _loc3_)
            {
               §§goto(addr00cc);
            }
            else
            {
               §§push(2);
            }
            addr00e4:
            switch(§§pop())
            {
               case 0:
                  this.showRewardAnimation();
                  if(_loc4_)
                  {
                  }
                  break;
               case 1:
                  this.cleanContainers();
                  if(_loc4_ && Boolean(param1))
                  {
                  }
            }
            return;
         }
         §§goto(addr00cc);
      }
      
      private function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      private function showRewardAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_ANIMATION,{"container":this.component});
            if(!(_loc2_ && _loc1_))
            {
               addr0040:
               this.component.showBackButton = true;
            }
            return;
         }
         §§goto(addr0040);
      }
      
      public function setBoosterData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
               "container":this.component,
               "content":null
            });
            if(_loc1_)
            {
               this.component.showBackButton = false;
            }
         }
      }
      
      private function handleSlotClick(param1:ItemClickEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:BoosterpackVo = param1.item as BoosterpackVo;
         if(!(_loc3_ && Boolean(param1)))
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            if(_loc4_)
            {
               facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
                  "container":this.component,
                  "content":_loc2_.slotId,
                  "type":_loc2_.type
               });
               §§goto(addr004e);
            }
            §§goto(addr0088);
         }
         addr004e:
         if(!(_loc3_ && Boolean(param1)))
         {
            addr0088:
            this.component.showBackButton = true;
         }
      }
      
      private function handleBackClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
               "container":this.component,
               "content":null
            });
            if(!(_loc3_ && Boolean(param1)))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(!_loc3_)
               {
                  addr005a:
                  this.component.showBackButton = false;
               }
               §§goto(addr0062);
            }
            §§goto(addr005a);
         }
         addr0062:
      }
      
      private function cleanContainers() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               if(§§pop().contentGroup)
               {
                  if(_loc2_)
                  {
                     addr002f:
                     this.component.contentGroup.removeAllElements();
                  }
               }
               §§goto(addr0036);
            }
            §§goto(addr002f);
         }
         addr0036:
      }
   }
}

