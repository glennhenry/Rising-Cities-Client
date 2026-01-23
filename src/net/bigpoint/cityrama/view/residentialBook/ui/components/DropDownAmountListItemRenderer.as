package net.bigpoint.cityrama.view.residentialBook.ui.components
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
   import net.bigpoint.cityrama.model.detailViews.vo.DropDownAmountListItemVo;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class DropDownAmountListItemRenderer extends ItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _320749718categoryLabel:LocaLabel;
      
      private var _1671708693labelGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DropDownAmountListItemVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DropDownAmountListItemRenderer()
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
         bindings = this._DropDownAmountListItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_components_DropDownAmountListItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DropDownAmountListItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.percentWidth = 100;
         this.maxHeight = 22;
         this.mxmlContent = [this._DropDownAmountListItemRenderer_HGroup1_c(),this._DropDownAmountListItemRenderer_HGroup2_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         DropDownAmountListItemRenderer._watcherSetupUtil = param1;
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
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            super.data = param1;
            this._data = param1 as DropDownAmountListItemVo;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty && Boolean(this._data))
         {
            this._isDirty = false;
            this.categoryLabel.text = this._data.categoryLabel;
            this.amountLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.categoryAmount);
         }
      }
      
      private function _DropDownAmountListItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = 6;
         _loc1_.right = 6;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._DropDownAmountListItemRenderer_BriskImageDynaLib1_c(),this._DropDownAmountListItemRenderer_BriskImageDynaLib2_c(),this._DropDownAmountListItemRenderer_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "sorting_bar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "sorting_bar_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "sorting_bar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 18;
         _loc1_.paddingLeft = 12;
         _loc1_.paddingRight = 12;
         _loc1_.mxmlContent = [this._DropDownAmountListItemRenderer_LocaLabel1_i(),this._DropDownAmountListItemRenderer_LocaLabel2_i()];
         _loc1_.id = "labelGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelGroup = _loc1_;
         BindingManager.executeBindings(this,"labelGroup",this.labelGroup);
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         _loc1_.styleName = "elevenWhiteLeft";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "categoryLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.categoryLabel = _loc1_;
         BindingManager.executeBindings(this,"categoryLabel",this.categoryLabel);
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "elevenWhiteRight";
         _loc1_.text = "0";
         _loc1_.id = "amountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.amountLabel = _loc1_;
         BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
         return _loc1_;
      }
      
      private function _DropDownAmountListItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Array
         {
            var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"categoryLabel.filters");
         result[1] = new Binding(this,function():Array
         {
            var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"amountLabel.filters");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1229015684amountLabel;
         if(_loc2_ !== param1)
         {
            this._1229015684amountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryLabel() : LocaLabel
      {
         return this._320749718categoryLabel;
      }
      
      public function set categoryLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._320749718categoryLabel;
         if(_loc2_ !== param1)
         {
            this._320749718categoryLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelGroup() : HGroup
      {
         return this._1671708693labelGroup;
      }
      
      public function set labelGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1671708693labelGroup;
         if(_loc2_ !== param1)
         {
            this._1671708693labelGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelGroup",_loc2_,param1));
            }
         }
      }
   }
}

