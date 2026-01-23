package net.bigpoint.cityrama.view.featureScreens
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureCharacterScreenVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.FeatureCharacterScreen;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeatureCharacterScreenMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "FeatureCharacterScreenMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "FeatureCharacterScreenMediator";
      }
      
      private var _byQuest:Boolean;
      
      public function FeatureCharacterScreenMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(param1,param2);
            if(!(_loc4_ && _loc3_))
            {
               this.addListener();
            }
         }
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().addEventListener(FeatureCharacterScreen.INTRO_BUTTON_CLICKED,this.handleButtonClicked);
               if(_loc2_ || _loc2_)
               {
                  addr0045:
                  this.component.addEventListener(Event.CLOSE,this.handleClose);
               }
               §§goto(addr0051);
            }
            §§goto(addr0045);
         }
         addr0051:
      }
      
      private function handleButtonClicked(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc2_)
         {
            param1.stopPropagation();
         }
         var _loc2_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(!_loc3_)
         {
            _loc2_.playButtonClick();
            if(_loc4_)
            {
               addr0053:
               this.handleClose();
            }
            return;
         }
         §§goto(addr0053);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().addEventListener(FeatureCharacterScreen.INTRO_BUTTON_CLICKED,this.handleButtonClicked);
               if(_loc2_ || _loc1_)
               {
                  addr004d:
                  this.component.addEventListener(Event.CLOSE,this.handleClose);
                  addr004a:
               }
               return;
            }
            §§goto(addr004d);
         }
         §§goto(addr004a);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._byQuest = param1.quest as Boolean;
            if(_loc2_ || Boolean(this))
            {
               this.component.data = param1.vo as FeatureCharacterScreenVo;
            }
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
         if(_loc5_)
         {
            if(this._byQuest)
            {
               if(_loc5_)
               {
                  _loc1_ = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     §§push(_loc1_.currentScreenQuestConfigId);
                     if(_loc5_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(_loc5_)
                           {
                              addr0096:
                              §§push(_loc1_.currentScreenTaskConfigId);
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop());
                              }
                              _loc3_ = §§pop();
                              if(_loc5_)
                              {
                                 sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
                                    "questConfigId":_loc2_,
                                    "taskConfigId":_loc3_,
                                    "questType":QuestSystemTypeConstants.TUTORIAL
                                 });
                              }
                           }
                           §§goto(addr00c9);
                        }
                     }
                     §§goto(addr0096);
                  }
                  addr00c9:
                  this.removeListener();
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     super.onRemove();
                  }
               }
               §§goto(addr00e2);
            }
            §§goto(addr00c9);
         }
         addr00e2:
      }
      
      public function get component() : FeatureCharacterScreen
      {
         return super.viewComponent as FeatureCharacterScreen;
      }
   }
}

