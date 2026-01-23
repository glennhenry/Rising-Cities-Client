package net.bigpoint.cityrama.view.boosterpackstore
{
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackSublevelAnimationLayer;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackSublevelAnimationMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "BoosterpackSublevelAnimationMediator";
      
      private static const ANIMATION_IDLE_DURATION:Number = 1;
      
      private static const ANIMATION_DELAY:Number = 500;
      
      private static const ANIMATION_STOP_DELAY:Number = 1000;
      
      private static const ANIMATION_BOOSTERSWITCH_DELAY:Number = 0.5;
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _component:BoosterpackSublevelAnimationLayer;
      
      private var _rewardItemIndex:uint;
      
      private var _soundProxy:SoundProxy;
      
      private var _nextAnimationStep:uint = 0;
      
      private var _boosterAnimationDelay:TweenLite;
      
      private var _itemIntervalId:uint;
      
      private var _finishIntervalId:uint;
      
      private const ANIMATION_IDLE:String = "ANIMATION_IDLE";
      
      private const ANIMATION_PARTICLE_START:String = "ANIMATION_PARTICLE_START";
      
      private const ANIMATION_ITEMLIST:String = "ANIMATION_ITEMLIST";
      
      private const ANIMATION_FINISHED:String = "ANIMATION_FINISHED";
      
      private const BACK_TO_DETAILLAYER:String = "BACK_TO_DETAILLAYER";
      
      private const ANIMATIONSTEPS:Array = [this.ANIMATION_IDLE,this.ANIMATION_PARTICLE_START,this.ANIMATION_ITEMLIST,this.ANIMATION_FINISHED,this.BACK_TO_DETAILLAYER];
      
      public function BoosterpackSublevelAnimationMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is BoosterpackAnimationLayerVo)
         {
            this._data = param1 as BoosterpackAnimationLayerVo;
            this.prepareProxies();
            this.setInitialValues();
            this.setupListeners();
         }
      }
      
      private function prepareProxies() : void
      {
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new BoosterpackSublevelAnimationLayer();
         }
         this._component.data = this._data;
         if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
         {
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
         }
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine,this._component.uiInfolayerAlignmentLine2],this));
         this.container.contentGroup.addElement(this._component);
         this.firstAnimationStep();
      }
      
      private function setupListeners() : void
      {
         if(this._component == null)
         {
            return;
         }
         this._component.addEventListener(BoosterpackSublevelAnimationLayer.BUY_BOOSTER_GOOD,this.handleBuy);
         this._component.addEventListener(BoosterpackSublevelAnimationLayer.SKIP,this.handleSkipAnimationClick);
         this._component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
      }
      
      override public function onRemove() : void
      {
         this.removeListeners();
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
            "pt":_loc3_,
            "type":param1.callerType
         },NAME);
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function removeListeners() : void
      {
         if(this._component == null)
         {
            return;
         }
         this._component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
         this._component.removeEventListener(BoosterpackSublevelAnimationLayer.BUY_BOOSTER_GOOD,this.handleBuy);
         this._component.removeEventListener(BoosterpackSublevelAnimationLayer.SKIP,this.handleSkipAnimationClick);
      }
      
      private function startItemAnimation() : void
      {
         clearInterval(this._itemIntervalId);
         this._component.adjustLayoutBasedOnRewardAmount(this._data.rewards.length);
         this._rewardItemIndex = 0;
         this.fillItemToList();
         this._itemIntervalId = setInterval(this.fillItemToList,ANIMATION_DELAY);
      }
      
      private function fillItemToList() : void
      {
         var _loc1_:RewardItemComponentVo = null;
         if(this._rewardItemIndex >= this._data.rewards.length)
         {
            clearInterval(this._itemIntervalId);
            this._finishIntervalId = setInterval(this.finishAnimationStep,ANIMATION_STOP_DELAY);
         }
         else
         {
            _loc1_ = this._data.rewards[this._rewardItemIndex];
            this._component.addRewardData(_loc1_);
            ++this._rewardItemIndex;
         }
      }
      
      private function firstAnimationStep() : void
      {
         this._nextAnimationStep = 0;
         this.nextAnimationStep();
      }
      
      private function finishAnimationStep() : void
      {
         this._nextAnimationStep = this.ANIMATIONSTEPS.indexOf(this.ANIMATION_FINISHED);
         this.nextAnimationStep();
      }
      
      private function lastAnimationStep() : void
      {
         this._nextAnimationStep = this.ANIMATIONSTEPS.length - 1;
         this.nextAnimationStep();
      }
      
      private function nextAnimationStep() : void
      {
         var _loc1_:String = this.ANIMATIONSTEPS[this._nextAnimationStep];
         ++this._nextAnimationStep;
         switch(_loc1_)
         {
            case this.ANIMATION_IDLE:
               TweenMax.delayedCall(ANIMATION_IDLE_DURATION,this.nextAnimationStep);
               break;
            case this.ANIMATION_PARTICLE_START:
               this._soundProxy.playBoosterSparkle();
               this._component.playStarsAnimation();
               TweenMax.delayedCall(ANIMATION_BOOSTERSWITCH_DELAY,this.switchItemPackImage);
               TweenMax.delayedCall(ANIMATION_IDLE_DURATION,this.nextAnimationStep);
               break;
            case this.ANIMATION_ITEMLIST:
               this._soundProxy.playBossterFanfare();
               this.startItemAnimation();
               break;
            case this.ANIMATION_FINISHED:
               this.resetAnimationParams();
               this._component.showFinishState();
               break;
            case this.BACK_TO_DETAILLAYER:
               this.resetAnimationParams();
               facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
                  "container":this.container,
                  "content":this._data.boosterpackVo.slotId,
                  "type":this._data.boosterpackVo.type
               });
         }
      }
      
      private function switchItemPackImage() : void
      {
         this._component.switchItemPackImage();
      }
      
      private function handleBuy(param1:Event) : void
      {
         this._data.boosterpackVo.defaultCostUserStock -= this._data.boosterpackVo.defaultCostAmount;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,{
            "booster":this._data.boosterpackVo,
            "rc":false
         });
      }
      
      private function handleSkipAnimationClick(param1:Event) : void
      {
         if(this.ANIMATIONSTEPS[this._nextAnimationStep] != this.BACK_TO_DETAILLAYER)
         {
            this.finishAnimationStep();
         }
         else
         {
            this.lastAnimationStep();
         }
      }
      
      private function resetAnimationParams() : void
      {
         clearInterval(this._itemIntervalId);
         TweenMax.killDelayedCallsTo(this.nextAnimationStep);
         TweenMax.killDelayedCallsTo(this.switchItemPackImage);
         this.switchItemPackImage();
         clearInterval(this._finishIntervalId);
         if(this._boosterAnimationDelay)
         {
            this._boosterAnimationDelay.kill();
         }
      }
   }
}

