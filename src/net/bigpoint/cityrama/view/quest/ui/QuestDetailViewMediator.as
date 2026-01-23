package net.bigpoint.cityrama.view.quest.ui
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.common.events.LinkedTextEvent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestDetailTaskComponent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestDetailViewComponent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class QuestDetailViewMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "QuestDetailViewMediator";
      
      public static const UI_LINE_ID:uint = 0;
      
      private static const UI_MEDIATOR_NAME:String = UserInterfaceInfoLayerMediator.NAME + NAME;
      
      private var _component:QuestDetailViewComponent;
      
      private var _tabP:QuestTabProxy;
      
      private var _qGP:QuestGUIProxy;
      
      private var _sP:SoundProxy;
      
      public function QuestDetailViewMediator(param1:String, param2:QuestTabbedPopup)
      {
         super(param1,param2);
      }
      
      public function init() : void
      {
         if(!this._component)
         {
            this._component = new QuestDetailViewComponent();
         }
         facade.removeMediator(UI_MEDIATOR_NAME);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.setDetailData();
         this.container.contentGroup.addElement(this.component);
         this.addListener();
      }
      
      private function setDetailData() : void
      {
         this.component.data = this.tabProxy.currentQuest;
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.showRewardUIInfoLayer);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.hideRewardUiInfoLayer);
         this.component.addEventListener(QuestDetailViewComponent.EVENT_COLLECT_REWARD,this.handleCollectRewards);
         this.component.addEventListener(QuestDetailTaskComponent.EVENT_GET_RC,this.handleGetRealCurrency);
         this.component.addEventListener(QuestDetailTaskComponent.EVENT_SKIP_TASK,this.handleSkipTask);
         this.component.addEventListener(QuestDetailTaskComponent.EVENT_DEPOSIT,this.handleDeposit);
         this.component.addEventListener(LinkedTextEvent.LINK_CLICKED,this.handleLinkClicked);
      }
      
      private function handleLinkClicked(param1:LinkedTextEvent) : void
      {
         param1.stopPropagation();
         if(param1.linkType == LinkedTextEvent.LINK_TYPE_PLAYFIELDITEM && param1.linkParams && param1.linkParams.length > 0)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_ITEM_IN_ARCHITECT_BOOK,param1.linkParams[0]);
         }
      }
      
      private function handleDeposit(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         param1.stopPropagation();
         if(param1.target is QuestDetailTaskComponent)
         {
            var _loc2_:QuestTaskVo = QuestDetailTaskComponent(param1.target).data;
         }
      }
      
      private function handleSkipTask(param1:Event) : void
      {
         param1.stopPropagation();
         if(param1.target is QuestDetailTaskComponent)
         {
            var _loc2_:QuestTaskVo = QuestDetailTaskComponent(param1.target).data;
         }
      }
      
      private function handleGetRealCurrency(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleCollectRewards(param1:Event) : void
      {
         param1.stopPropagation();
         this.triggerDrops();
      }
      
      private function triggerDrops() : void
      {
         var _loc3_:DropIconVO = null;
         var _loc4_:DropInfoVo = null;
         var _loc1_:Point = new Point(this.component.width / 2,this.component.height / 2);
         _loc1_ = this.component.localToGlobal(_loc1_);
         var _loc2_:Number = 0;
         if(Boolean(this.tabProxy.currentQuest.drops) && this.tabProxy.currentQuest.drops.length > 0)
         {
            for each(_loc4_ in this.tabProxy.currentQuest.drops)
            {
               if(_loc4_.type == ServerOutputConstants.GOOD)
               {
                  _loc3_ = new DropIconVO(_loc4_.gfxId.toString(),_loc1_);
                  TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc3_]);
                  _loc2_ += 0.1;
               }
               else if(_loc4_.type == ServerTagConstants.GOOD_KEY)
               {
                  _loc3_ = new DropIconVO(_loc4_.type,_loc1_);
                  TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc3_]);
                  _loc2_ += 0.1;
               }
               else
               {
                  _loc3_ = new DropIconVO(_loc4_.type,_loc1_);
                  TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc3_]);
                  _loc2_ += 0.1;
               }
            }
         }
         TweenMax.delayedCall(_loc2_,this.closeLayerOnCollect);
      }
      
      private function closeLayerOnCollect() : void
      {
         sendNotification(ApplicationNotificationConstants.QUEST_COLLECTREWARD,this.tabProxy.currentQuest.questID);
         this.component.dispatchEvent(new Event(Event.CLOSE,true,true));
      }
      
      private function hideRewardUiInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function showRewardUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         param1.stopPropagation();
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":0,
            "pt":_loc3_,
            "type":param1.callerType
         },NAME);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.QUEST_LAYER_DATA_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
            case ApplicationNotificationConstants.QUEST_LAYER_DATA_CHANGED:
               this.updateData();
         }
      }
      
      private function updateData() : void
      {
         var _loc1_:QuestDetailViewVo = this.layerProxy.getQuestDetailViewVo(this.tabProxy.currentQuest.questID);
         this.tabProxy.currentQuest = _loc1_;
         if(_loc1_.isQuestComplete)
         {
            this.soundProxy.playQuestReward();
         }
         this.setDetailData();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.showRewardUIInfoLayer);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.hideRewardUiInfoLayer);
         this.component.removeEventListener(QuestDetailViewComponent.EVENT_COLLECT_REWARD,this.handleCollectRewards);
         this.component.removeEventListener(QuestDetailTaskComponent.EVENT_GET_RC,this.handleGetRealCurrency);
         this.component.removeEventListener(QuestDetailTaskComponent.EVENT_SKIP_TASK,this.handleSkipTask);
         this.component.removeEventListener(QuestDetailTaskComponent.EVENT_DEPOSIT,this.handleDeposit);
         this.component.removeEventListener(LinkedTextEvent.LINK_CLICKED,this.handleLinkClicked);
      }
      
      private function get container() : QuestTabbedPopup
      {
         return super.viewComponent as QuestTabbedPopup;
      }
      
      public function get component() : QuestDetailViewComponent
      {
         return this._component;
      }
      
      private function get tabProxy() : QuestTabProxy
      {
         if(this._tabP == null)
         {
            this._tabP = facade.retrieveProxy(QuestTabProxy.NAME) as QuestTabProxy;
         }
         return this._tabP;
      }
      
      private function get layerProxy() : QuestGUIProxy
      {
         if(this._qGP == null)
         {
            this._qGP = facade.retrieveProxy(QuestGUIProxy.NAME) as QuestGUIProxy;
         }
         return this._qGP;
      }
      
      private function get soundProxy() : SoundProxy
      {
         if(this._sP == null)
         {
            this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         }
         return this._sP;
      }
   }
}

