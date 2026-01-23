package net.bigpoint.cityrama.view.quest
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.InfrastructureIntroScreen;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class InfrastructureIntroductionScreenMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "InfrastructureIntroductionScreenMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "InfrastructureIntroductionScreenMediator";
      }
      
      private var _byQuest:Boolean;
      
      public function InfrastructureIntroductionScreenMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(param2)))
            {
               this.addListener();
            }
         }
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && Boolean(this)))
            {
               §§pop().but.addEventListener(MouseEvent.CLICK,this.handleButtonClicked);
               if(!(_loc2_ && Boolean(this)))
               {
                  addr004f:
                  this.component.addEventListener(Event.CLOSE,this.handleClose);
                  addr004c:
               }
               return;
            }
            §§goto(addr004f);
         }
         §§goto(addr004c);
      }
      
      private function handleButtonClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.playButtonClick();
            if(!(_loc4_ && Boolean(this)))
            {
               this.handleClose();
            }
         }
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._byQuest = Boolean(param1.quest);
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:QuestProxy = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc4_ && Boolean(this)))
         {
            if(this._byQuest)
            {
               if(!_loc4_)
               {
                  _loc1_ = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     §§push(_loc1_.currentScreenQuestConfigId);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           addr008a:
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              §§goto(addr009c);
                           }
                           §§goto(addr00a3);
                        }
                        addr009c:
                        §§push(_loc1_.currentScreenTaskConfigId);
                        if(!_loc4_)
                        {
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                        if(_loc5_)
                        {
                           addr00a3:
                           sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
                              "questConfigId":_loc2_,
                              "taskConfigId":_loc3_,
                              "questType":QuestSystemTypeConstants.TUTORIAL
                           });
                        }
                        addr00c1:
                        §§push(this.component);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                           if(_loc5_)
                           {
                              §§goto(addr00f3);
                           }
                           §§goto(addr0111);
                        }
                        addr00f3:
                        this.component.but.removeEventListener(MouseEvent.CLICK,this.handleButtonClicked);
                        addr00f0:
                        if(!(_loc4_ && Boolean(_loc1_)))
                        {
                           addr0111:
                           super.onRemove();
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr00a3);
               }
               addr0116:
               return;
            }
            §§goto(addr00c1);
         }
         §§goto(addr00f0);
      }
      
      public function get component() : InfrastructureIntroScreen
      {
         return super.viewComponent as InfrastructureIntroScreen;
      }
   }
}

