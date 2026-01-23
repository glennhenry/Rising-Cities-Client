package net.bigpoint.cityrama.view.quest
{
   import flash.events.Event;
   import flash.geom.Point;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.quest.ui.QuestTabbedBookMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestSideItemRenderer;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestSideMenu;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestToolTipComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.supportClasses.ItemRenderer;
   
   public class QuestSideMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "QuestSideMenuMediator";
      
      private var _point:Point;
      
      private var _tooltip:QuestToolTipComponent;
      
      private var _soundProxy:SoundProxy;
      
      private var _questGUIProxy:QuestGUIProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      public function QuestSideMenuMediator(param1:QuestSideMenu)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._questGUIProxy = facade.retrieveProxy(QuestGUIProxy.NAME) as QuestGUIProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._serverStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         this.component.data = this._questGUIProxy.getQuestSideDetailVo();
         this.setupListeners();
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(QuestSideItemRenderer.QUEST_SIDE_ITEM_CLICKED,this.handleItemClicked);
         this.component.addEventListener(QuestSideItemRenderer.HIDE_QUEST_INFOLAYER,this.handleHideToolTip);
         this.component.addEventListener(QuestSideItemRenderer.SHOW_QUEST_INFOLAYER,this.handleShowToolTip);
      }
      
      private function handleHideToolTip(param1:Event) : void
      {
         param1.stopPropagation();
         this.component.elementContainer.removeAllElements();
      }
      
      private function handleShowToolTip(param1:Event) : void
      {
         param1.stopPropagation();
         this.component.elementContainer.removeAllElements();
         var _loc2_:ItemRenderer = param1.target as ItemRenderer;
         var _loc3_:Point = new Point(_loc2_.width,_loc2_.height / 2);
         _loc3_ = _loc2_.localToGlobal(_loc3_);
         _loc3_ = this.component.elementContainer.globalToLocal(_loc3_);
         this._point = _loc3_;
         this._tooltip = new QuestToolTipComponent();
         this._tooltip.minWidth = 320;
         this._tooltip.data = _loc2_.data as QuestDetailViewVo;
         this._tooltip.visible = false;
         this._tooltip.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleTipCreationComplete);
         this.component.elementContainer.addElement(this._tooltip);
         if(!this._serverStorageProxy.isQuestViewed(QuestDetailViewVo(_loc2_.data).questID))
         {
            sendNotification(ApplicationNotificationConstants.QUEST_VIEWED,QuestDetailViewVo(_loc2_.data).questID);
         }
      }
      
      private function handleTipCreationComplete(param1:Event) : void
      {
         this._tooltip.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleTipCreationComplete);
         this._tooltip.x = this._point.x + 5;
         this._tooltip.y = -2 + this._point.y - this._tooltip.height / 2;
         this._tooltip.visible = true;
      }
      
      private function handleItemClicked(param1:Event) : void
      {
         param1.stopPropagation();
         this._soundProxy.playButtonClick();
         var _loc2_:QuestDetailViewVo = param1.target.data as QuestDetailViewVo;
         this.openQuestPopup(_loc2_.questID);
      }
      
      private function openQuestPopup(param1:Number) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = QuestTabbedPopup;
         _loc2_.mediatorClass = QuestTabbedBookMediator;
         _loc2_.mediatorName = QuestTabbedBookMediator.NAME;
         var _loc3_:Object = {};
         var _loc4_:QuestDetailViewVo = this._questGUIProxy.getQuestDetailViewVo(param1);
         _loc3_.quest = _loc4_;
         _loc3_.index = QuestTabProxy.QUEST_DETAIL_TAB_INDEX;
         if(_loc4_.isQuestComplete)
         {
            this._soundProxy.playQuestReward();
         }
         _loc2_.data = _loc3_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
         facade.sendNotification(ApplicationNotificationConstants.QUEST_LAYER_OPENED);
         if(!this._serverStorageProxy.isQuestViewed(param1))
         {
            sendNotification(ApplicationNotificationConstants.QUEST_VIEWED,param1);
         }
      }
      
      override public function getMediatorName() : String
      {
         return QuestSideMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.QUEST_STATE_CHANGED,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.QUEST_SYSTEM_INITIALIZED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.QUEST_STATE_CHANGED:
            case ApplicationNotificationConstants.QUEST_SYSTEM_INITIALIZED:
               this.component.data = this._questGUIProxy.getQuestSideDetailVo();
               sendNotification(ApplicationNotificationConstants.QUEST_LAYER_DATA_CHANGED);
               break;
            case ApplicationNotificationConstants.SHOW_GUI:
               if(facade.hasMediator(WelcomeScreenMediator.NAME))
               {
                  return;
               }
               this.component.visible = param1.getBody();
               this.component.invalidateProperties();
         }
      }
      
      public function get component() : QuestSideMenu
      {
         return super.viewComponent as QuestSideMenu;
      }
      
      public function kill() : void
      {
         this.component.visible = false;
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(QuestSideItemRenderer.QUEST_SIDE_ITEM_CLICKED,this.handleItemClicked);
         this.component.removeEventListener(QuestSideItemRenderer.HIDE_QUEST_INFOLAYER,this.handleHideToolTip);
         this.component.removeEventListener(QuestSideItemRenderer.SHOW_QUEST_INFOLAYER,this.handleShowToolTip);
         super.onRemove();
      }
   }
}

