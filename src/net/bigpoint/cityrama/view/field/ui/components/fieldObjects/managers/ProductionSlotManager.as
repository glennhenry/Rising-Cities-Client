package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IProductionSlotManager;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import net.bigpoint.util.MathUtils;
   import net.bigpoint.util.RenderHelper;
   
   public class ProductionSlotManager implements IProductionSlotManager
   {
      
      private var _productionObjectVo:ProductionFieldObjectVo;
      
      private var _billboardContainer:SmartObjectContainer;
      
      private var _asset:*;
      
      private var _currentPresentation:DisplayObjectContainer;
      
      private var _dimensionRect:Rectangle;
      
      private var _slot1:DisplayObjectContainer;
      
      private var _slot2:DisplayObjectContainer;
      
      private var _slot3:DisplayObjectContainer;
      
      private var _goodImg:Bitmap;
      
      private var _currentGoodGFXIDStep:String;
      
      private var _isDirty:Boolean;
      
      private var _iconsLoaded:Boolean;
      
      private var _assetLoaded:Boolean;
      
      private var _loaderInstance:FileRuntimeLoadServiceDynamic;
      
      private var _currentStep:uint;
      
      private var _goodClip:BitmapClip;
      
      public function ProductionSlotManager()
      {
         super();
         this._loaderInstance = FileRuntimeLoadServiceDynamic.getInstance();
      }
      
      public function prepareProductionSlotManager(param1:ProductionFieldObjectVo, param2:SmartObjectContainer, param3:*) : void
      {
         this._productionObjectVo = param1;
         this._billboardContainer = param2;
         this._asset = param3;
         this._billboardContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.onAssetChanged);
         this._productionObjectVo.addEventListener(ProductionFieldObjectVo.EVENT_PRODUCTION_TERM_CHANGED,this.onTermChanged);
         this.prepareSlots();
         this.loadIconAssets();
      }
      
      public function invalidateProductionSlotManager() : void
      {
         this.nullcheck("ProductionSlotManager: prepare before invalidation!");
         if(!this._productionObjectVo.useConstructionAsset)
         {
            if(this._slot1 == null && this._slot2 == null && this._slot3 == null)
            {
               this.prepareSlots();
            }
            this.fillSlots();
         }
      }
      
      private function loadIconAssets() : void
      {
         var _loc1_:Array = null;
         if(this._productionObjectVo.currentRunningEventGFXId != 0)
         {
            _loc1_ = ["infield_goods",this._productionObjectVo.currentRunningEventGFXId];
         }
         else
         {
            _loc1_ = ["infield_goods"];
         }
         var _loc2_:String = "preloadDoneNotification_InfieldGoods";
         if(!this._loaderInstance.libAllReadyLoaded("infield_goods"))
         {
            this._loaderInstance.addEventListener(_loc2_,this.iconsLoaded);
            this._loaderInstance.checkSWFArrayLoaded(_loc1_,_loc2_);
         }
         else
         {
            this._loaderInstance.removeEventListener(_loc2_,this.iconsLoaded);
            this._iconsLoaded = true;
            this.fillSlots(true);
         }
      }
      
      private function iconsLoaded(param1:Event) : void
      {
         this._iconsLoaded = true;
         this.loadIconAssets();
      }
      
      private function prepareSlots() : void
      {
         this._isDirty = true;
         if(this._asset != null)
         {
            if(this._asset is PreloadableDisplayObject && !(this._asset as PreloadableDisplayObject).loadComplete)
            {
               (this._asset as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
               return;
            }
            if((this._asset as PreloadableDisplayObject).loadComplete)
            {
               (this._asset.presentation as MovieClip).gotoAndStop(this._productionObjectVo.currentLevel);
               this._currentPresentation = this._asset.presentation.getChildAt(1);
               this._dimensionRect = this._asset.presentation.getChildAt(1).getBounds(this._asset.presentation);
               this._slot1 = this._asset.presentation.getChildAt(1).getChildByName("slot1") as DisplayObjectContainer;
               this._slot2 = this._asset.presentation.getChildAt(1).getChildByName("slot2") as DisplayObjectContainer;
               this._slot3 = this._asset.presentation.getChildAt(1).getChildByName("slot3") as DisplayObjectContainer;
               this._assetLoaded = true;
            }
            this._currentGoodGFXIDStep = "0_0";
         }
      }
      
      private function handlePreloadComplete(param1:Event) : void
      {
         (this._asset as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
         this.invalidateProductionSlotManager();
      }
      
      private function onAssetChanged(param1:Event) : void
      {
         if(!this._productionObjectVo.isInBaseMode)
         {
            if(this._currentPresentation != this._billboardContainer.currentImage)
            {
               this._slot1 = null;
               this._slot2 = null;
               this._slot3 = null;
               this.invalidateProductionSlotManager();
            }
         }
      }
      
      private function onTermChanged(param1:Event) : void
      {
         param1.stopPropagation();
         if(!this._productionObjectVo.isInBaseMode)
         {
            this.invalidateProductionSlotManager();
         }
      }
      
      private function checkVo() : void
      {
         var _loc1_:PhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:String = null;
         var _loc4_:MovieClip = null;
         if(this._iconsLoaded)
         {
            if(!this._productionObjectVo.isIdle)
            {
               this._currentStep = this._productionObjectVo.productionTerm;
               for each(_loc1_ in this._productionObjectVo.activePhases)
               {
                  if(_loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
                  {
                     for each(_loc2_ in _loc1_.config.listEntryOutputs)
                     {
                        if(_loc2_.goodConfig)
                        {
                           if(this._currentGoodGFXIDStep != _loc2_.goodConfig.gfxId + "_" + this._currentStep)
                           {
                              this._isDirty = true;
                              _loc3_ = "infieldgood_" + _loc2_.goodConfig.gfxId + "_" + this._currentStep;
                              if(_loc2_.goodConfig.gfxId >= 61000)
                              {
                                 _loc4_ = this._loaderInstance.getFileAsMovieClip(this._productionObjectVo.currentRunningEventGFXId + "_Infield_Production_Slot_Goods");
                              }
                              else
                              {
                                 _loc4_ = this._loaderInstance.getFileAsMovieClip("infield_goods");
                              }
                              _loc4_.gotoAndStop(_loc3_);
                              if(_loc4_.getChildAt(0) is MovieClip)
                              {
                                 this._goodClip = new BitmapClip(_loc4_.getChildAt(0) as MovieClip,_loc3_,8);
                              }
                              else
                              {
                                 this._goodImg = RenderHelper.getRendered(_loc4_,_loc4_.getChildAt(0).getBounds(_loc4_));
                              }
                              this._currentGoodGFXIDStep = _loc2_.goodConfig.gfxId + "_" + this._currentStep;
                           }
                        }
                     }
                  }
               }
            }
            else if(this._currentGoodGFXIDStep != "0_0")
            {
               this._isDirty = true;
               this._currentGoodGFXIDStep = "0_0";
               this._goodImg = null;
               this._goodClip = null;
            }
         }
      }
      
      private function fillSlots(param1:Boolean = false) : void
      {
         if(param1)
         {
            if(this._productionObjectVo.currentProductionPhase != null)
            {
               this._productionObjectVo.startProductionTime();
            }
         }
         if(this._assetLoaded)
         {
            this.checkVo();
            this.redraw();
         }
      }
      
      private function redraw() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:Vector.<DisplayObjectContainer> = null;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:Sprite = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:Bitmap = null;
         var _loc7_:BitmapClip = null;
         if(this._isDirty)
         {
            while(this._billboardContainer.numChildren > 0)
            {
               this._billboardContainer.removeChildAt(0);
            }
            _loc2_ = new <DisplayObjectContainer>[this._slot1,this._slot2,this._slot3];
            for each(_loc1_ in _loc2_)
            {
               if(_loc1_ != null)
               {
                  _loc1_.getChildAt(0).visible = false;
                  while(_loc1_.numChildren > 1)
                  {
                     _loc1_.removeChildAt(1);
                  }
               }
            }
            if(this._goodClip != null)
            {
               _loc4_ = new Sprite();
               _loc4_.addChild(RenderHelper.getRendered(this._currentPresentation,this._dimensionRect));
               this._billboardContainer.addChild(_loc4_);
            }
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_ != null)
               {
                  if(this._currentGoodGFXIDStep != "0_0")
                  {
                     _loc5_ = _loc3_.getChildAt(0);
                     if(this._goodImg != null)
                     {
                        _loc6_ = new Bitmap(this._goodImg.bitmapData);
                        _loc3_.addChild(_loc6_);
                        _loc6_.x = 0.5 * (_loc5_.width - _loc6_.width);
                        _loc6_.y = _loc5_.height - _loc6_.height;
                        _loc5_.visible = false;
                        _loc3_.visible = true;
                     }
                     else if(this._goodClip != null)
                     {
                        _loc7_ = BitmapClip(this._goodClip.clone());
                        _loc7_.x = _loc5_.parent.x + _loc5_.width / 2 - this._goodClip.width / 2;
                        _loc7_.y = _loc5_.parent.y + _loc5_.height - this._goodClip.height;
                        _loc5_.visible = false;
                        _loc7_.playbackMode = BitmapClip.PLAYBACK_FORWARD;
                        TweenMax.delayedCall(MathUtils.randomInt(1,2),this.playDelayed,[_loc7_]);
                        _loc4_.addChild(_loc7_);
                        _loc3_.visible = false;
                     }
                  }
                  else
                  {
                     _loc3_.visible = false;
                  }
               }
            }
            if(this._goodClip == null)
            {
               this._billboardContainer.addChild(RenderHelper.getRendered(this._currentPresentation,this._dimensionRect));
            }
            this._isDirty = false;
         }
      }
      
      private function stopDelayed(param1:BitmapClip) : void
      {
         param1.stop();
         TweenMax.delayedCall(MathUtils.randomInt(5,10),this.playDelayed,[param1]);
      }
      
      private function playDelayed(param1:BitmapClip) : void
      {
         param1.play();
         TweenMax.delayedCall(MathUtils.randomInt(5,10),this.stopDelayed,[param1]);
      }
      
      private function nullcheck(param1:String) : void
      {
         if(this._billboardContainer == null || this._productionObjectVo == null)
         {
            throw new RamaCityError(param1);
         }
      }
   }
}

