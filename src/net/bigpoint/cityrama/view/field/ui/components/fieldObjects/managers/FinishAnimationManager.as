package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.event.ManagerEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFinishAnimationManager;
   
   public class FinishAnimationManager implements IFinishAnimationManager
   {
      
      protected var _mysteryBuildingObjectVo:MysteryBuildingObjectVo;
      
      private var _billboardContainer:SmartObjectContainer;
      
      private var _animContainer:Sprite;
      
      protected var _animationAsset:*;
      
      protected var _currentSource:MovieClip;
      
      protected var _animSource:Sprite;
      
      private var _isDirty:Boolean;
      
      protected var _dimensionRect:Rectangle;
      
      public function FinishAnimationManager()
      {
         super();
      }
      
      public function prepareFinishAnimationManager(param1:MysteryBuildingObjectVo, param2:SmartObjectContainer, param3:Sprite, param4:DisplayObject) : void
      {
         this._mysteryBuildingObjectVo = param1;
         this._billboardContainer = param2;
         this._animContainer = param3;
         this._animationAsset = param4;
         this.invalidateFinishAnimationManager();
      }
      
      public function invalidateFinishAnimationManager() : void
      {
         this.nullcheck("FinishAnimationManager, prepare before invalidate!");
         this.isDirty();
         if(this._isDirty)
         {
            this.redraw();
         }
      }
      
      protected function handlePreloadComplete(param1:*) : void
      {
         (this._animationAsset as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
         this.invalidateFinishAnimationManager();
      }
      
      protected function isDirty() : void
      {
         var _loc1_:String = null;
         if(this._animationAsset is PreloadableDisplayObject && !(this._animationAsset as PreloadableDisplayObject).loadComplete)
         {
            (this._animationAsset as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            return;
         }
         if(this._mysteryBuildingObjectVo.unwrapProgressIsRunning)
         {
            _loc1_ = "animation_" + this._mysteryBuildingObjectVo.mysteryResultFieldItemSize + "_" + this._mysteryBuildingObjectVo.mysteryResultFieldItemSize;
            (this._animationAsset.presentation as MovieClip).gotoAndStop(_loc1_);
            this._currentSource = this._animationAsset.presentation.getChildByName("anim");
            this._isDirty = true;
         }
      }
      
      private function redraw() : void
      {
         while(this._animContainer.numChildren > 0)
         {
            this._animContainer.removeChildAt(0);
         }
         var _loc1_:BitmapClip = this.addAnimation(new BitmapClip(this._currentSource,"finishAniamtion" + this._mysteryBuildingObjectVo.mysteryResultFieldItemSize,12));
         this._animContainer.addChild(this._animSource);
         _loc1_.play();
         if(this._billboardContainer is SmartObjectContainer)
         {
            (this._billboardContainer as SmartObjectContainer).invalidate();
         }
         this._isDirty = false;
      }
      
      protected function addAnimation(param1:BitmapClip) : BitmapClip
      {
         this._animSource = new Sprite();
         this._animSource.addChild(param1);
         param1.removeAfterPlay = true;
         param1.addEventListener(Event.REMOVED,this.onFinishAnimation);
         return param1;
      }
      
      private function nullcheck(param1:String) : void
      {
         if(this._mysteryBuildingObjectVo == null || this._billboardContainer == null)
         {
            throw new RamaCityError(param1);
         }
      }
      
      private function onFinishAnimation(param1:Event) : void
      {
         this._billboardContainer.dispatchEvent(new ManagerEvent(ManagerEvent.FINISH_ANIMATION,null));
      }
   }
}

