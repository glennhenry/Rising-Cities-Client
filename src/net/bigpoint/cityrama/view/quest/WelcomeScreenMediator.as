package net.bigpoint.cityrama.view.quest
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.assistants.RentCollectorSideMenuMediator;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.WelcomeScreen;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class WelcomeScreenMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "WelcomeScreenMediator";
      
      private var _questProxy:QuestProxy;
      
      private var _data:Vector.<QuestRewardInfoVo>;
      
      public function WelcomeScreenMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      private function addListener() : void
      {
         this.component.but.addEventListener(MouseEvent.CLICK,this.showDropsAndClose);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
      }
      
      private function showDropsAndClose(param1:MouseEvent) : void
      {
         var _loc3_:Point = null;
         var _loc4_:Vector.<DropInfoVo> = null;
         var _loc5_:DropInfoVo = null;
         var _loc6_:QuestRewardInfoVo = null;
         var _loc7_:DropIconVO = null;
         var _loc8_:DropInfoVo = null;
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         var _loc2_:Number = 0;
         if(this._data)
         {
            _loc3_ = new Point(this.component.width / 2,this.component.height / 2);
            _loc3_ = this.component.localToGlobal(_loc3_);
            _loc4_ = new Vector.<DropInfoVo>();
            for each(_loc6_ in this._data)
            {
               _loc5_ = QuestGUIProxy.getDropInfoForQuestReward(_loc6_.questRewardVo);
               if(_loc5_)
               {
                  _loc4_.push(_loc5_);
               }
            }
            if(_loc4_)
            {
               if(_loc4_.length > 0)
               {
                  for each(_loc8_ in _loc4_)
                  {
                     if(_loc8_.type == ServerOutputConstants.GOOD)
                     {
                        _loc7_ = new DropIconVO(_loc8_.gfxId.toString(),_loc3_);
                        TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc7_]);
                        _loc2_ += 0.1;
                     }
                     else
                     {
                        _loc7_ = new DropIconVO(_loc8_.type,_loc3_);
                        TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc7_]);
                        _loc2_ += 0.1;
                     }
                  }
               }
            }
         }
         TweenMax.delayedCall(_loc2_,this.handleClose);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is Vector.<QuestRewardInfoVo>)
         {
            this._data = param1 as Vector.<QuestRewardInfoVo>;
            this.component.data = this._data;
         }
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
         sendNotification(ApplicationNotificationConstants.QUEST_COLLECTREWARD,_loc1_);
         this.setSideMenusVisible(true);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.but.removeEventListener(MouseEvent.CLICK,this.showDropsAndClose);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         super.onRemove();
      }
      
      public function get component() : WelcomeScreen
      {
         return super.viewComponent as WelcomeScreen;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._questProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.addListener();
         try
         {
            ExternalInterface.call("trackLevelUp",1);
         }
         catch(e:Error)
         {
         }
         this.setSideMenusVisible(false);
      }
      
      private function setSideMenusVisible(param1:Boolean) : void
      {
         var _loc2_:QuestSideMenuMediator = facade.retrieveMediator(QuestSideMenuMediator.NAME) as QuestSideMenuMediator;
         _loc2_.component.visible = param1;
         var _loc3_:RentCollectorSideMenuMediator = facade.retrieveMediator(RentCollectorSideMenuMediator.NAME) as RentCollectorSideMenuMediator;
         _loc3_.component.visible = param1;
         _loc3_.component.includeInLayout = param1;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
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
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
   }
}

