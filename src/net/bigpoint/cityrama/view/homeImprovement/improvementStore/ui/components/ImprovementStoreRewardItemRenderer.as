package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Back;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.common.vo.RewardImprovementItemComponentVo;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreAnimationMediator;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.Events.ImprovementStoreItemRendererEvent;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ImprovementStoreRewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3059471comp:RewardItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:RewardImprovementItemComponentVo;
      
      private var _alphaAnim:TweenMax;
      
      private var _scaleAnim:TweenMax;
      
      private var color:uint = 16711935;
      
      public function ImprovementStoreRewardItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._ImprovementStoreRewardItemRenderer_HGroup1_c()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOut);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[]
         })];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this._compdata = param1 as RewardImprovementItemComponentVo;
         this._dataDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.comp.data = this._compdata;
            if(this._compdata.animationDelay >= 0)
            {
               this.spawnItem(this._compdata.animationDelay);
            }
            else if(this._compdata.animationDelay == -1)
            {
               this.init();
            }
         }
         if(this._compdata.animationDelay == -2)
         {
            this.stopAlphaTween();
            this.stopScaleTween();
         }
         if(this._compdata && this._compdata.animationDelay == -3 && this.comp.alpha == 0)
         {
            this.comp.data = this._compdata;
            this.comp.alpha = 1;
            var _temp_3:* = this.comp;
            this.comp.scaleY = 1;
            _temp_3.scaleX = 1;
         }
      }
      
      private function init() : void
      {
         this.comp.alpha = 0;
         var _temp_1:* = this.comp;
         this.comp.scaleY = 0;
         _temp_1.scaleX = 0;
      }
      
      private function spawnItem(param1:Number) : void
      {
         this.init();
         this._alphaAnim = TweenMax.to(this.comp,ImprovementStoreAnimationMediator.spawnDuration,{
            "alpha":1,
            "delay":param1,
            "onComplete":this.stopAlphaTween
         });
         this._scaleAnim = TweenMax.to(this.comp,ImprovementStoreAnimationMediator.spawnDuration,{
            "transformAroundCenter":{"scale":1},
            "delay":param1,
            "onComplete":this.stopScaleTween,
            "onUpdate":this.measure,
            "ease":Back.easeOut
         });
      }
      
      private function stopAlphaTween() : void
      {
         this._compdata.animationDelay = -3;
         this._alphaAnim.kill();
         this.comp.alpha = 1;
      }
      
      private function stopScaleTween() : void
      {
         this._scaleAnim.kill();
         this.comp.scaleX = 1;
         this.comp.scaleY = 1;
         invalidateSize();
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new ImprovementStoreItemRendererEvent(ImprovementStoreItemRendererEvent.ITEM_OVER,true,this._compdata.configID,this.itemIndex));
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new ImprovementStoreItemRendererEvent(ImprovementStoreItemRendererEvent.ITEM_OUT));
      }
      
      override protected function measure() : void
      {
         super.measure();
         if(scaleX > 0 && scaleY > 0)
         {
            measuredWidth = 119 / scaleX;
            measuredHeight = 116 / scaleY;
         }
         else
         {
            measuredWidth = 119;
            measuredHeight = 116;
         }
      }
      
      private function _ImprovementStoreRewardItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 20;
         _loc1_.left = 0;
         _loc1_.width = 119;
         _loc1_.height = 116;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ImprovementStoreRewardItemRenderer_RewardItemComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreRewardItemRenderer_RewardItemComponent1_i() : RewardItemComponent
      {
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         _loc1_.showBottomPaper = false;
         _loc1_.id = "comp";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.comp = _loc1_;
         BindingManager.executeBindings(this,"comp",this.comp);
         return _loc1_;
      }
      
      public function ___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.mouseOverHandler(param1);
      }
      
      public function ___ImprovementStoreRewardItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.mouseOutHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get comp() : RewardItemComponent
      {
         return this._3059471comp;
      }
      
      public function set comp(param1:RewardItemComponent) : void
      {
         var _loc2_:Object = this._3059471comp;
         if(_loc2_ !== param1)
         {
            this._3059471comp = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comp",_loc2_,param1));
            }
         }
      }
   }
}

