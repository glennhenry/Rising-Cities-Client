package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import spark.components.Group;
   import spark.components.supportClasses.ItemRenderer;
   
   public class BoosterpackRewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static const PUSH_EMITTER_FOR_REWARD_ITEM:String = "PUSH_EMITTER_FOR_REWARD_ITEM";
      
      public static const PUSH_EMITTER_FOR_FACTOR:String = "PUSH_EMITTER_FOR_FACTOR";
      
      private var _3059471comp:RewardItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:RewardItemComponentVo;
      
      public function BoosterpackRewardItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._BoosterpackRewardItemRenderer_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___BoosterpackRewardItemRenderer_ItemRenderer1_creationComplete);
         this.addEventListener("rollOver",this.___BoosterpackRewardItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___BoosterpackRewardItemRenderer_ItemRenderer1_rollOut);
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
         this._compdata = param1 as RewardItemComponentVo;
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
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         if(this._compdata != null && this._compdata.showCreationAnimation)
         {
            dispatchEvent(new Event(PUSH_EMITTER_FOR_REWARD_ITEM,true));
            TweenMax.from(this.comp,0.8,{
               "delay":0.1,
               "scaleX":0.2,
               "scaleY":0.2,
               "ease":Bounce.easeOut,
               "onComplete":this.handleCompleteAnim
            });
         }
      }
      
      private function handleCompleteAnim() : void
      {
         if(this._compdata)
         {
            if(this._compdata.showCreationAnimation && this._compdata.bonusFactor > 1)
            {
               dispatchEvent(new Event(PUSH_EMITTER_FOR_FACTOR,true));
            }
         }
      }
      
      public function get rewardOrderId() : uint
      {
         return this._compdata.orderId;
      }
      
      public function get bonusFactor() : uint
      {
         return this._compdata.bonusFactor;
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this._compdata.type,this._compdata.configId));
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
      }
      
      private function _BoosterpackRewardItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 112;
         _loc1_.height = 160;
         _loc1_.mxmlContent = [this._BoosterpackRewardItemRenderer_RewardItemComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackRewardItemRenderer_RewardItemComponent1_i() : RewardItemComponent
      {
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "comp";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.comp = _loc1_;
         BindingManager.executeBindings(this,"comp",this.comp);
         return _loc1_;
      }
      
      public function ___BoosterpackRewardItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      public function ___BoosterpackRewardItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.rollOverHandler(param1);
      }
      
      public function ___BoosterpackRewardItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.rollOutHandler(param1);
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

