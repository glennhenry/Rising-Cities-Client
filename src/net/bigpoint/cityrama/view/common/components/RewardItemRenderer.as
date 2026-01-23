package net.bigpoint.cityrama.view.common.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import spark.components.supportClasses.ItemRenderer;
   
   public class RewardItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3059471comp:RewardItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:RewardItemComponentVo;
      
      public function RewardItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._RewardItemRenderer_RewardItemComponent1_i()];
         this.currentState = "normal";
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
         this._dataDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.comp.data = super.data as RewardItemComponentVo;
         }
      }
      
      private function rollOverHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,data.type,data.configId));
      }
      
      private function rollOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
      }
      
      private function _RewardItemRenderer_RewardItemComponent1_i() : RewardItemComponent
      {
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         _loc1_.addEventListener("rollOver",this.__comp_rollOver);
         _loc1_.addEventListener("rollOut",this.__comp_rollOut);
         _loc1_.id = "comp";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.comp = _loc1_;
         BindingManager.executeBindings(this,"comp",this.comp);
         return _loc1_;
      }
      
      public function __comp_rollOver(param1:MouseEvent) : void
      {
         this.rollOverHandler(param1);
      }
      
      public function __comp_rollOut(param1:MouseEvent) : void
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

