package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.quest.QuestSystemTaskTargetTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.CitySquareDepositItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareDepositMinilayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitysquareDepositMinilayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitysquareDepositMinilayerMediator";
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      public function CitysquareDepositMinilayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(CitySquareDepositItemRenderer.PLUS_CLICKED_FOR_MARKET,this.handlePlusClicked);
         this.component.addEventListener(CitysquareDepositMinilayer.DEPOSIT_CLICKED,this.onDepositClicked);
      }
      
      private function handlePlusClicked(param1:Event) : void
      {
         var event:Event = param1;
         var listdata:Object = (this.component.itemList.dataGroup.getElementAt(this.component.itemList.dataGroup.getItemIndicesInView()[0]) as CitySquareDepositItemRenderer).listData;
         var goodID:int = int(listdata.goodCid);
         try
         {
            ExternalInterface.call("showMarketOffers",goodID);
         }
         catch(e:Error)
         {
         }
         this.handleClose();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function onDepositClicked(param1:Event) : void
      {
         var _loc5_:QuestTaskDTO = null;
         var _loc6_:Number = NaN;
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.component.removeEventListener(CitysquareDepositMinilayer.DEPOSIT_CLICKED,this.onDepositClicked);
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:EventQuestVo = _loc2_.runningEventQuest;
         var _loc4_:Object = (this.component.itemList.dataGroup.getElementAt(this.component.itemList.dataGroup.getItemIndicesInView()[0]) as CitySquareDepositItemRenderer).listData;
         for each(_loc5_ in _loc3_.currentChallenge.tasks)
         {
            if(_loc5_.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID == _loc4_.goodCid)
            {
               _loc6_ = Number(_loc4_.amount);
               if(_loc6_ > this._goodStockProxy.getGoodByConfigId(_loc4_.goodCid).playerStock)
               {
                  _loc6_ = this._goodStockProxy.getGoodByConfigId(_loc4_.goodCid).playerStock;
               }
               if(_loc6_ > 0)
               {
                  sendNotification(ApplicationNotificationConstants.QUEST_DEPOSIT_TASK,{
                     "taskId":_loc5_.configQuestTaskID,
                     "questConfigId":_loc3_.quests[0].config.id,
                     "questType":QuestSystemTypeConstants.EVENT,
                     "category":QuestSystemTaskTargetTypeConstants.GOOD,
                     "amount":_loc6_,
                     "itemCid":_loc4_.goodCid
                  });
               }
               this.component.removeEventListener(Event.CLOSE,this.handleClose);
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
               return;
            }
         }
      }
      
      public function setData(param1:Object) : void
      {
         this.component.data = param1 as CitySquareDetailViewVo;
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(CitySquareDepositItemRenderer.PLUS_CLICKED_FOR_MARKET,this.handlePlusClicked);
         this.component.removeEventListener(CitysquareDepositMinilayer.DEPOSIT_CLICKED,this.onDepositClicked);
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         super.onRemove();
      }
      
      public function get component() : CitysquareDepositMinilayer
      {
         return super.viewComponent as CitysquareDepositMinilayer;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc3_:Point = null;
         var _loc2_:Number = param1.cid;
         if(param1.target is CitySquareDepositItemRenderer)
         {
            if((param1.target as CitySquareDepositItemRenderer).goodCardBoard)
            {
               _loc3_ = (param1.target as CitySquareDepositItemRenderer).goodCardBoard.localToGlobal(new Point());
               _loc3_.x += (param1.target as CitySquareDepositItemRenderer).goodCardBoard.width / 2;
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
   }
}

