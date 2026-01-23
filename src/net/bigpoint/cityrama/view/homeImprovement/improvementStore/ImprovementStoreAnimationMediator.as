package net.bigpoint.cityrama.view.homeImprovement.improvementStore
{
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.vo.RewardImprovementItemComponentVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreAnimationLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.Events.ImprovementStoreItemRendererEvent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.ImprovementStoreAnimationGrid;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.ImprovementStoreDataGrid;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.skins.ImprovementStoreRewardSkinClass;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementStoreAnimationMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ImprovementStoreAnimationMediator";
      
      private static const START:String = "START";
      
      private static const ANIMATION:String = "ANIMATION";
      
      private static const SPAWN:String = "SPAWN";
      
      private static const IDLE:String = "IDLE";
      
      private static const LINEID_0:uint = 0;
      
      private static const LINEID_1:uint = 1;
      
      private static const animationDelay:Number = 1;
      
      private static const animationDuration:Number = 0.5;
      
      private static const spawnDelay:Number = 0.5;
      
      public static const spawnDuration:Number = 0.5;
      
      private static const scrollDuration:Number = 0.3;
      
      private static const scrollDelay:Number = 1;
      
      private const ANIMATIONSTEPS:Array = [START,ANIMATION,SPAWN,IDLE];
      
      private var _data:ImprovementStoreAnimationLayerVo;
      
      private var _component:ImprovementStoreAnimationGrid;
      
      private var _nextAnimationStep:int;
      
      private var _improvementAnimationDelay:TweenLite;
      
      private var _spawnAnimationStopDelay:TweenLite;
      
      private var _pageScrollDelay:TweenLite;
      
      private var _baseCount:int;
      
      private var _currentPage:int;
      
      public function ImprovementStoreAnimationMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ImprovementStoreAnimationLayerVo)
         {
            this._data = param1 as ImprovementStoreAnimationLayerVo;
            this.setInitialValues();
            this.setupListeners();
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
            case ApplicationNotificationConstants.INGAMECURRENCY_CHANGED:
               this.checkResources();
         }
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new ImprovementStoreAnimationGrid();
         }
         this._component.addEventListener(ImprovementStoreItemRendererEvent.ITEM_OUT,this.component_ITEM_OUTHandler);
         this._component.addEventListener(ImprovementStoreItemRendererEvent.ITEM_OVER,this.component_ITEM_OVERHandler);
         if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
         {
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
         }
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLineTop,this._component.uiInfolayerAlignmentLineBottom],this));
         this._baseCount = ImprovementStoreRewardSkinClass.calculateRequestColumnCount(this._data.rewards.length);
         var _loc1_:Vector.<RewardImprovementItemComponentVo> = new Vector.<RewardImprovementItemComponentVo>(this._data.rewards.length);
         var _loc2_:int = 0;
         while(_loc2_ < this._baseCount)
         {
            _loc1_[_loc2_] = this._data.rewards.shift();
            _loc1_[_loc2_].animationDelay = -1;
            if(_loc2_ + this._baseCount < _loc1_.length)
            {
               _loc1_[_loc2_ + this._baseCount] = this._data.rewards.splice(2 - _loc2_ % 3,1)[0];
               _loc1_[_loc2_ + this._baseCount].animationDelay = -1;
            }
            _loc2_++;
         }
         this._data.rewards = _loc1_;
         this.checkResources();
         this._component.data = this._data;
         this.container.contentGroup.addElement(this._component);
         this._nextAnimationStep = 0;
         this.nextAnimationStep();
      }
      
      private function setupListeners() : void
      {
         this._component.addEventListener(ImprovementStoreDataGrid.BUY_PACK,this.handleBuy);
         this._component.addEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL,this.handleOpenTreasury);
         this._component.addEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL,this.handleOpenTreasury);
         this._component.addEventListener(ImprovementStoreAnimationGrid.SKIP_ANIMATION,this.handleSkip);
      }
      
      private function handleBuy(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:* = this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_IMPROVEMENT_BOOSTER_BUY,{
            "boosterId":this._data.boosterpackVo.config.id,
            "real":_loc2_
         });
         if(_loc2_)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         }
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         param1.stopPropagation();
         if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_REAL)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
         else if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
         }
      }
      
      private function showPage(param1:int) : void
      {
         var _loc3_:int = param1 * 3;
         var _loc4_:int = 0;
         while(_loc4_ < this._baseCount)
         {
            if(_loc4_ >= _loc3_)
            {
               if(_loc4_ < _loc3_ + 3)
               {
                  this._data.rewards[_loc4_].animationDelay = 1 * spawnDelay + scrollDuration;
                  if(_loc4_ + this._baseCount < this._data.rewards.length)
                  {
                     this._data.rewards[_loc4_ + this._baseCount].animationDelay = (4 + _loc4_ % 3) * spawnDelay + scrollDuration;
                  }
                  _loc2_++;
               }
            }
            _loc4_++;
         }
         (this._component.itemList.dataProvider as ArrayCollection).refresh();
      }
      
      private function handleSkip(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:int = 0;
         while(_loc2_ < this._data.rewards.length)
         {
            this._data.rewards[_loc2_].animationDelay = -2;
            _loc2_++;
         }
         (this._component.itemList.dataProvider as ArrayCollection).refresh();
         if(this._spawnAnimationStopDelay)
         {
            this._spawnAnimationStopDelay.kill();
         }
         if(this._pageScrollDelay)
         {
            this._pageScrollDelay.kill();
         }
         this._component.enableScrolling(true);
         this._component.ShowBuyButton();
      }
      
      private function removeListeners() : void
      {
         this._component.removeEventListener(ImprovementStoreDataGrid.BUY_PACK,this.handleBuy);
         this._component.removeEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL,this.handleOpenTreasury);
         this._component.removeEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL,this.handleOpenTreasury);
         this._component.removeEventListener(ImprovementStoreAnimationGrid.SKIP_ANIMATION,this.handleSkip);
      }
      
      private function nextAnimationStep() : void
      {
         var _loc1_:String = this.ANIMATIONSTEPS[this._nextAnimationStep];
         ++this._nextAnimationStep;
         switch(_loc1_)
         {
            case START:
               this._improvementAnimationDelay = TweenLite.delayedCall(animationDelay,this.showImprovementpackAnimation);
               this._component.enableScrolling(false);
               break;
            case ANIMATION:
               this._improvementAnimationDelay = TweenLite.delayedCall(animationDuration,this.stopImprovementpackAnimation);
               break;
            case SPAWN:
               this._currentPage = 0;
               this.showPage(this._currentPage);
               if(this._baseCount > 3)
               {
                  this._pageScrollDelay = TweenLite.delayedCall(6 * spawnDelay + spawnDuration + scrollDelay,this.scrollToNextPage);
                  break;
               }
               this._spawnAnimationStopDelay = TweenLite.delayedCall(this._data.rewards.length * spawnDelay + spawnDuration,this.stopSpawnAimation);
               break;
            case IDLE:
               this._component.enableScrolling(true);
               this._nextAnimationStep = 0;
         }
      }
      
      private function showImprovementpackAnimation() : void
      {
         this._improvementAnimationDelay.kill();
         this._component.startItemAnimation();
         this.nextAnimationStep();
      }
      
      private function stopImprovementpackAnimation() : void
      {
         this._component.RemoveItemAnimation(null);
         this.nextAnimationStep();
      }
      
      private function stopSpawnAimation() : void
      {
         this.nextAnimationStep();
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
         if(this._component && this.container.contentGroup && this._component.parent == this.container.contentGroup)
         {
            this.container.contentGroup.removeElement(this._component);
         }
      }
      
      private function checkResources() : void
      {
         var _loc1_:* = false;
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
         {
            _loc1_ = _loc2_.realCurrency >= Math.abs(this._data.boosterpackVo.defaultCostAmount);
         }
         else
         {
            _loc1_ = _loc2_.ingameCurrency >= Math.abs(this._data.boosterpackVo.defaultCostAmount);
         }
         this._component.hasEnoughResources(_loc1_);
      }
      
      private function scrollToNextPage() : void
      {
         this._component.scrollToNextPage();
         ++this._currentPage;
         this.showPage(this._currentPage);
         if(this._component.hasNextPage)
         {
            this._pageScrollDelay = TweenLite.delayedCall(scrollDuration * 2 + spawnDelay * 6 + spawnDuration + scrollDelay,this.scrollToNextPage);
         }
         else
         {
            this._spawnAnimationStopDelay = TweenLite.delayedCall(scrollDuration * 2 + spawnDelay * 6 + spawnDuration,this.stopSpawnAimation);
         }
      }
      
      private function component_ITEM_OUTHandler(param1:ImprovementStoreItemRendererEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function component_ITEM_OVERHandler(param1:ImprovementStoreItemRendererEvent) : void
      {
         var _loc2_:int = ImprovementStoreRewardSkinClass.calculateRequestColumnCount(this._data.rewards.length);
         var _loc3_:uint = param1.elementIndex < _loc2_ ? LINEID_0 : LINEID_1;
         var _loc4_:Number = param1.selectedConfigID;
         var _loc5_:Point = param1.target.localToGlobal(new Point());
         _loc5_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
            "cid":_loc4_,
            "lineId":_loc3_,
            "pt":_loc5_
         },NAME);
      }
   }
}

