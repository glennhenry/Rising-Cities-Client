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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class PagingItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1300670980_PagingItemRenderer_LocaLabel1:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PagingItemRenderer()
      {
         var watchers:Array;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._PagingItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_PagingItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PagingItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.mxmlContent = [this._PagingItemRenderer_LocaLabel1_i()];
         this.currentState = "normal";
         this.addEventListener("click",this.___PagingItemRenderer_ItemRenderer1_click);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PagingItemRenderer_LocaLabel1",
               "name":"styleName",
               "value":"pagingTextSelected"
            })]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PagingItemRenderer._watcherSetupUtil = param1;
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
      
      private function handleClick() : void
      {
         if(!this.selected)
         {
            dispatchEvent(new Event("rendererClick",true));
         }
      }
      
      private function _PagingItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "pagingTextNormal";
         _loc1_.id = "_PagingItemRenderer_LocaLabel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PagingItemRenderer_LocaLabel1 = _loc1_;
         BindingManager.executeBindings(this,"_PagingItemRenderer_LocaLabel1",this._PagingItemRenderer_LocaLabel1);
         return _loc1_;
      }
      
      public function ___PagingItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.handleClick();
      }
      
      private function _PagingItemRenderer_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"_PagingItemRenderer_LocaLabel1.text","data");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PagingItemRenderer_LocaLabel1() : LocaLabel
      {
         return this._1300670980_PagingItemRenderer_LocaLabel1;
      }
      
      public function set _PagingItemRenderer_LocaLabel1(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1300670980_PagingItemRenderer_LocaLabel1;
         if(_loc2_ !== param1)
         {
            this._1300670980_PagingItemRenderer_LocaLabel1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PagingItemRenderer_LocaLabel1",_loc2_,param1));
            }
         }
      }
   }
}

