package net.bigpoint.cityrama.view.architectBook.ui.components
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
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class DetailsCenterComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1161660680centerItem:LargeDetailComponent;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CenterItemDataVo;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DetailsCenterComponent()
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
         bindings = this._DetailsCenterComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_components_DetailsCenterComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DetailsCenterComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 270;
         this.mxmlContent = [this._DetailsCenterComponent_HGroup1_c(),this._DetailsCenterComponent_VGroup1_c(),this._DetailsCenterComponent_VGroup2_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         DetailsCenterComponent._watcherSetupUtil = param1;
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
      
      public function set data(param1:CenterItemDataVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this.centerItem.buttonInfos = param1;
            this.centerItem.data = param1.blueprintVO;
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.setToolTip();
         }
      }
      
      private function handleRight() : void
      {
         dispatchEvent(new Event("right",true));
      }
      
      private function handleLeft() : void
      {
         dispatchEvent(new Event("left",true));
      }
      
      private function setToolTip() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         _loc1_ = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.blueprintVO.configObj.localeId);
         if(this._data.blueprintVO.locked)
         {
            _loc2_ = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.overview.locked",[this._data.blueprintVO.unlockLvl]);
            this.centerItem.backgroundPrint.toolTip = _loc1_ + ": " + _loc2_;
         }
         else
         {
            this.centerItem.backgroundPrint.toolTip = _loc1_;
         }
      }
      
      private function _DetailsCenterComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._DetailsCenterComponent_LargeDetailComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_LargeDetailComponent1_i() : LargeDetailComponent
      {
         var _loc1_:LargeDetailComponent = new LargeDetailComponent();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "centerItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerItem = _loc1_;
         BindingManager.executeBindings(this,"centerItem",this.centerItem);
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 41;
         _loc1_.left = -2;
         _loc1_.mxmlContent = [this._DetailsCenterComponent_DynamicImageButton1_i(),this._DetailsCenterComponent_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listLeft";
         _loc1_.addEventListener("click",this.__scrollLeft_click);
         _loc1_.id = "scrollLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollLeft = _loc1_;
         BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
         return _loc1_;
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         this.handleLeft();
      }
      
      private function _DetailsCenterComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.right = -1.5;
         _loc1_.width = 41;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._DetailsCenterComponent_DynamicImageButton2_i(),this._DetailsCenterComponent_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listRight";
         _loc1_.addEventListener("click",this.__scrollRight_click);
         _loc1_.id = "scrollRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollRight = _loc1_;
         BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
         return _loc1_;
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         this.handleRight();
      }
      
      private function _DetailsCenterComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DetailsCenterComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipLeftScroll");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"scrollLeft.toolTip");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipRightScroll");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"scrollRight.toolTip");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get centerItem() : LargeDetailComponent
      {
         return this._1161660680centerItem;
      }
      
      public function set centerItem(param1:LargeDetailComponent) : void
      {
         var _loc2_:Object = this._1161660680centerItem;
         if(_loc2_ !== param1)
         {
            this._1161660680centerItem = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerItem",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._66047092scrollLeft;
         if(_loc2_ !== param1)
         {
            this._66047092scrollLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._2053120847scrollRight;
         if(_loc2_ !== param1)
         {
            this._2053120847scrollRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
            }
         }
      }
   }
}

