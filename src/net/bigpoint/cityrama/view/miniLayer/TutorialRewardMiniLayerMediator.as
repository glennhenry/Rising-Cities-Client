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
      
      private var _questProxy:QuestProxy;
      
      private var _soundProxy:SoundProxy;
      
      public function TutorialRewardMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.but.addEventListener(MouseEvent.CLICK,this.finalCall);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.but.removeEventListener(MouseEvent.CLICK,this.finalCall);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function setData(param1:Object) : void
      {
         this.component.setData(param1 as TutorialRewardMiniLayerVo);
      }
      
      override public function onRemove() : void
      {
         var _loc1_:Number = this._questProxy.currentScreenQuestConfigId;
         var _loc2_:Number = this._questProxy.currentScreenTaskConfigId;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
            "questConfigId":_loc1_,
            "taskConfigId":_loc2_,
            "questType":QuestSystemTypeConstants.TUTORIAL
         });
         this.finalCall();
         super.onRemove();
      }
      
      public function get component() : TutorialRewardMiniLayer
      {
         return super.viewComponent as TutorialRewardMiniLayer;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._questProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
         this._soundProxy = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
      }
   }
}

