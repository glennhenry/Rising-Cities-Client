package net.bigpoint.cityrama.view.departmentBook.ui.components
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
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class SecurityGradeComponent extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1835614690rangeImage:BriskImageDynaLib;
      
      private var _1833200713rangeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SecurityStatusVo;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SecurityGradeComponent()
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
         bindings = this._SecurityGradeComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_departmentBook_ui_components_SecurityGradeComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SecurityGradeComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalAlign = "center";
         this.width = 90;
         this.gap = 3;
         this.verticalAlign = "middle";
         this.mxmlContent = [this._SecurityGradeComponent_BriskImageDynaLib1_i(),this._SecurityGradeComponent_LocaLabel1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SecurityGradeComponent._watcherSetupUtil = param1;
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
      
      public function set data(param1:SecurityStatusVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
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
            switch(this._data.level)
            {
               case SecurityStatusVo.LEVEL_1:
                  this.rangeImage.dynaBmpSourceName = getStyle("imageRangeThree");
                  break;
               case SecurityStatusVo.LEVEL_2:
                  this.rangeImage.dynaBmpSourceName = getStyle("imageRangeTwo");
                  break;
               case SecurityStatusVo.LEVEL_3:
                  this.rangeImage.dynaBmpSourceName = getStyle("imageRangeOne");
            }
            this.rangeLabel.text = this._data.x + " x " + this._data.y;
         }
      }
      
      private function _SecurityGradeComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "rangeImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rangeImage = _loc1_;
         BindingManager.executeBindings(this,"rangeImage",this.rangeImage);
         return _loc1_;
      }
      
      private function _SecurityGradeComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.id = "rangeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rangeLabel = _loc1_;
         BindingManager.executeBindings(this,"rangeLabel",this.rangeLabel);
         return _loc1_;
      }
      
      private function _SecurityGradeComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("imageRangeLib");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"rangeImage.dynaLibName");
         result[1] = new Binding(this,function():Object
         {
            return getStyle("rangeLabelStyleName");
         },null,"rangeLabel.styleName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get rangeImage() : BriskImageDynaLib
      {
         return this._1835614690rangeImage;
      }
      
      public function set rangeImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1835614690rangeImage;
         if(_loc2_ !== param1)
         {
            this._1835614690rangeImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rangeImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rangeLabel() : LocaLabel
      {
         return this._1833200713rangeLabel;
      }
      
      public function set rangeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1833200713rangeLabel;
         if(_loc2_ !== param1)
         {
            this._1833200713rangeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rangeLabel",_loc2_,param1));
            }
         }
      }
   }
}

