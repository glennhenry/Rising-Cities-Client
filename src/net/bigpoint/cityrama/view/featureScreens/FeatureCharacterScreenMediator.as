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
      
      private var _byQuest:Boolean;
      
      public function FeatureCharacterScreenMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(FeatureCharacterScreen.INTRO_BUTTON_CLICKED,this.handleButtonClicked);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function handleButtonClicked(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         _loc2_.playButtonClick();
         this.handleClose();
      }
      
      private function removeListener() : void
      {
         this.component.addEventListener(FeatureCharacterScreen.INTRO_BUTTON_CLICKED,this.handleButtonClicked);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function setData(param1:Object) : void
      {
         this._byQuest = param1.quest as Boolean;
         this.component.data = param1.vo as FeatureCharacterScreenVo;
      }
      
      override public function onRemove() : void
      {
         var _loc1_:QuestProxy = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this._byQuest)
         {
            _loc1_ = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
            _loc2_ = _loc1_.currentScreenQuestConfigId;
            _loc3_ = _loc1_.currentScreenTaskConfigId;
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
               "questConfigId":_loc2_,
               "taskConfigId":_loc3_,
               "questType":QuestSystemTypeConstants.TUTORIAL
            });
         }
         this.removeListener();
         super.onRemove();
      }
      
      public function get component() : FeatureCharacterScreen
      {
         return super.viewComponent as FeatureCharacterScreen;
      }
   }
}

