package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlotManager;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class AnimationSlotManager implements IAnimationSlotManager
   {
      
      protected var _billboardObjectVo:BillboardObjectVo;
      
      protected var _billboardContainer:SmartObjectContainer;
      
      protected var _targetContainer:Sprite;
      
      protected var _assetsLoaded:Boolean;
      
      protected var _loaderInstance:FileRuntimeLoadServiceDynamic;
      
      public function AnimationSlotManager()
      {
         super();
         this._loaderInstance = FileRuntimeLoadServiceDynamic.getInstance();
      }
      
      public function prepareAnimationSlotManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:*) : void
      {
         this._billboardObjectVo = param1;
         this._billboardContainer = param2;
         this._targetContainer = param3 as Sprite;
         this._billboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.changeContainerHeight);
         this.loadIconAssets();
      }
      
      private function changeContainerHeight(param1:Event) : void
      {
         this.checkContainerPosition();
      }
      
      protected function loadIconAssets() : void
      {
         var _loc1_:Array = ["gui_production_animation"];
         if(!this._loaderInstance.libAllReadyLoaded("gui_production_animation"))
         {
            this._loaderInstance.addEventListener("preloadDoneNotification_GuiProductionAnimation",this.assetsLoaded);
            this._loaderInstance.checkSWFArrayLoaded(_loc1_,"preloadDoneNotification_GuiProductionAnimation");
         }
         else
         {
            this._loaderInstance.removeEventListener("preloadDoneNotification_GuiProductionAnimation",this.assetsLoaded);
            this._assetsLoaded = true;
         }
      }
      
      protected function checkContainerPosition() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this._billboardObjectVo.isInBaseMode)
         {
            this._targetContainer.x = this._billboardObjectVo.baseIconOffset.x + this._targetContainer.width / 2;
            this._targetContainer.y = this._billboardObjectVo.baseIconOffset.y;
         }
         else if(this._billboardObjectVo.currentBuildAsset == 1)
         {
            this._targetContainer.x = this._billboardObjectVo.placementIconOffset.x + this._targetContainer.width / 2;
            this._targetContainer.y = this._billboardObjectVo.placementIconOffset.y;
         }
         else if(this._billboardObjectVo.currentBuildAsset == 2)
         {
            this._targetContainer.x = this._billboardObjectVo.constructionIconOffset.x + this._targetContainer.width / 2;
            this._targetContainer.y = this._billboardObjectVo.constructionIconOffset.y;
         }
         else
         {
            this._targetContainer.x = this._billboardObjectVo.iconOffset.x + this._targetContainer.width / 2;
            this._targetContainer.y = this._billboardObjectVo.iconOffset.y;
         }
         if(this._targetContainer.x == this._targetContainer.width / 2 && this._targetContainer.y == 0)
         {
            _loc1_ = 36;
            _loc2_ = (this._billboardObjectVo.configPlayfieldItemVo.sizeX > this._billboardObjectVo.configPlayfieldItemVo.sizeY ? this._billboardObjectVo.configPlayfieldItemVo.sizeX : this._billboardObjectVo.configPlayfieldItemVo.sizeY) * _loc1_;
            _loc3_ = -(this._billboardContainer.height - _loc2_);
            this._targetContainer.x = 0;
            this._targetContainer.y = _loc3_ - 60;
         }
         this._targetContainer.y += 10;
      }
      
      protected function assetsLoaded(param1:Event) : void
      {
         this._assetsLoaded = true;
         this.invalidateAnimationSlotManager();
      }
      
      public function invalidateAnimationSlotManager() : void
      {
         var _loc1_:ProductionFieldObjectVo = null;
         if(this._assetsLoaded)
         {
            if(this._billboardObjectVo is ProductionFieldObjectVo)
            {
               _loc1_ = this._billboardObjectVo as ProductionFieldObjectVo;
               if(_loc1_.playProductionAinimation && !_loc1_.playEventAnimation)
               {
                  if(Boolean(_loc1_.produceAbleGoods) && Boolean(_loc1_.produceAbleGoods.length))
                  {
                     if(_loc1_.produceAbleGoods[0].groupType)
                     {
                        switch(_loc1_.produceAbleGoods[0].groupType)
                        {
                           case ServerTagConstants.GOOD_CONSTRUCTION:
                              this.addAnimation(this.animationForConstructionGood);
                              _loc1_.playProductionAinimation = false;
                              return;
                           case ServerTagConstants.GOOD_NORMAL:
                              this.addAnimation(this.animationForNormalGood);
                              _loc1_.playProductionAinimation = false;
                              return;
                        }
                     }
                  }
               }
               else if(_loc1_.playProductionAinimation && _loc1_.playEventAnimation)
               {
                  this.addAnimation(this.animationForEventGood);
                  _loc1_.playProductionAinimation = false;
                  _loc1_.playEventAnimation = false;
                  return;
               }
            }
            if(this._billboardObjectVo is ScheduledDropFieldObjectVo)
            {
               if((this._billboardObjectVo as ScheduledDropFieldObjectVo).playAnimation)
               {
                  this.addAnimation(this.animationForScheduledItem);
                  (this._billboardObjectVo as ScheduledDropFieldObjectVo).playAnimation = false;
                  (this._billboardObjectVo as ScheduledDropFieldObjectVo).isAnimationPlaying = true;
                  return;
               }
            }
            if(this._billboardObjectVo.hasEmergency())
            {
               if(this._billboardObjectVo.emergencyInProgress && this._billboardObjectVo.emergencyState != EmergencyConstants.EMERGENCY_STATUS_STARTED)
               {
                  this.addAnimation(this.animationForEmergencyInProgress);
               }
               else if(!this._billboardObjectVo.emergencyInProgress && this._billboardObjectVo.emergencyState == EmergencyConstants.EMERGENCY_STATUS_STARTED)
               {
                  this.addAnimation(this.animationForEmergencyStarted);
               }
               else if(!this._billboardObjectVo.emergencyInProgress && this._billboardObjectVo.emergencyState == EmergencyConstants.EMERGENCY_STATUS_FAIL)
               {
                  this.addAnimation(this.animationForEmergencyFailed);
               }
               else if(!this._billboardObjectVo.emergencyInProgress && this._billboardObjectVo.emergencyState == EmergencyConstants.EMERGENCY_STATUS_SUCCESS)
               {
                  this.addAnimation(this.animationForEmergencyReward);
               }
            }
            else
            {
               this.removeCurrentAnimation();
            }
         }
      }
      
      private function get animationForEventGood() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("eventProductionAnimation");
         return new BitmapClip(_loc1_,"eventProductionAnimation",12,true);
      }
      
      private function get animationForNormalGood() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("crate_fold_animation");
         return new BitmapClip(_loc1_,"crate_fold_animation",12,true);
      }
      
      private function get animationForConstructionGood() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("construction_animation");
         return new BitmapClip(_loc1_,"construction_animation",12,true);
      }
      
      protected function get animationForEmergencyStarted() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_running_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyStarted",12);
         _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         return _loc2_;
      }
      
      protected function get animationForEmergencyInProgress() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_fighting_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyProgress",12);
         _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         return _loc2_;
      }
      
      protected function get animationForEmergencyReward() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_reward_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyReward",12);
         _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         return _loc2_;
      }
      
      private function get animationForEmergencyFailed() : BitmapClip
      {
         var _loc1_:MovieClip = this._loaderInstance.getFileAsMovieClip("emergency_destroyedBuilding_animation");
         var _loc2_:BitmapClip = new BitmapClip(_loc1_,"emergencyFailed",12);
         _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         return _loc2_;
      }
      
      private function get animationForScheduledItem() : BitmapClip
      {
         var _loc1_:MovieClip = null;
         var _loc2_:BitmapClip = null;
         switch((this._billboardObjectVo as ScheduledDropFieldObjectVo).tagType)
         {
            case ServerTagConstants.CHRISTMAS_TREE:
               _loc1_ = this._loaderInstance.getFileAsMovieClip("christmas_tree_animation");
               _loc2_ = new BitmapClip(_loc1_,"christmasTree",12,true);
               break;
            case ServerTagConstants.CLIENT_OLYMPIC_STADIUM:
               _loc1_ = this._loaderInstance.getFileAsMovieClip("olympic_torch_animation");
               _loc2_ = new BitmapClip(_loc1_,"olympicTorch",12,true);
         }
         if(_loc2_)
         {
            _loc2_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
         }
         return _loc2_;
      }
      
      protected function addAnimation(param1:BitmapClip) : void
      {
         while(this._targetContainer.numChildren)
         {
            this._targetContainer.removeChildAt(0);
         }
         this._targetContainer.addChild(param1);
         this.checkContainerPosition();
         param1.play();
      }
      
      protected function removeCurrentAnimation() : void
      {
         while(this._targetContainer.numChildren)
         {
            this._targetContainer.removeChildAt(0);
         }
      }
   }
}

