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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   
   use namespace mx_internal;
   
   public class FriendLevelStarComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1656559075levelIcon:BriskImageDynaLib;
      
      private var _188974544levelLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FriendLevelStarComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._FriendLevelStarComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_friendBook_ui_components_FriendLevelStarComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FriendLevelStarComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._FriendLevelStarComponent_BriskImageDynaLib1_i(),this._FriendLevelStarComponent_LocaLabel1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         FriendLevelStarComponent._watcherSetupUtil = param1;
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
      
      private function _FriendLevelStarComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.measuredHeight = 0;
         _loc1_.measuredMinWidth = 0;
         _loc1_.top = -6;
         _loc1_.left = -6;
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "friend_level_star";
         _loc1_.id = "levelIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelIcon = _loc1_;
         BindingManager.executeBindings(this,"levelIcon",this.levelIcon);
         return _loc1_;
      }
      
      private function _FriendLevelStarComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.top = 9;
         _loc1_.left = 4;
         _loc1_.styleName = "levelLabelFormat";
         _loc1_.width = 20;
         _loc1_.height = 14;
         _loc1_.text = "95";
         _loc1_.id = "levelLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelLabel = _loc1_;
         BindingManager.executeBindings(this,"levelLabel",this.levelLabel);
         return _loc1_;
      }
      
      private function _FriendLevelStarComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Array
         {
            var _loc1_:* = [FilterUtils.createOutlineFilter(3355443,1.2,false,0.6)];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"levelLabel.filters");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelIcon() : BriskImageDynaLib
      {
         return this._1656559075levelIcon;
      }
      
      public function set levelIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1656559075levelIcon;
         if(_loc2_ !== param1)
         {
            this._1656559075levelIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel() : LocaLabel
      {
         return this._188974544levelLabel;
      }
      
      public function set levelLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._188974544levelLabel;
         if(_loc2_ !== param1)
         {
            this._188974544levelLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel",_loc2_,param1));
            }
         }
      }
   }
}

