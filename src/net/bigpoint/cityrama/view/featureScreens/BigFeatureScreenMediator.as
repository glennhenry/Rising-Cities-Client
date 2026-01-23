package net.bigpoint.cityrama.view.featureScreens
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.featureScreens.vo.BigFeatureScreenVO;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.view.architectBook.ArchitectBookMediator;
   import net.bigpoint.cityrama.view.featureScreens.ui.components.BigFeatureScreenPopup;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BigFeatureScreenMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "BigFeatureScreenMediator";
      
      private var _featureData:BigFeatureScreenVO;
      
      private var _questProxy:QuestProxy;
      
      private var _mainMenuePopedUpProxy:MainMenuPopedUpProxy;
      
      private var _openedByQuest:Boolean;
      
      private var _onTopOfArchBook:Boolean;
      
      private var _architectBookMediator:ArchitectBookMediator;
      
      public function BigFeatureScreenMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._mainMenuePopedUpProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         if(this._onTopOfArchBook)
         {
            this._architectBookMediator.component.sideMenuComponent.visible = true;
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         this._architectBookMediator = null;
         this._onTopOfArchBook = false;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1)
         {
            this._featureData = param1.feature;
            this._openedByQuest = param1.quest;
            this.component.data = this._featureData;
            this.checkForArchBook();
         }
      }
      
      public function get component() : BigFeatureScreenPopup
      {
         return super.viewComponent as BigFeatureScreenPopup;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._questProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
      }
      
      override public function onRemove() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this._openedByQuest)
         {
            _loc1_ = this._questProxy.currentScreenQuestConfigId;
            _loc2_ = this._questProxy.currentScreenTaskConfigId;
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,{
               "questConfigId":_loc1_,
               "taskConfigId":_loc2_,
               "questType":QuestSystemTypeConstants.TUTORIAL
            });
         }
         this.finalCall(null);
         super.onRemove();
      }
      
      private function checkForArchBook() : void
      {
         if(this._mainMenuePopedUpProxy.activePoppupConnectedWithMainMenu == ArchitectBookMediator.NAME)
         {
            this._architectBookMediator = facade.retrieveMediator(ArchitectBookMediator.NAME) as ArchitectBookMediator;
            if(this._architectBookMediator != null)
            {
               this._onTopOfArchBook = true;
               if(this._architectBookMediator.component)
               {
                  if(this._architectBookMediator.component.sideMenuComponent)
                  {
                     this._architectBookMediator.component.sideMenuComponent.visible = false;
                  }
               }
            }
         }
      }
   }
}

