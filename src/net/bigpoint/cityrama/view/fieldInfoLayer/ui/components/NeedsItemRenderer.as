package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.SeparatorItemRenderer;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class NeedsItemRenderer extends SeparatorItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _NeedsItemRenderer_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _607253902frameBG:BriskImageDynaLib;
      
      private var _1484033980goodContainer:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _717437366sellAmount:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ResidentialNeedVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NeedsItemRenderer()
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
         bindings = this._NeedsItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_NeedsItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NeedsItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.mxmlContent = [this._NeedsItemRenderer_HGroup1_c()];
         this.addEventListener("creationComplete",this.___NeedsItemRenderer_SeparatorItemRenderer1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         NeedsItemRenderer._watcherSetupUtil = param1;
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         invalidateProperties();
      }
      
      override public function set data(param1:Object) : void
      {
         this._data = param1 as ResidentialNeedVo;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._data)
         {
            this.image.dynaBmpSourceName = this._data.assetImageName;
            this.image.dynaLibName = this._data.assetLibName;
            this.itemAmount.text = this._data.stockAmount + " / " + this._data.maxAmount;
            this.sellAmount.text = Math.abs(this._data.requiredAmount) + "x";
            if(this._data.stockAmount > 0)
            {
               this.checkMark.dynaBmpSourceName = "checkmark_green_small";
               this.frameBG.dynaBmpSourceName = "needframe_bg_green";
               this.image.alpha = 1;
               this.itemAmount.setStyle("color",7303023);
            }
            else
            {
               this.checkMark.dynaBmpSourceName = "checkmark_grey_small";
               this.frameBG.dynaBmpSourceName = "needframe_bg_grey";
               this.image.alpha = 0.5;
               this.itemAmount.setStyle("color",7303023);
            }
         }
      }
      
      private function _NeedsItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 83;
         _loc1_.mxmlContent = [this._NeedsItemRenderer_VGroup1_c(),this._NeedsItemRenderer_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.maxHeight = 83;
         _loc1_.gap = 5;
         _loc1_.mxmlContent = [this._NeedsItemRenderer_LocaLabel1_i(),this._NeedsItemRenderer_Group1_i(),this._NeedsItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "sellAmountLabel";
         _loc1_.id = "sellAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sellAmount = _loc1_;
         BindingManager.executeBindings(this,"sellAmount",this.sellAmount);
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.width = 60;
         _loc1_.height = 52;
         _loc1_.mxmlContent = [this._NeedsItemRenderer_BriskImageDynaLib1_i(),this._NeedsItemRenderer_BriskImageDynaLib2_i(),this._NeedsItemRenderer_BriskImageDynaLib3_i()];
         _loc1_.id = "goodContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodContainer = _loc1_;
         BindingManager.executeBindings(this,"goodContainer",this.goodContainer);
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "needframe_bg_grey";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "frameBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.frameBG = _loc1_;
         BindingManager.executeBindings(this,"frameBG",this.frameBG);
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxWidth = 60;
         _loc1_.maxHeight = 52;
         _loc1_.smoothing = true;
         _loc1_.maintainAspectRation = true;
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "checkmark_grey_small";
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.id = "checkMark";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkMark = _loc1_;
         BindingManager.executeBindings(this,"checkMark",this.checkMark);
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceLabel";
         _loc1_.id = "itemAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemAmount = _loc1_;
         BindingManager.executeBindings(this,"itemAmount",this.itemAmount);
         return _loc1_;
      }
      
      private function _NeedsItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "good_divider";
         _loc1_.width = 5;
         _loc1_.height = 83;
         _loc1_.id = "_NeedsItemRenderer_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._NeedsItemRenderer_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_NeedsItemRenderer_BriskImageDynaLib4",this._NeedsItemRenderer_BriskImageDynaLib4);
         return _loc1_;
      }
      
      public function ___NeedsItemRenderer_SeparatorItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _NeedsItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return this.showSeparator;
         },null,"_NeedsItemRenderer_BriskImageDynaLib4.visible");
         result[1] = new Binding(this,function():Boolean
         {
            return this.showSeparator;
         },null,"_NeedsItemRenderer_BriskImageDynaLib4.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._398367733checkMark;
         if(_loc2_ !== param1)
         {
            this._398367733checkMark = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get frameBG() : BriskImageDynaLib
      {
         return this._607253902frameBG;
      }
      
      public function set frameBG(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._607253902frameBG;
         if(_loc2_ !== param1)
         {
            this._607253902frameBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frameBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodContainer() : Group
      {
         return this._1484033980goodContainer;
      }
      
      public function set goodContainer(param1:Group) : void
      {
         var _loc2_:Object = this._1484033980goodContainer;
         if(_loc2_ !== param1)
         {
            this._1484033980goodContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmount() : LocaLabel
      {
         return this._1478417739itemAmount;
      }
      
      public function set itemAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1478417739itemAmount;
         if(_loc2_ !== param1)
         {
            this._1478417739itemAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sellAmount() : LocaLabel
      {
         return this._717437366sellAmount;
      }
      
      public function set sellAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._717437366sellAmount;
         if(_loc2_ !== param1)
         {
            this._717437366sellAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellAmount",_loc2_,param1));
            }
         }
      }
   }
}

