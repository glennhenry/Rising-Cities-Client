package net.bigpoint.cityrama.view.boosterpackstore
{
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Back;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackAnimationLayer;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackBonusLabel;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackRewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.particles.particle.ParticleAcceleration;
   import net.bigpoint.particles.particle.ParticleAlphaFade;
   import net.bigpoint.particles.particle.ParticleEmitterDecorator;
   import net.bigpoint.particles.particle.ParticleScale;
   import net.bigpoint.particles.particle.ParticleStartVelocity;
   import net.bigpoint.particles.particle.ParticleUseVelocity;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackAnimationMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "BoosterpackAnimationMediator";
      
      private var _component:BoosterpackAnimationLayer;
      
      private var _boosterAnimationDelay:TweenLite;
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _particleEmiter:ParticleEmitterDecorator;
      
      private var _imageLoaderParticleStar:BriskMCDynaLib;
      
      private var _itemIntervalId:uint;
      
      private var _removeEmiterIntervalId:uint;
      
      private var _finishIntervalId:uint;
      
      private var _emiterIntervalId:uint;
      
      private var _rewardItemIndex:uint;
      
      private var _rewardItemEmiters:Dictionary;
      
      private var _rewardItemEmiterIntervals:Dictionary;
      
      private var _soundProxy:SoundProxy;
      
      private var _nextAnimationStep:uint = 0;
      
      private const ANIMATION_BOOSTERPACK:String = "ANIMATION_BOOSTERPACK";
      
      private const ANIMATION_PARTICLE_START:String = "ANIMATION_PARTICLE_START";
      
      private const ANIMATION_PARTICLE_END:String = "ANIMATION_PARTICLE_END";
      
      private const ANIMATION_ITEMLIST:String = "ANIMATION_ITEMLIST";
      
      private const ANIMATION_FINISHED:String = "ANIMATION_FINISHED";
      
      private const BACK_TO_DETAILLAYER:String = "BACK_TO_DETAILLAYER";
      
      private const ANIMATIONSTEPS:Array = [this.ANIMATION_BOOSTERPACK,this.ANIMATION_PARTICLE_START,this.ANIMATION_PARTICLE_END,this.ANIMATION_ITEMLIST,this.ANIMATION_FINISHED,this.BACK_TO_DETAILLAYER];
      
      public function BoosterpackAnimationMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
         if(this._component && this.container.contentGroup && this._component.parent == this.container.contentGroup)
         {
            this.container.contentGroup.removeElement(this._component);
         }
         this._component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         this.lastAnimationStep();
      }
      
      private function removeListeners() : void
      {
         if(this._component == null)
         {
            return;
         }
         this._component.removeEventListener(BoosterpackAnimationLayer.SKIP,this.handleSkipAnimationClick);
         this._component.removeEventListener(BoosterpackAnimationLayer.START_PACK_SPARKLE,this.handleStartPackSparkelAnimation);
         this._component.removeEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_REWARD_ITEM,this.handleStartRewardItemSparkelAnimation);
         this._component.removeEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_FACTOR,this.handleStartBonusFactorAnimation);
      }
      
      private function setupListeners() : void
      {
         if(this._component == null)
         {
            return;
         }
         this._component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         this._component.addEventListener(BoosterpackAnimationLayer.SKIP,this.handleSkipAnimationClick);
         this._component.addEventListener(BoosterpackAnimationLayer.START_PACK_SPARKLE,this.handleStartPackSparkelAnimation);
         this._component.addEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_REWARD_ITEM,this.handleStartRewardItemSparkelAnimation);
         this._component.addEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_FACTOR,this.handleStartBonusFactorAnimation);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":7,
            "pt":_loc3_,
            "type":param1.callerType
         },NAME);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function prepareProxies() : void
      {
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
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
      
      private function handleStartPackSparkelAnimation(param1:Event) : void
      {
         this.nextAnimationStep();
      }
      
      private function handleStartBonusFactorAnimation(param1:Event) : void
      {
         var _loc2_:BoosterpackRewardItemRenderer = param1.target as BoosterpackRewardItemRenderer;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:BoosterpackBonusLabel = new BoosterpackBonusLabel();
         _loc3_.bonusFactor = _loc2_.bonusFactor;
         var _loc4_:Number = _loc3_.getPosXByIndex(_loc2_.rewardOrderId);
         var _loc5_:Number = _loc3_.getPosYByIndex(_loc2_.rewardOrderId);
         this._component.bonusfactorContainer.addChild(_loc3_);
         TweenMax.fromTo(_loc3_,0.8,{
            "scaleX":8,
            "scaleY":8,
            "x":400,
            "y":200
         },{
            "scaleX":1,
            "scaleY":1,
            "x":_loc4_,
            "y":_loc5_,
            "ease":Back.easeOut
         });
      }
      
      private function stopBonusFactorAnimation() : void
      {
         TweenMax.killChildTweensOf(this._component.bonusfactorContainer,false);
         while(this._component.bonusfactorContainer.numChildren > 0)
         {
            this._component.bonusfactorContainer.removeChildAt(0);
         }
      }
      
      private function handleStartRewardItemSparkelAnimation(param1:Event) : void
      {
         var _loc2_:BoosterpackRewardItemRenderer = param1.target as BoosterpackRewardItemRenderer;
         if(_loc2_ == null || this._imageLoaderParticleStar == null)
         {
            return;
         }
         if(this._rewardItemEmiters == null)
         {
            this._rewardItemEmiters = new Dictionary();
         }
         if(this._rewardItemEmiters[_loc2_.rewardOrderId] != null)
         {
            return;
         }
         var _loc3_:ParticleEmitterDecorator = this.getStandardRewardEmiter(this._imageLoaderParticleStar.bitmapClip.currentFrameBitmap.bitmapData);
         var _loc4_:Sprite = new Sprite();
         this._component.rewardParticleContainer.addChild(_loc4_);
         _loc4_.x = 60 + _loc2_.rewardOrderId % 4 * 120;
         _loc4_.y = 160 + int(_loc2_.rewardOrderId / 4) * 160;
         _loc3_.container = _loc4_;
         this._rewardItemEmiters[_loc2_.rewardOrderId] = _loc3_;
         var _loc5_:uint = setInterval(this.stopRewardItemSparkel,300,_loc2_.rewardOrderId);
         if(this._rewardItemEmiterIntervals == null)
         {
            this._rewardItemEmiterIntervals = new Dictionary();
         }
         this._rewardItemEmiterIntervals[_loc2_.rewardOrderId] = _loc5_;
         sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,_loc3_);
      }
      
      private function stopRewardItemSparkel() : void
      {
         var _loc2_:uint = uint(arguments[0]);
         clearInterval(this._rewardItemEmiterIntervals[_loc2_]);
         sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._rewardItemEmiters[_loc2_]);
      }
      
      private function stopAllRewardItemSparkel() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:ParticleEmitterDecorator = null;
         for each(_loc1_ in this._rewardItemEmiterIntervals)
         {
            clearInterval(_loc1_);
         }
         for each(_loc2_ in this._rewardItemEmiters)
         {
            sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,_loc2_);
         }
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new BoosterpackAnimationLayer();
         }
         this._component.data = this._data;
         this.container.contentGroup.addElement(this._component);
         if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
         {
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
         }
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine],this));
         this.firstAnimationStep();
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
      
      override public function getMediatorName() : String
      {
         return BoosterpackAnimationMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
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
            case this.ANIMATION_BOOSTERPACK:
               this._soundProxy.playBoosterUnwrap();
               sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT);
               this._boosterAnimationDelay = TweenLite.delayedCall(0.8,this.showBoosterpackAnimation);
               break;
            case this.ANIMATION_PARTICLE_START:
               this._soundProxy.playBoosterSparkle();
               this._component.removeEventListener(BoosterpackAnimationLayer.START_PACK_SPARKLE,this.handleStartPackSparkelAnimation);
               this.stopBoosterpackAnimation();
               this.loadStarGraphic();
               break;
            case this.ANIMATION_PARTICLE_END:
               clearInterval(this._emiterIntervalId);
               this.clearParticles();
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
                  "content":this._data.boosterpackVo.slotId
               });
         }
      }
      
      private function resetAnimationParams() : void
      {
         sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._particleEmiter);
         this._component.removeEventListener(BoosterpackAnimationLayer.START_PACK_SPARKLE,this.handleStartPackSparkelAnimation);
         this._component.removeEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_REWARD_ITEM,this.handleStartRewardItemSparkelAnimation);
         this._component.removeEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_FACTOR,this.handleStartBonusFactorAnimation);
         clearInterval(this._emiterIntervalId);
         clearInterval(this._itemIntervalId);
         clearInterval(this._removeEmiterIntervalId);
         clearInterval(this._finishIntervalId);
         this._boosterAnimationDelay.kill();
         this.stopAllRewardItemSparkel();
         this.stopBoosterpackAnimation();
         this.stopBonusFactorAnimation();
      }
      
      private function stopBoosterpackAnimation() : void
      {
         this._component.stopBoosterPackAnim();
      }
      
      private function showBoosterpackAnimation() : void
      {
         this._boosterAnimationDelay.kill();
         this._component.startBoosterPackAnim();
      }
      
      private function loadStarGraphic() : void
      {
         this._imageLoaderParticleStar = new BriskMCDynaLib();
         this._imageLoaderParticleStar.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initStarParticles);
         this._imageLoaderParticleStar.createBitmapClip = true;
         this._imageLoaderParticleStar.bitmapClipFramerate = 12;
         this._imageLoaderParticleStar.dynaLibName = "gui_popups_boosterpackBook";
         this._imageLoaderParticleStar.dynaMCSourceName = "particle_one";
         this._component.particleContainer.x = this._component.boosterpackImage.x + this._component.boosterpackImage.width / 2;
         this._component.particleContainer.y = this._component.boosterpackImage.y + this._component.boosterpackImage.height / 2;
         this._component.particleContainer.addChild(this._imageLoaderParticleStar);
      }
      
      private function initStarParticles(param1:BriskMCDynaLibEvent) : void
      {
         if(Boolean(this._imageLoaderParticleStar.bitmapClip) && Boolean(this._imageLoaderParticleStar.bitmapClip.currentFrameBitmap))
         {
            this._particleEmiter = this.getStandardBoosterEmiter(this._imageLoaderParticleStar.bitmapClip.currentFrameBitmap.bitmapData);
            this._particleEmiter.container = this._component.particleContainer;
            clearInterval(this._emiterIntervalId);
            this._emiterIntervalId = setInterval(this.nextAnimationStep,1000);
            sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,this._particleEmiter);
         }
      }
      
      private function getStandardBoosterEmiter(param1:BitmapData, param2:Number = 0, param3:Number = 0) : ParticleEmitterDecorator
      {
         var _loc4_:ParticleStartVelocity = null;
         var _loc5_:ParticleEmitterDecorator = new ParticleEmitterDecorator();
         _loc5_.bitmapData = param1.clone();
         _loc5_.lifeTime = 2000;
         _loc5_.newParticlesPerSecond = 30;
         _loc5_.blendMode = BlendMode.NORMAL;
         _loc5_.addUpdater(new ParticleUseVelocity());
         _loc5_.addUpdater(new ParticleAcceleration(40,200));
         _loc4_ = new ParticleStartVelocity(350,310,360,0);
         _loc4_.offsetX = param2;
         _loc4_.offsetY = param3;
         _loc5_.addInitializer(_loc4_);
         _loc5_.addInitializer(new ParticleScale(0.6,1));
         _loc5_.addUpdater(new ParticleAlphaFade(1600,2000));
         return _loc5_;
      }
      
      private function getStandardRewardEmiter(param1:BitmapData, param2:Number = 0, param3:Number = 0) : ParticleEmitterDecorator
      {
         var _loc4_:ParticleStartVelocity = null;
         var _loc5_:ParticleEmitterDecorator = new ParticleEmitterDecorator();
         _loc5_.bitmapData = param1.clone();
         _loc5_.lifeTime = 400;
         _loc5_.newParticlesPerSecond = 60;
         _loc5_.blendMode = BlendMode.NORMAL;
         _loc5_.addUpdater(new ParticleUseVelocity());
         _loc4_ = new ParticleStartVelocity(350,0,360,0);
         _loc4_.offsetX = param2;
         _loc4_.offsetY = param3;
         _loc5_.addInitializer(_loc4_);
         return _loc5_;
      }
      
      private function clearParticles() : void
      {
         this._removeEmiterIntervalId = setInterval(this.removeEmiterParticles,1000);
         this.nextAnimationStep();
      }
      
      private function removeEmiterParticles() : void
      {
         clearInterval(this._removeEmiterIntervalId);
         sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._particleEmiter);
      }
      
      private function startItemAnimation() : void
      {
         clearInterval(this._itemIntervalId);
         this._rewardItemIndex = 0;
         this._itemIntervalId = setInterval(this.fillItemToList,1000);
         this.fillItemToList();
      }
      
      private function fillItemToList() : void
      {
         var _loc1_:RewardItemComponentVo = null;
         if(this._rewardItemIndex >= this._data.rewards.length)
         {
            clearInterval(this._itemIntervalId);
            this._finishIntervalId = setInterval(this.finishAnimationStep,3000);
         }
         else
         {
            _loc1_ = this._data.rewards[this._rewardItemIndex];
            this._component.addRewardData(_loc1_);
            ++this._rewardItemIndex;
         }
      }
   }
}

