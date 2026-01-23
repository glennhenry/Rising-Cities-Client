package net.bigpoint.cityrama.view.friendBook.ui.components
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
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class FriendBookItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _951530617content:GridItemFriendBookComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _friendVo:FriendVo;
      
      private var _dirty:Boolean;
      
      private var _isEmpty:Boolean = true;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FriendBookItemRenderer()
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
         bindings = this._FriendBookItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_friendBook_ui_components_FriendBookItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FriendBookItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.width = 132;
         this.height = 160;
         this.mxmlContent = [this._FriendBookItemRenderer_GridItemFriendBookComponent1_i()];
         this.currentState = "normal";
         this.addEventListener("click",this.___FriendBookItemRenderer_ItemRenderer1_click);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
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
         FriendBookItemRenderer._watcherSetupUtil = param1;
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
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         super.stateChanged(param1,param2,param3);
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 is FriendVo)
         {
            if(param1 != this._friendVo)
            {
               super.data = param1;
               this._friendVo = param1 as FriendVo;
               this._dirty = true;
               this._isEmpty = this._friendVo.isEmpty;
               invalidateProperties();
            }
         }
      }
      
      protected function clickHandler(param1:MouseEvent) : void
      {
         if(this._isEmpty)
         {
            return;
         }
         var _loc2_:ItemClickEvent = new ItemClickEvent(ItemClickEvent.ITEM_CLICK,true);
         _loc2_.item = data;
         _loc2_.index = itemIndex;
         dispatchEvent(_loc2_);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dirty)
         {
            this.content.data = this._friendVo;
         }
      }
      
      private function _FriendBookItemRenderer_GridItemFriendBookComponent1_i() : GridItemFriendBookComponent
      {
         var _loc1_:GridItemFriendBookComponent = new GridItemFriendBookComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      public function ___FriendBookItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.clickHandler(param1);
      }
      
      private function _FriendBookItemRenderer_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"content.itemIndex","itemIndex");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : GridItemFriendBookComponent
      {
         return this._951530617content;
      }
      
      public function set content(param1:GridItemFriendBookComponent) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
   }
}

