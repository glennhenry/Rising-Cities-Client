package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.TutorialRewardMiniLayerVo;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.TutorialRewardMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class TutorialRewardMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "TutorialRewardMiniLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "TutorialRewardMiniLayerMediator";
      }
      
      private var _questProxy:QuestProxy;
      
      private var _soundProxy:SoundProxy;
      
      public function TutorialRewardMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            if(_loc4_)
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
         if(_loc1_ || Boolean(this))
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().but.addEventListener(MouseEvent.CLICK,this.finalCall);
               if(!_loc2_)
               {
                  addr0046:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
               }
               §§goto(addr0052);
            }
            §§goto(addr0046);
         }
         addr0052:
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.component);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(!_loc3_)
               {
                  addr0051:
                  this.component.but.removeEventListener(MouseEvent.CLICK,this.finalCall);
                  if(_loc2_ || _loc3_)
                  {
                     addr006d:
                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
                  }
               }
               return;
            }
            §§goto(addr0051);
         }
         §§goto(addr006d);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.component.setData(param1 as TutorialRewardMiniLayerVo);
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(this._questProxy.currentScreenQuestConfigId);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this._questProxy.currentScreenTaskConfigId);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
               "questConfigId":_loc1_,
               "taskConfigId":_loc2_,
               "questType":QuestSystemTypeConstants.TUTORIAL
            });
            if(!_loc4_)
            {
               addr0083:
               this.finalCall();
               if(_loc3_ || _loc3_)
               {
                  super.onRemove();
               }
            }
            return;
         }
         §§goto(addr0083);
      }
      
      public function get component() : TutorialRewardMiniLayer
      {
         return super.viewComponent as TutorialRewardMiniLayer;
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.onRegister();
            if(_loc1_)
            {
               this._questProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
               if(!(_loc2_ && Boolean(this)))
               {
                  addr005d:
                  this._soundProxy = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
               }
            }
            return;
         }
         §§goto(addr005d);
      }
   }
}

